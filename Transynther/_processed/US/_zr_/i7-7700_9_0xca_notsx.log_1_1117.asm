.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11ed9, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $56999, %r11
mov (%r10), %esi
and $38331, %r11
lea addresses_A_ht+0x1e535, %rbp
nop
nop
nop
nop
xor %r9, %r9
mov (%rbp), %rcx
add %rcx, %rcx
lea addresses_UC_ht+0x17cb5, %r11
nop
nop
sub %r13, %r13
movb (%r11), %r9b
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xe425, %r10
nop
nop
nop
nop
cmp $16696, %r13
mov (%r10), %rbp
nop
cmp $26922, %r10
lea addresses_D_ht+0xab35, %r10
inc %rsi
mov (%r10), %r9d
nop
nop
nop
nop
nop
sub $34635, %r13
lea addresses_UC_ht+0x1bb35, %r10
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
nop
nop
nop
and $35279, %rsi
lea addresses_A_ht+0x1d735, %rsi
lea addresses_normal_ht+0x17265, %rdi
nop
nop
nop
nop
nop
sub $43359, %r11
mov $104, %rcx
rep movsl
nop
nop
nop
xor %r10, %r10
lea addresses_normal_ht+0x17735, %rbp
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
and $0xffffffffffffffc0, %rbp
movaps %xmm5, (%rbp)
nop
nop
dec %r10
lea addresses_WT_ht+0xc7f5, %r11
nop
nop
nop
and $20161, %rdi
mov (%r11), %rcx
cmp $57164, %r13
lea addresses_WC_ht+0x6455, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $41411, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
sub $45686, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x13275, %r13
nop
cmp $7134, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_A+0x52b5, %rcx
add $48178, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
add $38199, %rcx

// REPMOV
lea addresses_US+0x19b35, %rsi
lea addresses_PSE+0xab35, %rdi
nop
xor $18230, %r13
mov $27, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_A+0xf535, %rcx
and $60601, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and $65161, %r12

// Store
lea addresses_US+0x19b35, %rdi
dec %rsi
movl $0x51525354, (%rdi)
nop
nop
cmp $2090, %rdi

// Faulty Load
lea addresses_US+0x19b35, %rcx
nop
nop
nop
nop
and $4951, %rax
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 1}
00
*/
