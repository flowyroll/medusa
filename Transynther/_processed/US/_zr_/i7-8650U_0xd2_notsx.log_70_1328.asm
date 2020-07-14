.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xee04, %rsi
lea addresses_D_ht+0x19cac, %rdi
sub %rbx, %rbx
mov $84, %rcx
rep movsw
nop
nop
nop
add $63368, %rdi
lea addresses_WC_ht+0x19f2c, %rdx
nop
nop
add %r11, %r11
movw $0x6162, (%rdx)
nop
nop
nop
add $30934, %rbx
lea addresses_D_ht+0xfa2c, %rbx
nop
nop
nop
nop
nop
cmp $65391, %rcx
movw $0x6162, (%rbx)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x7a2c, %rsi
lea addresses_WC_ht+0x12d94, %rdi
nop
add %r9, %r9
mov $125, %rcx
rep movsw
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x172c, %rsi
lea addresses_WC_ht+0xe92c, %rdi
dec %rdx
mov $74, %rcx
rep movsb
nop
nop
nop
and $40964, %r11
lea addresses_UC_ht+0x1c6ac, %rdx
nop
nop
nop
nop
cmp $5249, %r15
mov (%rdx), %r11w
nop
nop
nop
nop
nop
sub $63182, %rcx
lea addresses_normal_ht+0xb72c, %r15
nop
nop
nop
nop
nop
and %rcx, %rcx
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x8fec, %rsi
lea addresses_D_ht+0x128ac, %rdi
nop
dec %r15
mov $92, %rcx
rep movsq
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x61ac, %r11
nop
cmp $8340, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0xda9c, %rbx
inc %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%rbx)
nop
nop
cmp %r9, %r9

// REPMOV
lea addresses_D+0x516c, %rsi
lea addresses_WC+0x15f2c, %rdi
nop
nop
nop
cmp $56724, %r12
mov $126, %rcx
rep movsb
sub $24688, %rdx

// Faulty Load
lea addresses_US+0x232c, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'00': 70}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
