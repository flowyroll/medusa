.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x50b0, %rax
nop
cmp %rbx, %rbx
mov (%rax), %rbp
nop
nop
nop
cmp $56578, %rdx
lea addresses_UC_ht+0x1134c, %rsi
lea addresses_D_ht+0x19d5c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $30257, %rax
mov $35, %rcx
rep movsw
and %rbp, %rbp
lea addresses_WC_ht+0x1574c, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
movw $0x6162, (%rbx)
nop
nop
dec %rdi
lea addresses_D_ht+0x1b4c, %rdx
nop
nop
nop
nop
inc %rsi
movb (%rdx), %bl
nop
nop
sub $20897, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_D+0x1360c, %rdi
clflush (%rdi)
nop
nop
dec %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rdi)
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x17f4c, %r14
nop
nop
nop
nop
nop
dec %rsi
movb $0x51, (%r14)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_WC+0x74c, %r14
nop
nop
nop
nop
nop
sub $4972, %r10
mov (%r14), %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
