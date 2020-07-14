.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x73fc, %r13
nop
nop
nop
and $14983, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r13)
nop
add $31776, %r11
lea addresses_WT_ht+0x78b4, %rsi
lea addresses_WT_ht+0x1d454, %rdi
nop
xor $40804, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0x71f4, %rcx
cmp %rdi, %rdi
mov (%rcx), %r11w
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0xcb94, %rsi
lea addresses_UC_ht+0x16794, %rdi
nop
nop
nop
nop
add $64843, %r8
mov $117, %rcx
rep movsb
nop
nop
nop
nop
xor $22928, %r12
lea addresses_WC_ht+0x514, %rsi
lea addresses_D_ht+0xb47a, %rdi
nop
sub $18333, %r12
mov $38, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x17694, %r8
sub $44581, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp $21136, %rbp
lea addresses_D_ht+0x14f94, %rcx
nop
dec %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
sub $9164, %r13
lea addresses_WC_ht+0x14a74, %rsi
lea addresses_A_ht+0xc814, %rdi
nop
nop
nop
nop
dec %r13
mov $111, %rcx
rep movsb
nop
nop
nop
sub %r8, %r8
lea addresses_UC_ht+0xb314, %rsi
lea addresses_D_ht+0x8d14, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $36, %rcx
rep movsw
nop
nop
inc %rbp
lea addresses_WT_ht+0x1237c, %rbp
nop
nop
sub $2020, %rsi
movb $0x61, (%rbp)
nop
add $53466, %rcx
lea addresses_normal_ht+0x16d6d, %r12
nop
nop
nop
nop
cmp $19937, %r11
movups (%r12), %xmm2
vpextrq $1, %xmm2, %r13
dec %r8
lea addresses_normal_ht+0x11824, %r12
nop
nop
inc %r11
mov (%r12), %r8w
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x10394, %r11
nop
nop
nop
nop
cmp %r12, %r12
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rcx
nop
inc %r13
lea addresses_D_ht+0x1af64, %r12
clflush (%r12)
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
add $3811, %rsi
lea addresses_D_ht+0x17394, %r11
cmp $7442, %r8
movw $0x6162, (%r11)
nop
nop
nop
sub $49018, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rsi

// Load
lea addresses_WC+0xb94, %rcx
nop
nop
dec %r8
movb (%rcx), %r14b
add $33007, %r13

// Store
lea addresses_WT+0x4414, %rcx
nop
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovaps %ymm5, (%rcx)
nop
nop
cmp $53737, %rsi

// Load
lea addresses_A+0xab94, %r14
clflush (%r14)
nop
nop
nop
sub %r8, %r8
mov (%r14), %rcx
nop
nop
dec %r13

// Store
lea addresses_D+0x404c, %rbp
nop
nop
nop
sub $36237, %rsi
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
add $33512, %r8

// Store
lea addresses_WT+0xb814, %rsi
nop
nop
nop
nop
nop
inc %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_WC+0xb94, %r11
nop
cmp $46348, %r13
vmovaps (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
