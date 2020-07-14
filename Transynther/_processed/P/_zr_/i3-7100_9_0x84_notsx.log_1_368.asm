.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x3283, %rcx
nop
nop
nop
nop
and $28106, %rdx
mov (%rcx), %r13
nop
nop
nop
dec %r12
lea addresses_D_ht+0x1d9b3, %rbp
nop
xor $54189, %r13
mov (%rbp), %eax
nop
and %rbp, %rbp
lea addresses_A_ht+0xf583, %rbp
nop
nop
nop
nop
nop
cmp %r11, %r11
movl $0x61626364, (%rbp)
sub %r12, %r12
lea addresses_UC_ht+0xd80b, %rax
clflush (%rax)
nop
nop
nop
nop
xor %r11, %r11
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
dec %rax
lea addresses_UC_ht+0x1d1e3, %r11
nop
nop
nop
nop
sub $874, %rax
mov $0x6162636465666768, %r12
movq %r12, (%r11)
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x1d683, %rsi
lea addresses_WC_ht+0x1183, %rdi
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $124, %rcx
rep movsb
add $45808, %r13
lea addresses_D_ht+0x16feb, %rdi
nop
nop
nop
xor %rdx, %rdx
movw $0x6162, (%rdi)
xor %r11, %r11
lea addresses_UC_ht+0xcfe7, %r13
nop
nop
nop
nop
nop
xor $260, %rax
mov (%r13), %r11
nop
nop
nop
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x19303, %rsi
lea addresses_UC+0x8863, %rdi
clflush (%rdi)
nop
nop
nop
dec %rbx
mov $12, %rcx
rep movsl
nop
nop
add $16235, %rcx

// Store
lea addresses_WC+0x12e83, %rbx
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rbx)
nop
cmp %rbx, %rbx

// Faulty Load
mov $0x683, %rcx
xor $62820, %rsi
mov (%rcx), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 1}
00
*/
