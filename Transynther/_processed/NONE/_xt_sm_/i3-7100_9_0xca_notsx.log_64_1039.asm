.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d2d0, %r12
nop
nop
nop
cmp $24078, %r11
mov (%r12), %r15
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x1c734, %rsi
lea addresses_WC_ht+0x1992, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $31, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_RW+0x8df4, %rax
nop
nop
nop
dec %r13
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
xor $21850, %rax

// Store
lea addresses_WT+0xdcbc, %r8
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r8)
cmp $43921, %r14

// Store
lea addresses_RW+0x8df4, %r8
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_RW+0x8df4, %rax
clflush (%rax)
nop
cmp %rbp, %rbp
mov (%rax), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'58': 64}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
