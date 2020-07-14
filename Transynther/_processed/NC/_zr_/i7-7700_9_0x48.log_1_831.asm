.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x81c4, %r8
nop
nop
add %r13, %r13
mov (%r8), %cx
cmp %rbp, %rbp
lea addresses_WT_ht+0xbdba, %rdx
nop
nop
cmp $59339, %r15
mov (%rdx), %di
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0xe2c4, %rdx
nop
nop
nop
nop
and $9904, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0xfac4, %r15
nop
cmp %rdx, %rdx
vmovups (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rcx
nop
sub $44334, %rdi
lea addresses_WC_ht+0x109c4, %rbp
add $21602, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
add $48723, %rdi
lea addresses_UC_ht+0x3684, %rbp
inc %rcx
mov (%rbp), %r15
nop
nop
xor $354, %rdi
lea addresses_A_ht+0x1b8c5, %rbp
nop
cmp %rcx, %rcx
mov (%rbp), %r15d
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x1144c, %r15
clflush (%r15)
nop
nop
nop
and $20200, %rbp
movb (%r15), %cl
nop
nop
nop
nop
nop
and $54365, %rdi
lea addresses_UC_ht+0x10bc4, %r13
nop
nop
nop
sub %rdi, %rdi
movb (%r13), %r8b
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0xd504, %rsi
lea addresses_WC_ht+0x94d4, %rdi
nop
sub %rbp, %rbp
mov $78, %rcx
rep movsb
nop
nop
nop
and $35286, %rcx
lea addresses_WT_ht+0xb9c4, %r15
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r15)
nop
cmp %r15, %r15
lea addresses_normal_ht+0x13cc4, %rsi
lea addresses_WT_ht+0x8ac4, %rdi
nop
xor %rdx, %rdx
mov $15, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x13504, %rsi
lea addresses_normal+0x1f094, %rdi
nop
sub %r10, %r10
mov $5, %rcx
rep movsq
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0x14ec4, %r10
nop
nop
nop
nop
and $53864, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
xor $37462, %rdi

// Store
mov $0xb80, %rdi
nop
add $39589, %rcx
movl $0x51525354, (%rdi)
sub $34536, %rdx

// Faulty Load
mov $0x64e70000000002c4, %r11
nop
nop
nop
nop
dec %r10
mov (%r11), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'00': 1}
00
*/
