.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x29f4, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov (%r14), %r13
nop
nop
nop
add $47619, %r14
lea addresses_UC_ht+0xa1f4, %r12
nop
nop
nop
cmp %r9, %r9
mov (%r12), %r11w
nop
nop
cmp $44307, %r12
lea addresses_D_ht+0x15f4, %rsi
lea addresses_D_ht+0x1e876, %rdi
nop
dec %r9
mov $85, %rcx
rep movsw
nop
nop
sub $24338, %rsi
lea addresses_WC_ht+0x853c, %rdi
nop
nop
nop
cmp $39470, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1a2a4, %r9
nop
nop
nop
nop
xor %r13, %r13
movb $0x61, (%r9)
nop
nop
nop
nop
add $61588, %r14
lea addresses_D_ht+0x109f4, %r9
clflush (%r9)
add $26625, %r14
mov (%r9), %r11w
nop
nop
nop
nop
cmp $5432, %rcx
lea addresses_WC_ht+0xc9d4, %r14
nop
nop
nop
dec %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r14)
nop
sub $39899, %r14
lea addresses_WT_ht+0xa7f4, %rsi
lea addresses_WT_ht+0x45f4, %rdi
nop
nop
nop
nop
nop
cmp $29787, %r13
mov $69, %rcx
rep movsl
nop
add $31876, %r9
lea addresses_WC_ht+0x1f4, %rsi
lea addresses_A_ht+0x33d0, %rdi
nop
and $48385, %r13
mov $46, %rcx
rep movsw
nop
and %rsi, %rsi
lea addresses_D_ht+0xd1f4, %rsi
lea addresses_normal_ht+0xfa54, %rdi
nop
cmp %r14, %r14
mov $9, %rcx
rep movsq
nop
nop
xor $48554, %r9
lea addresses_WT_ht+0x195a9, %r12
nop
xor $65107, %r13
movb $0x61, (%r12)
nop
nop
nop
nop
nop
xor $2082, %r12
lea addresses_WT_ht+0x1ae38, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
nop
nop
cmp $61126, %r9
lea addresses_A_ht+0x7474, %rsi
lea addresses_UC_ht+0x1aa10, %rdi
add $15287, %r14
mov $93, %rcx
rep movsw
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1985c, %r11
nop
nop
nop
xor $9229, %r14
movb (%r11), %r9b
cmp $3055, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_A+0x6bf4, %rax
cmp $42806, %r9
mov (%rax), %r14d
nop
nop
add %rax, %rax

// Store
lea addresses_RW+0x1811c, %r14
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r14)
add $45901, %r10

// Store
lea addresses_WT+0xe054, %rsi
nop
xor $64363, %r9
movw $0x5152, (%rsi)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x1e1f4, %rsi
add $48330, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
nop
sub $46652, %rbx

// Store
lea addresses_WT+0x1a5f4, %rdx
clflush (%rdx)
nop
nop
sub $37269, %rsi
movw $0x5152, (%rdx)
nop
nop
sub %rdx, %rdx

// Load
lea addresses_US+0x13674, %rax
nop
xor $25557, %r14
movups (%rax), %xmm5
vpextrq $1, %xmm5, %r10
nop
add $48235, %r10

// Load
lea addresses_A+0x181f4, %rbx
nop
nop
nop
nop
nop
dec %r10
vmovntdqa (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
sub $46422, %rsi

// Faulty Load
lea addresses_A+0x181f4, %r9
clflush (%r9)
nop
nop
and $30390, %rbx
mov (%r9), %r10d
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'52': 121}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
