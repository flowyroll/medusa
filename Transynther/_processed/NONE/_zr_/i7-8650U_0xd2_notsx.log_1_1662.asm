.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x76f6, %rsi
lea addresses_WT_ht+0x1a0be, %rdi
xor $58296, %r13
mov $114, %rcx
rep movsq
and %rax, %rax
lea addresses_normal_ht+0x8516, %r13
nop
nop
sub $63492, %r15
movb $0x61, (%r13)
add $63112, %rdi
lea addresses_WT_ht+0xe56, %rsi
lea addresses_UC_ht+0x1b8d6, %rdi
nop
add %rax, %rax
mov $10, %rcx
rep movsb
nop
add $33686, %rdi
lea addresses_normal_ht+0xa496, %rsi
lea addresses_UC_ht+0xb316, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $71, %rcx
rep movsw
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x3916, %rsi
lea addresses_normal_ht+0x3316, %rdi
and $50936, %r11
mov $114, %rcx
rep movsw
nop
lfence
lea addresses_A_ht+0xf097, %rsi
lea addresses_normal_ht+0x1b08e, %rdi
nop
nop
add $31960, %rdx
mov $85, %rcx
rep movsw
nop
dec %rdx
lea addresses_normal_ht+0xba6f, %rax
nop
nop
nop
sub $6789, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm0
and $0xffffffffffffffc0, %rax
vmovntdq %ymm0, (%rax)
nop
sub $8167, %rsi
lea addresses_UC_ht+0x9616, %rsi
lea addresses_A_ht+0x4916, %rdi
clflush (%rsi)
xor %rdx, %rdx
mov $36, %rcx
rep movsw
nop
nop
nop
nop
xor $19596, %r13
lea addresses_WC_ht+0xd916, %r13
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x14116, %rcx
nop
nop
xor %rdx, %rdx
movl $0x61626364, (%rcx)
and $24702, %r11
lea addresses_normal_ht+0x10c16, %r13
nop
sub %r15, %r15
mov (%r13), %ax
nop
nop
nop
add $47542, %rdx
lea addresses_WT_ht+0x1b4dc, %r11
nop
cmp $61499, %r13
movb (%r11), %r15b
xor %r11, %r11
lea addresses_A_ht+0xfb56, %rsi
lea addresses_D_ht+0x1e316, %rdi
nop
nop
inc %r15
mov $96, %rcx
rep movsw
nop
nop
add %r13, %r13
lea addresses_WC_ht+0xe116, %rsi
lea addresses_normal_ht+0x1b16, %rdi
nop
add %r11, %r11
mov $19, %rcx
rep movsw
nop
and $2202, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x18916, %rsi
lea addresses_WT+0x6016, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r11, %r11
mov $5, %rcx
rep movsq
cmp %rsi, %rsi

// Store
lea addresses_PSE+0x7d16, %r10
nop
nop
nop
nop
nop
xor $30751, %r11
movw $0x5152, (%r10)
nop
nop
cmp $2589, %r11

// Store
lea addresses_UC+0xe006, %r11
nop
nop
nop
add $65253, %r8
movb $0x51, (%r11)
inc %rcx

// Load
mov $0xca6, %r8
nop
cmp %rsi, %rsi
movb (%r8), %r11b
nop
nop
nop
nop
nop
dec %r11

// Store
lea addresses_A+0x96f6, %r8
cmp $11524, %r12
movb $0x51, (%r8)
nop
nop
add %r12, %r12

// Load
lea addresses_PSE+0x19d16, %r10
nop
nop
add %rsi, %rsi
vmovups (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
inc %rsi

// Store
mov $0x37a0950000000716, %r12
nop
nop
nop
nop
cmp $45258, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_A+0x5116, %r10
cmp $43398, %r8
movb (%r10), %r12b
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'00': 1}
00
*/
