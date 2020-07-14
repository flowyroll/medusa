.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8330, %rsi
lea addresses_normal_ht+0x1b290, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $36919, %r11
mov $41, %rcx
rep movsb
nop
nop
nop
nop
xor $18684, %rbp
lea addresses_WC_ht+0x7850, %r13
nop
nop
nop
nop
cmp $42277, %rsi
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
nop
nop
nop
sub $23905, %rsi
lea addresses_A_ht+0x11350, %r11
nop
nop
nop
xor $40919, %r14
movb $0x61, (%r11)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x8e7f, %rsi
lea addresses_D_ht+0x3750, %rdi
nop
nop
nop
nop
nop
cmp $51807, %r12
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x4ec0, %rsi
lea addresses_A_ht+0x6c7c, %rdi
nop
nop
nop
nop
xor $22184, %rbp
mov $5, %rcx
rep movsw
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1b50, %r12
nop
nop
inc %rcx
movb (%r12), %r14b
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x16750, %rsi
nop
nop
nop
nop
nop
cmp $53971, %rcx
mov (%rsi), %r14w
nop
cmp $61036, %rsi
lea addresses_normal_ht+0x1c270, %rsi
lea addresses_WC_ht+0xeb50, %rdi
clflush (%rdi)
nop
xor %rbp, %rbp
mov $14, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x46f0, %r13
add $65245, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1df50, %rsi
lea addresses_UC_ht+0x18b50, %rdi
nop
nop
nop
nop
nop
and $63717, %r13
mov $73, %rcx
rep movsw
nop
cmp $36641, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rdx

// Store
lea addresses_A+0x13350, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0x13b50, %r13
cmp $42126, %rdx
movb (%r13), %r11b
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'00': 1}
00
*/
