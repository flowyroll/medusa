.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1c81, %rsi
lea addresses_UC_ht+0x3fb3, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $35, %rcx
rep movsb
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1dfb3, %rdx
cmp %r11, %r11
mov (%rdx), %rbp
nop
nop
nop
xor $1879, %rcx
lea addresses_WT_ht+0x179ff, %rsi
lea addresses_D_ht+0x1a9b3, %rdi
nop
nop
sub $64391, %r12
mov $66, %rcx
rep movsb
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Load
lea addresses_WT+0x117b3, %r8
nop
nop
sub %r11, %r11
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
dec %rbx

// Store
lea addresses_WT+0x117b3, %r8
clflush (%r8)
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
sub %r8, %r8

// Faulty Load
lea addresses_WT+0x117b3, %r11
cmp %r8, %r8
mov (%r11), %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'58': 8, 'f0': 40, '00': 1}
f0 58 f0 58 f0 f0 f0 f0 f0 f0 f0 f0 58 58 58 f0 f0 f0 58 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 f0 58 f0 f0 f0 00 f0 f0 f0 f0 f0 58 f0 f0 f0
*/
