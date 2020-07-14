.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1574d, %r14
nop
nop
nop
nop
nop
mfence
mov (%r14), %di
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xa74d, %rsi
nop
and %rdi, %rdi
mov (%rsi), %ecx
and $56577, %r11
lea addresses_UC_ht+0x4ecd, %rsi
lea addresses_normal_ht+0xc94d, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $74, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x14411, %r11
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x77bd, %rdi
nop
nop
nop
xor $52325, %r15
mov (%rdi), %r11
nop
nop
add $47405, %r11
lea addresses_normal_ht+0xc34d, %rsi
lea addresses_D_ht+0x1584d, %rdi
sub $24153, %r9
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x754d, %r11
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
and $0xffffffffffffffc0, %r11
vmovntdq %ymm6, (%r11)
nop
nop
nop
nop
add $19606, %rdi
lea addresses_normal_ht+0x1bfed, %r9
nop
sub %r15, %r15
movups (%r9), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
and $54894, %rdi
lea addresses_D_ht+0x866d, %rsi
nop
nop
inc %rdi
movb $0x61, (%rsi)
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xbf3d, %rsi
lea addresses_WC_ht+0x1b74d, %rdi
nop
and $62169, %r13
mov $105, %rcx
rep movsw
dec %r13
lea addresses_normal_ht+0x12cad, %r15
dec %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r15
vmovntdq %ymm7, (%r15)
nop
and %r11, %r11
lea addresses_WT_ht+0x1794d, %rsi
nop
nop
and %rdi, %rdi
movb (%rsi), %r15b
nop
nop
nop
nop
xor $49499, %r14
lea addresses_normal_ht+0x164cd, %r13
nop
nop
add %r9, %r9
movups (%r13), %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xd1dd, %rsi
lea addresses_WT_ht+0x9d4d, %rdi
clflush (%rsi)
nop
xor %r13, %r13
mov $26, %rcx
rep movsq
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x874d, %rdi
nop
nop
nop
inc %r14
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
sub $44595, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rsi

// Load
lea addresses_D+0x2fad, %rbx
nop
add $34743, %r10
mov (%rbx), %r12
nop
nop
cmp $27846, %rbx

// Store
mov $0xe47850000000169, %r10
cmp %r15, %r15
movl $0x51525354, (%r10)
and $44204, %r11

// Store
lea addresses_RW+0xf14d, %r14
nop
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0xab4d, %r15
nop
nop
nop
nop
and %r14, %r14
mov (%r15), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 198}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
