.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1c83, %rsi
lea addresses_UC_ht+0x133e3, %rdi
and %rdx, %rdx
mov $53, %rcx
rep movsb
nop
nop
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %rax
push %rbp

// Faulty Load
lea addresses_A+0x193af, %r15
nop
nop
nop
nop
sub $47044, %r12
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'cd': 1, 'db': 1, '81': 1}
cd 81 db
*/
