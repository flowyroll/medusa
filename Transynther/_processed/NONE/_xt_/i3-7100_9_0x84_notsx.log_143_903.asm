.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd0af, %rbp
inc %r15
movw $0x6162, (%rbp)
nop
nop
add $7402, %r13
lea addresses_normal_ht+0xe8af, %rsi
lea addresses_D_ht+0xe5af, %rdi
nop
nop
nop
nop
add %r9, %r9
mov $105, %rcx
rep movsw
nop
nop
nop
xor $59411, %r13
lea addresses_UC_ht+0xc8af, %rbp
nop
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %rbp
vmovntdq %ymm6, (%rbp)
nop
nop
nop
xor $56824, %rcx
lea addresses_WT_ht+0x94af, %r15
nop
nop
nop
nop
nop
add %r9, %r9
mov (%r15), %esi
nop
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0x9baf, %r15
nop
inc %rcx
mov (%r15), %r9
nop
nop
nop
nop
nop
and $19554, %rdi
lea addresses_D_ht+0x9eff, %r15
nop
nop
nop
nop
cmp %rbp, %rbp
movb (%r15), %r13b
sub %r15, %r15
lea addresses_D_ht+0x1afaf, %rsi
lea addresses_UC_ht+0x372f, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $119, %rcx
rep movsw
cmp %r9, %r9
lea addresses_normal_ht+0xdf4f, %rsi
lea addresses_WT_ht+0x26af, %rdi
nop
nop
nop
and $44480, %r9
mov $89, %rcx
rep movsl
nop
nop
add $56870, %r9
lea addresses_normal_ht+0x5caf, %r13
and %rsi, %rsi
mov (%r13), %rbp
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xd62f, %rsi
lea addresses_WC_ht+0x67af, %rdi
nop
nop
nop
nop
nop
and %r10, %r10
mov $96, %rcx
rep movsb
nop
nop
nop
nop
nop
and $409, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx

// Store
lea addresses_PSE+0x162f3, %r12
xor %r13, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r12)
nop
nop
nop
nop
inc %rax

// Load
lea addresses_WT+0x1123b, %r15
nop
nop
nop
cmp $22841, %rcx
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
sub $31934, %r12

// Load
lea addresses_D+0x188af, %r12
clflush (%r12)
nop
nop
nop
nop
cmp $45258, %rax
vmovntdqa (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
cmp $41577, %rax

// Store
lea addresses_US+0x6af, %r15
nop
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%r15)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0xe5d7, %r12
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_normal+0x6caf, %rax
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rax)
nop
nop
nop
nop
sub $25667, %r12

// Faulty Load
lea addresses_WT+0xecaf, %rcx
nop
nop
nop
and %r11, %r11
mov (%rcx), %r12w
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'39': 143}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
