.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x347a, %r8
nop
nop
nop
xor $10509, %r14
vmovups (%r8), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1e7a, %r13
nop
nop
nop
xor $52152, %rax
mov (%r13), %r14w
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x141a, %rsi
lea addresses_A_ht+0x1d04a, %rdi
nop
nop
nop
nop
nop
xor $44732, %r14
mov $93, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_A_ht+0x127a, %rax
nop
inc %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rax)
cmp %r8, %r8
lea addresses_normal_ht+0x12aa, %rsi
lea addresses_UC_ht+0x19a7a, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $45, %rcx
rep movsl
nop
nop
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x6dc7, %rax
nop
cmp $20432, %r8
movups (%rax), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x190af, %r13
nop
nop
nop
inc %r14
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
cmp $28110, %r13
lea addresses_A_ht+0x10eba, %r8
clflush (%r8)
sub $26389, %rcx
mov (%r8), %r13w
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1067a, %r8
nop
nop
xor %r13, %r13
movw $0x6162, (%r8)
nop
nop
nop
xor $47116, %r8
lea addresses_UC_ht+0x105fa, %r13
nop
nop
nop
nop
xor %rsi, %rsi
mov (%r13), %r14
nop
add $50205, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x1887a, %r13
nop
cmp %r8, %r8
movw $0x5152, (%r13)
nop
nop
mfence

// Store
lea addresses_WT+0x4b26, %r8
nop
nop
nop
add $28971, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r8)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
lea addresses_normal+0xec7a, %r8
sub %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_WT+0x1567a, %rdx
nop
nop
nop
add $37900, %rbp
movl $0x51525354, (%rdx)
nop
and %r15, %r15

// REPMOV
lea addresses_UC+0x667a, %rsi
lea addresses_D+0x1051a, %rdi
nop
nop
add $39149, %r13
mov $40, %rcx
rep movsl
inc %rcx

// Store
lea addresses_UC+0x157ea, %rdx
nop
nop
add $6641, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdx)
inc %rcx

// Store
lea addresses_normal+0x1f67a, %rsi
sub $15265, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
add $34287, %r15

// REPMOV
lea addresses_UC+0x19a68, %rsi
lea addresses_PSE+0x2ac0, %rdi
inc %r13
mov $45, %rcx
rep movsb
and %r13, %r13

// Store
mov $0x170, %r13
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movntdq %xmm2, (%r13)
nop
dec %r15

// Faulty Load
lea addresses_US+0x1567a, %rbp
nop
and $64860, %r13
mov (%rbp), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 84, '54': 67}
00 54 54 00 00 54 54 00 00 54 54 54 00 00 00 54 54 54 54 54 54 54 54 00 00 00 54 00 00 54 00 00 00 00 00 54 54 00 54 00 00 00 00 00 00 00 00 54 00 54 54 00 54 54 00 54 00 54 00 00 00 00 00 00 54 00 54 00 54 54 00 00 00 54 00 00 54 54 54 00 54 54 00 00 54 00 54 00 54 00 00 00 54 00 00 54 54 00 00 00 54 00 00 54 00 00 00 54 00 00 00 00 00 00 54 00 54 00 54 00 54 54 54 54 54 54 00 54 00 00 54 54 00 54 00 00 00 00 54 00 54 00 54 54 00 54 00 54 54 00 54
*/
