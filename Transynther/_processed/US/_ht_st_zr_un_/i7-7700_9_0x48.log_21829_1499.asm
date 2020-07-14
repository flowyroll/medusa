.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1ed46, %r15
inc %r11
movl $0x61626364, (%r15)
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1c6f6, %rsi
lea addresses_WT_ht+0x6f82, %rdi
lfence
mov $46, %rcx
rep movsb
nop
nop
nop
nop
xor $36877, %r12
lea addresses_WT_ht+0x1cfb6, %rbx
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x19336, %rsi
lea addresses_A_ht+0x15e14, %rdi
sub %r15, %r15
mov $54, %rcx
rep movsw
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0x158a0, %rbx
xor $8778, %r11
vmovups (%rbx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x1898e, %rbp
nop
nop
nop
sub $1497, %rsi
mov (%rbp), %r11w
nop
nop
nop
nop
nop
cmp $64693, %rdi
lea addresses_D_ht+0x2d76, %rsi
lea addresses_UC_ht+0x3bb6, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r11, %r11
mov $13, %rcx
rep movsw
nop
nop
nop
add $26907, %rdi
lea addresses_WT_ht+0x1843e, %rdi
nop
nop
add $47798, %rcx
movl $0x61626364, (%rdi)
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x6d9e, %rsi
lea addresses_UC_ht+0x12436, %rdi
nop
dec %r15
mov $88, %rcx
rep movsb
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x15db6, %rbp
nop
nop
nop
nop
nop
add $14524, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbp)
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x1b9c6, %r15
nop
cmp %rdi, %rdi
and $0xffffffffffffffc0, %r15
vmovntdqa (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
dec %rcx
lea addresses_A_ht+0x73ee, %rsi
nop
nop
nop
nop
sub $54734, %rbp
mov (%rsi), %rcx
nop
add %r12, %r12
lea addresses_D_ht+0x156b6, %r12
inc %r11
mov (%r12), %rbp
nop
xor $59976, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rdi

// Store
lea addresses_UC+0xa6b6, %rdi
nop
nop
nop
nop
and %r15, %r15
movb $0x51, (%rdi)
nop
nop
nop
add $42543, %rdi

// Faulty Load
lea addresses_US+0x1dbb6, %r14
nop
nop
nop
xor %rdi, %rdi
vmovups (%r14), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'53': 255, '3c': 22, 'ff': 12397, '01': 1902, '48': 175, '80': 7, '46': 191, '45': 3969, '00': 2900, '10': 3, 'e0': 2, '50': 6}
ff ff 45 ff 45 ff ff ff ff ff 45 ff 45 45 ff ff ff 01 ff ff 01 ff 45 ff ff 00 ff ff ff ff 01 ff ff ff 01 ff 00 ff ff 01 00 45 45 ff ff ff ff ff 45 ff ff 01 45 ff 45 ff ff 01 ff ff 45 00 ff 45 ff 00 ff 45 45 ff ff 01 ff ff 01 ff ff 01 ff ff ff 01 ff ff 53 ff 01 ff 46 45 ff 01 45 45 ff ff ff ff 00 ff ff ff ff 01 ff 01 ff ff ff ff ff ff ff 46 45 45 ff 01 ff ff ff ff ff 00 00 ff ff ff ff ff ff ff 00 00 ff ff ff 00 ff ff 45 ff 01 45 ff ff 45 ff ff ff 45 00 00 ff 01 ff 00 ff ff 01 ff ff ff ff 45 00 ff 45 ff 01 ff ff 46 ff ff ff ff 45 45 45 ff 01 ff 45 ff ff 01 ff ff ff ff ff ff ff 01 ff ff 01 45 00 ff 00 ff ff ff ff ff ff ff ff 45 00 00 ff 01 ff 00 ff 45 ff 00 ff ff ff 45 ff ff ff 45 ff ff ff 01 ff ff ff ff 01 ff ff 01 00 ff 45 45 45 ff ff ff 45 00 ff ff 46 45 ff 00 ff ff 45 45 00 ff ff ff ff ff ff 01 45 45 45 ff ff 45 ff ff ff 45 ff 00 ff 00 ff ff ff ff 01 45 ff ff 45 ff 01 45 45 ff 00 45 ff ff ff ff 00 ff ff 01 ff 45 ff ff ff 48 45 ff 01 ff ff ff ff ff 01 ff ff ff 45 ff ff 01 ff ff 45 00 ff 00 45 ff 01 45 45 ff ff ff ff 45 ff ff ff 01 ff 45 ff 45 ff ff 00 ff ff ff ff ff 45 ff 00 ff 45 45 ff 00 ff ff ff ff 45 45 ff 53 ff 45 ff ff ff ff ff 01 00 ff 01 ff ff 01 ff ff 01 ff ff ff ff 01 ff ff ff 53 ff 01 ff ff ff 01 ff 01 ff 00 45 ff 46 45 ff 01 ff 45 ff ff ff 00 ff ff ff 01 ff 01 45 ff ff 00 ff ff ff 01 45 ff 45 ff 46 ff ff 45 ff 45 45 ff ff ff 45 00 ff ff 01 ff 00 00 ff ff 01 ff ff 00 45 ff 01 45 ff 00 ff 45 00 45 ff ff 45 ff ff 01 ff 01 45 ff ff ff 01 ff ff 45 45 ff 01 45 45 ff ff 00 45 45 ff 00 00 46 45 ff ff ff 00 45 ff ff 00 45 00 45 ff ff ff ff 00 ff ff ff 01 ff ff 45 45 ff ff 01 45 ff ff 01 ff ff 53 ff ff 45 ff ff ff 45 ff 00 ff ff 45 ff 00 00 ff ff 00 ff ff 01 ff ff 45 00 ff ff 01 ff 01 00 ff 00 ff ff 01 ff 00 ff 45 45 ff 01 45 ff 45 ff ff ff ff 00 ff 45 ff ff ff 00 ff ff 01 ff ff ff 00 ff 01 ff 00 ff 00 ff 01 ff ff 01 ff 45 00 45 ff 45 45 ff 45 ff ff ff ff 00 ff 45 45 ff ff ff 01 45 ff 45 45 ff 00 ff ff ff ff 00 ff ff ff 01 ff 45 ff 00 ff 46 ff ff 45 ff ff 01 53 ff ff 01 ff 45 45 ff 01 ff ff ff ff ff 45 ff ff 00 ff ff ff 45 ff 45 45 00 45 ff ff ff 01 00 45 ff 48 00 ff ff ff 48 ff 45 ff 45 ff 00 ff 00 ff ff ff ff 00 ff ff 00 45 00 ff ff 01 ff 00 ff 01 ff ff 00 ff 45 00 ff 45 00 ff 01 ff 00 45 ff 00 ff 00 ff 00 45 00 ff ff 00 45 ff 00 ff 00 ff ff ff ff ff ff 01 45 45 ff 45 ff ff 45 ff 45 ff 46 ff 00 48 ff ff 45 ff 46 ff ff 45 45 45 ff ff ff ff 01 ff 01 ff ff ff 00 ff 00 ff ff ff ff 00 ff 01 ff ff ff 53 ff 00 ff ff ff ff ff 45 ff ff 01 ff ff 00 ff ff ff ff ff ff 01 ff ff ff 45 ff ff ff ff ff 00 00 ff ff 45 ff 01 ff ff 45 45 ff ff 00 ff 00 45 45 45 ff 45 ff ff 00 ff 45 ff ff 00 ff 01 ff ff ff ff 01 45 ff 45 ff 01 ff 45 00 45 ff ff 00 ff ff ff 45 ff ff ff ff ff ff 01 ff 01 ff ff ff ff 00 45 ff 45 ff ff ff ff 45 ff ff ff ff ff ff 00 ff 45 ff ff 01 00 ff 00 45 ff 45 ff 48 ff ff ff ff ff ff 01 ff ff 00 45 00 46 ff ff 01 ff 48 ff ff 01 ff ff 01 ff ff 01 ff ff 01 ff 00 45 ff 00 ff ff 45 45 ff ff 45 00 45 45 ff ff ff 45 ff ff 53 ff 00 ff ff 00 ff 45 ff ff
*/
