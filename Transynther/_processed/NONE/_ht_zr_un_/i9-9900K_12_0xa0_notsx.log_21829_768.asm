.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d101, %rsi
lea addresses_D_ht+0x17c89, %rdi
nop
nop
nop
sub $62595, %r15
mov $89, %rcx
rep movsl
add %r11, %r11
lea addresses_normal_ht+0x1dde1, %r8
nop
nop
sub $45175, %rbp
mov (%r8), %cx
sub $46851, %rbp
lea addresses_A_ht+0xc3a1, %r11
nop
add $22146, %rdi
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1ea71, %rsi
lea addresses_WC_ht+0x5fc1, %rdi
nop
nop
nop
nop
xor $46909, %r10
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $12003, %r8
lea addresses_normal_ht+0x7a65, %rsi
nop
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor $38148, %r10
lea addresses_UC_ht+0x10aa1, %rsi
lea addresses_WC_ht+0x57a1, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $16835, %r11
mov $115, %rcx
rep movsq
nop
cmp $64554, %r15
lea addresses_WT_ht+0xe2a3, %r8
nop
nop
nop
nop
dec %r10
mov (%r8), %rdi
nop
nop
nop
nop
xor $34482, %rbp
lea addresses_WT_ht+0x187c9, %rbp
cmp $39507, %r10
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x13c1d, %rcx
nop
nop
nop
nop
nop
and $23870, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
xor $20073, %rcx
lea addresses_A_ht+0x1c7a1, %rsi
lea addresses_WC_ht+0x1dc7b, %rdi
nop
nop
sub $63665, %r10
mov $25, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x145e1, %rsi
lea addresses_A_ht+0x16ba9, %rdi
nop
nop
nop
cmp $60256, %r8
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $58655, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rax

// Load
lea addresses_UC+0x16868, %r9
nop
nop
nop
nop
nop
add %r8, %r8
mov (%r9), %rax
nop
nop
nop
nop
xor $52281, %rax

// Store
lea addresses_A+0x1f3a1, %r9
nop
nop
nop
xor $28442, %r8
movb $0x51, (%r9)
nop
nop
nop
nop
and $21116, %r15

// Store
lea addresses_RW+0x1fa1, %r12
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
inc %r15

// Store
lea addresses_RW+0x18ba1, %r14
clflush (%r14)
nop
sub $11205, %r10
movb $0x51, (%r14)
nop
cmp $18282, %r10

// Store
mov $0xfa1, %rax
nop
nop
nop
nop
inc %r15
movb $0x51, (%rax)
nop
nop
cmp $4711, %r9

// Store
lea addresses_A+0x2135, %r15
dec %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovntdq %ymm3, (%r15)
nop
nop
nop
sub $51840, %r14

// Faulty Load
lea addresses_A+0x1afa1, %r15
nop
and %r12, %r12
movups (%r15), %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 2}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'40': 7, '42': 2, 'ff': 5, '46': 8068, '81': 1, '08': 7, '45': 8, '82': 1, 'bc': 2, '72': 1, 'c8': 1, '00': 13726}
00 00 00 00 46 46 46 46 00 46 00 00 00 00 00 46 00 00 46 00 00 00 00 46 00 00 00 00 00 00 46 46 00 46 46 00 46 46 46 46 00 00 00 46 46 00 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 46 08 46 46 00 46 00 00 00 46 00 00 00 00 00 46 46 00 00 46 00 00 46 00 46 00 00 00 46 46 00 00 00 46 00 00 00 46 46 00 00 00 46 00 46 00 00 46 00 00 00 46 46 00 00 00 46 00 46 00 00 46 00 46 00 46 46 46 00 46 00 00 46 46 00 00 46 46 46 00 46 00 00 00 00 46 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 00 46 00 46 00 00 46 46 46 46 00 00 00 46 46 00 46 00 00 46 00 00 46 00 46 46 46 00 00 46 46 46 46 00 46 00 46 46 46 46 00 46 00 00 00 46 00 00 46 00 00 00 00 46 00 00 46 46 46 46 00 00 46 46 00 46 00 00 00 46 00 46 00 00 00 00 46 46 00 00 46 00 00 46 00 00 00 00 46 46 00 46 46 00 00 46 00 46 00 00 46 46 46 00 00 00 46 46 46 00 00 46 00 00 46 00 00 46 46 00 46 00 00 46 00 00 00 00 46 46 00 46 00 00 00 00 00 46 00 00 46 00 46 00 00 00 46 00 46 00 00 46 46 46 46 46 00 00 46 00 46 46 00 46 46 46 00 46 46 00 46 00 46 46 00 00 46 00 46 46 00 46 00 46 46 46 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 46 46 00 46 00 00 00 46 00 00 46 00 46 46 00 00 46 46 00 00 00 00 00 46 46 46 00 00 00 46 00 00 00 00 00 46 46 00 46 46 00 00 00 00 00 00 00 46 46 46 00 00 46 00 00 00 46 00 46 00 46 00 00 46 00 00 46 00 46 00 00 00 00 46 46 00 46 00 46 00 00 46 00 00 00 46 00 46 00 00 00 46 00 00 00 46 00 46 00 46 46 46 00 46 00 00 00 46 00 00 00 00 00 00 00 46 00 46 46 00 00 00 00 46 46 46 46 00 00 00 46 00 00 00 00 00 46 46 46 46 00 46 00 46 00 00 00 46 00 00 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 46 46 00 46 00 00 46 00 46 46 00 00 00 00 00 00 00 00 00 46 46 00 00 00 00 46 46 00 00 46 46 46 46 00 00 00 46 46 00 00 46 46 00 00 00 46 46 00 46 00 00 46 46 00 00 00 00 46 46 46 00 00 00 00 46 00 00 46 46 00 00 46 00 00 00 46 46 00 00 46 46 00 46 00 00 46 00 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 46 46 00 00 46 46 46 46 00 00 46 46 00 46 00 00 46 46 00 46 00 00 00 00 00 46 00 00 46 00 00 46 46 00 00 46 46 00 00 00 00 46 00 00 00 00 00 00 00 46 00 46 46 00 46 00 00 00 00 00 00 46 00 46 00 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 00 00 00 46 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 46 00 00 46 46 46 00 00 00 46 46 00 00 00 46 00 46 00 00 46 46 00 00 46 00 46 00 46 46 00 00 46 46 00 46 46 46 00 46 00 00 46 00 46 00 00 00 46 46 00 00 46 00 46 46 46 46 00 00 00 00 46 00 46 00 46 46 46 46 00 00 46 46 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 46 46 46 46 46 00 46 46 00 46 00 00 00 00 46 00 00 46 46 46 46 00 00 00 00 00 46 00 00 00 00 00 46 46 46 46 46 46 00 00 00 46 00 00 00 46 46 00 00 46 00 00 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 00 00 46 00 46 46 46 00 46 00 00 46 00 46 00 00 00 00 00 00 00 46 00 46 46 46 46 46 46 00 46 00 00 00 00 00 00 00 46 00 00 46 00 46 00 46 00 00 46 00 00 46 46 00 46 00 00 00 46 00 00 00 00 46 00 46 46
*/
