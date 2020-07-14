.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbcf5, %rsi
lea addresses_UC_ht+0x17375, %rdi
nop
nop
nop
nop
cmp $13525, %rbx
mov $39, %rcx
rep movsw
nop
xor $46032, %r9
lea addresses_normal_ht+0x12675, %rax
nop
nop
nop
cmp $61604, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
sub $19704, %r11
lea addresses_WC_ht+0x14115, %r11
nop
nop
nop
nop
nop
and $55233, %rsi
movw $0x6162, (%r11)
nop
nop
nop
nop
xor $56240, %rdi
lea addresses_normal_ht+0xa357, %rsi
nop
add $36378, %rdi
movb (%rsi), %r9b
nop
nop
mfence
lea addresses_UC_ht+0x11275, %rsi
lea addresses_WT_ht+0x1b2d5, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $94, %rcx
rep movsb
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x5a75, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $31553, %rcx
mov (%rbx), %r9
nop
nop
nop
nop
nop
cmp $43502, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rsi

// Load
mov $0xe75, %rbp
nop
nop
nop
sub $18066, %r11
movb (%rbp), %r10b
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_US+0x17e75, %r12
clflush (%r12)
nop
nop
nop
nop
add $36575, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r12)
and %r14, %r14

// Store
mov $0x4a143500000003f5, %r10
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WC+0x1de45, %rbp
nop
dec %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
xor %r10, %r10

// Store
lea addresses_UC+0x4e75, %r10
cmp %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r10)
nop
cmp %r9, %r9

// Load
lea addresses_US+0x16089, %rsi
nop
sub $15765, %r10
mov (%rsi), %r12w
nop
nop
nop
nop
nop
and $39518, %r12

// Store
lea addresses_UC+0xf045, %rbp
nop
nop
nop
nop
nop
add $65490, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
and %rsi, %rsi

// Store
mov $0x8d5, %r12
cmp $58806, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_US+0x17e75, %rbp
nop
nop
add $29930, %r11
mov (%rbp), %r9d
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'58': 290}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
