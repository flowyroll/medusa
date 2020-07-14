.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a976, %rsi
lea addresses_WT_ht+0x11dbe, %rdi
nop
nop
cmp %r13, %r13
mov $68, %rcx
rep movsb
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x16bbe, %rsi
lea addresses_A_ht+0x1a1be, %rdi
xor %r13, %r13
mov $99, %rcx
rep movsw
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1753e, %r8
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
add $45758, %r8
lea addresses_D_ht+0x175be, %rsi
and %rdi, %rdi
movb $0x61, (%rsi)
nop
nop
nop
xor $49087, %rdi
lea addresses_D_ht+0x153be, %rax
nop
and %r15, %r15
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
nop
inc %rsi
lea addresses_A_ht+0x50fe, %rsi
nop
mfence
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rsi)
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rax
push %rdx

// Store
mov $0xbbe, %r11
nop
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
nop
add $28683, %r11

// Store
lea addresses_UC+0x307e, %r14
inc %rax
mov $0x5152535455565758, %r11
movq %r11, (%r14)
inc %rax

// Store
lea addresses_UC+0x1debe, %r14
nop
nop
nop
nop
dec %rdx
movl $0x51525354, (%r14)
nop
nop
nop
cmp $45743, %r15

// Store
lea addresses_A+0xa2be, %r15
nop
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
xor $37262, %r9

// Store
mov $0xfbe, %r13
dec %r11
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
dec %r11

// Faulty Load
lea addresses_US+0x43be, %rdx
nop
nop
nop
nop
xor $20821, %r14
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 3906, '44': 16527, '46': 1396}
00 44 44 44 00 00 00 44 44 00 00 00 44 44 44 44 00 44 00 44 00 44 00 44 00 44 44 00 44 00 00 44 00 44 00 46 44 00 44 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 44 44 44 00 44 44 44 44 00 44 00 44 00 00 00 44 44 00 44 44 44 44 00 00 00 44 44 00 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 00 44 44 00 00 44 44 44 44 00 00 44 44 00 44 00 44 44 44 00 44 00 44 44 00 44 00 44 44 44 44 44 00 44 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 46 44 44 00 00 00 44 44 00 00 44 44 44 44 00 00 00 44 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 00 00 00 44 44 44 44 00 44 00 44 00 44 00 44 44 44 00 44 44 44 00 00 44 00 44 00 44 00 44 44 44 44 44 44 00 00 44 00 46 44 46 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 46 46 44 46 44 44 46 44 44 00 44 00 00 46 00 46 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 00 00 44 44 44 44 44 44 00 46 46 44 44 00 00 00 44 44 00 44 44 44 44 44 46 44 44 44 44 44 00 44 44 44 00 00 44 44 00 00 44 00 44 44 46 46 00 00 00 00 44 44 44 44 46 00 44 44 44 00 44 00 00 44 46 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 46 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 00 44 44 44 00 44 44 44 46 44 44 44 44 44 44 44 44 44 44 44 44 46 46 00 46 44 00 44 44 44 44 44 00 00 44 46 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 46 44 44 44 46 44 44 00 44 44 44 46 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 46 00 44 00 00 44 44 44 00 44 44 00 44 00 46 00 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 46 46 44 44 44 46 44 44 00 44 00 00 44 00 44 44 00 00 00 44 46 44 00 44 44 44 00 00 44 44 00 44 44 00 00 44 44 00 44 44 44 44 44 00 44 00 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 46 00 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 00 44 00 44 44 00 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 44 44 46 00 44 44 44 44 00 44 00 44 00 00 44 00 46 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 00 00 00 44 00 00 44 44 44 44 44 00 00 46 00 46 00 46 00 44 44 44 44 00 44 44 44 44 44 44 44 44 00 46 44 44 00 44 44 44 44 46 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 00 00 44 00 00 00 00 00 00 44 44 00 00 44 44 44 44 44 46 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 00 00 00 00 00 00 00 00 44 44 00 44 44 44 00 44 00 00 00 00 44 44 44 44 44 44 46 44 44 00 46 00 00 00 44 44 44 44 44 00 44 00 44 44 44
*/
