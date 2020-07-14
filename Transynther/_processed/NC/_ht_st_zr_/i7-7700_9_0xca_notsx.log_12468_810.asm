.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb899, %rdx
clflush (%rdx)
sub %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rdx)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0xe119, %r13
cmp %rcx, %rcx
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
cmp %rcx, %rcx
lea addresses_WT_ht+0x2a19, %r13
xor %r9, %r9
mov (%r13), %ecx
nop
and $1712, %rbx
lea addresses_WC_ht+0x11b19, %rsi
lea addresses_D_ht+0xe2c1, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $20, %rcx
rep movsl
nop
nop
cmp $20578, %r13
lea addresses_UC_ht+0x2e5f, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x687d, %rcx
and $16516, %rsi
movb (%rcx), %dl
and $22240, %rsi
lea addresses_UC_ht+0x1cd55, %rsi
lea addresses_UC_ht+0x6f19, %rdi
nop
nop
nop
add $37232, %rbx
mov $2, %rcx
rep movsq
nop
nop
nop
nop
nop
add $56340, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1a5e1, %rdx
nop
nop
nop
nop
xor $49723, %rdi
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
cmp $7179, %rsi

// Store
lea addresses_normal+0x2919, %r12
nop
nop
nop
sub $60258, %r14
movl $0x51525354, (%r12)
nop
nop
nop
dec %r12

// REPMOV
lea addresses_RW+0xde19, %rsi
lea addresses_PSE+0x6119, %rdi
nop
nop
sub %rbp, %rbp
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_PSE+0x13d19, %r9
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_PSE+0x1c359, %rbp
nop
nop
xor %r9, %r9
movb $0x51, (%rbp)
nop
sub $46960, %r9

// Store
lea addresses_normal+0xa203, %r14
nop
nop
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%r14)
nop
add $57974, %rsi

// Store
lea addresses_normal+0xe6c1, %rdi
nop
xor %rbp, %rbp
movb $0x51, (%rdi)
nop
nop
inc %r12

// Load
lea addresses_RW+0x6d19, %r14
and $17758, %r12
movb (%r14), %dl
nop
add $7706, %rdi

// Store
mov $0x55855e0000000a8b, %rcx
cmp $44885, %rbp
movw $0x5152, (%rcx)
nop
nop
nop
add $54127, %rdx

// Store
lea addresses_A+0x1c80b, %r14
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm0
movups %xmm0, (%r14)
nop
nop
nop
and %rcx, %rcx

// Load
lea addresses_A+0x9d19, %rdi
nop
nop
and %rsi, %rsi
mov (%rdi), %r9
nop
nop
add $19149, %rdx

// Faulty Load
mov $0x7c13c40000000119, %rcx
nop
nop
nop
add %r9, %r9
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 255, '32': 11044, '48': 1169}
32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 48 48 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 48 32 32 32 48 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 00 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 48 32 32 32 32 32 32 32 32 32 32 32 32 48 48 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 00 32 32 32 32 32 32 32 00 00 48 32 32 32 32 32 32 32 32 32 32 48 32 32 48 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 48 32 32 48 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 48 32 32 48 32 32 32 32 32 32 32 00 32 32 00 32 32 32 32 32 32 32 32 32 32 48 00 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 48 00 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 48 32 32 32 32 32 32 32 32 32 00 48 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 48 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 48 48 32 32 32 32 48 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 48 48 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 00 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 00 32 32 32 32 32 32 32 32 32 32 32 32 48 48 32 32 32 48 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 48 32 32 32 32 32 32 32 32 32 00 32 48
*/
