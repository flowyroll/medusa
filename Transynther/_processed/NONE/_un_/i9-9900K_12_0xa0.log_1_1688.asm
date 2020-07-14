.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14403, %r15
sub $48366, %r11
mov (%r15), %rax
cmp $55725, %rdi
lea addresses_WC_ht+0x18b4b, %rsi
lea addresses_WT_ht+0xd00b, %rdi
clflush (%rdi)
nop
nop
nop
sub %r8, %r8
mov $82, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $45792, %r11
lea addresses_WC_ht+0x1e4cb, %rsi
lea addresses_D_ht+0x1d9cd, %rdi
clflush (%rsi)
sub %r14, %r14
mov $94, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x119fb, %rsi
lea addresses_A_ht+0x34cb, %rdi
xor $54225, %r11
mov $57, %rcx
rep movsw
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x90cb, %rax
nop
nop
nop
add $62743, %r8
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
nop
cmp $3002, %rdi
lea addresses_WT_ht+0x17a0b, %rsi
lea addresses_UC_ht+0x164cb, %rdi
nop
nop
nop
nop
nop
add $54249, %r8
mov $107, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x87cb, %rsi
nop
nop
nop
cmp %rax, %rax
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x164cb, %rsi
lea addresses_WC_ht+0x4cb, %rdi
clflush (%rdi)
nop
and $53003, %rax
mov $22, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x15c4b, %rsi
nop
nop
nop
sub %rbx, %rbx
movb $0x51, (%rsi)
nop
nop
nop
nop
sub $10216, %rdi

// Store
lea addresses_US+0x11fb1, %rsi
nop
nop
nop
nop
nop
cmp $8270, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
sub $44111, %r12

// Store
lea addresses_normal+0x1c84b, %rbp
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
add %rbx, %rbx

// Load
lea addresses_WT+0x10ccb, %rdi
clflush (%rdi)
nop
nop
xor %r9, %r9
mov (%rdi), %rsi
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_US+0xc243, %rdi
xor %r9, %r9
movw $0x5152, (%rdi)
nop
nop
and $34202, %rsi

// Store
mov $0x17ff180000000d8b, %r12
nop
nop
nop
nop
add $58887, %rbx
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// REPMOV
mov $0xcb, %rsi
lea addresses_WT+0x1f6cb, %rdi
clflush (%rsi)
nop
add %rbp, %rbp
mov $44, %rcx
rep movsw
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_WT+0x10ccb, %rsi
lea addresses_RW+0xd18b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $2251, %r12
mov $110, %rcx
rep movsl
nop
nop
and %rcx, %rcx

// REPMOV
lea addresses_A+0x1e06b, %rsi
lea addresses_WT+0xf46b, %rdi
clflush (%rdi)
add $6447, %r10
mov $30, %rcx
rep movsb
nop
sub $22630, %r9

// REPMOV
lea addresses_A+0x1434b, %rsi
lea addresses_WT+0x10ccb, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r12, %r12
mov $6, %rcx
rep movsw
xor $62550, %rbx

// Store
lea addresses_WC+0x1194b, %rbp
cmp $40842, %rbx
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
xor %rbp, %rbp

// Store
lea addresses_A+0xb1cb, %rbx
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%rbx)
nop
xor $31330, %rbx

// Store
lea addresses_WT+0xc8cb, %r12
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%r12)
nop
nop
nop
xor $8444, %r9

// Load
lea addresses_WT+0x48cb, %rcx
nop
and %r10, %r10
mov (%rcx), %bp
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_WT+0x10ccb, %r10
xor $40611, %rbx
mov (%r10), %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'d9': 1}
d9
*/
