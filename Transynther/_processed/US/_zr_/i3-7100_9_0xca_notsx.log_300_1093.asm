.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdx
lea addresses_A_ht+0x6e83, %r13
nop
nop
and %rcx, %rcx
mov (%r13), %r14
nop
and $49844, %r11
lea addresses_D_ht+0x3563, %rdx
nop
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
add %rdx, %rdx
pop %rdx
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0x333, %rsi
lea addresses_RW+0x5e13, %rdi
nop
nop
nop
nop
nop
xor $48106, %rbx
mov $54, %rcx
rep movsw
nop
nop
nop
nop
xor $57335, %rbx

// Store
lea addresses_UC+0xe313, %r8
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
cmp $39667, %rdi

// Faulty Load
lea addresses_US+0x15313, %rcx
nop
nop
nop
and $59289, %rdx
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'00': 300}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
