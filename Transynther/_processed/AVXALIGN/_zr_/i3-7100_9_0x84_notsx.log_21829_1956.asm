.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9a4e, %rsi
lea addresses_D_ht+0x19270, %rdi
nop
nop
nop
and $57142, %r9
mov $89, %rcx
rep movsw
nop
nop
nop
nop
add $57712, %r13
lea addresses_D_ht+0x103c6, %rsi
lea addresses_D_ht+0x17470, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r9, %r9
mov $102, %rcx
rep movsq
nop
cmp %r9, %r9
lea addresses_UC_ht+0xc6f0, %rsi
lea addresses_normal_ht+0x149f0, %rdi
clflush (%rsi)
nop
nop
xor %r14, %r14
mov $34, %rcx
rep movsl
nop
nop
xor %r13, %r13
lea addresses_normal_ht+0xbcf0, %rsi
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
sub $47084, %r9
lea addresses_D_ht+0x114f0, %r13
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
dec %r14
lea addresses_normal_ht+0x52f0, %r14
clflush (%r14)
inc %rbx
movups (%r14), %xmm4
vpextrq $0, %xmm4, %rcx
nop
dec %r14
lea addresses_UC_ht+0x11ef0, %rsi
lea addresses_UC_ht+0xd670, %rdi
clflush (%rdi)
inc %r8
mov $9, %rcx
rep movsw
cmp $34061, %r8
lea addresses_WT_ht+0xcd4, %rdi
nop
cmp $32790, %rsi
movb $0x61, (%rdi)
nop
and %rsi, %rsi
lea addresses_D_ht+0xc70, %rsi
lea addresses_A_ht+0x1d0f0, %rdi
and %r13, %r13
mov $24, %rcx
rep movsl
nop
nop
dec %r9
lea addresses_A_ht+0xd0a6, %r14
sub %rbx, %rbx
vmovups (%r14), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
cmp %rdi, %rdi
lea addresses_UC_ht+0x92fc, %r9
clflush (%r9)
inc %r14
mov (%r9), %r13
nop
dec %rdi
lea addresses_UC_ht+0x2b7c, %r14
clflush (%r14)
nop
nop
inc %r8
movups (%r14), %xmm1
vpextrq $0, %xmm1, %r13
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x11370, %rbx
nop
nop
nop
nop
nop
xor $3749, %r9
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x73b4, %rsi
lea addresses_WC_ht+0x18ab0, %rdi
nop
nop
nop
nop
xor $13596, %r9
mov $109, %rcx
rep movsl
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x18cf0, %rsi
lea addresses_WC_ht+0xe0f0, %rdi
nop
nop
nop
add %r13, %r13
mov $27, %rcx
rep movsl
nop
nop
nop
nop
add $55066, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rsi

// Load
lea addresses_PSE+0x1acf0, %rsi
nop
add $45534, %r10
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x722, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
sub $42771, %rbp

// Store
lea addresses_A+0x9730, %rbp
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
cmp %r15, %r15

// Store
lea addresses_normal+0xd0f0, %r13
add $17287, %r10
movl $0x51525354, (%r13)
nop
nop
sub $16436, %rbx

// Store
lea addresses_normal+0x4cf0, %rcx
sub $45949, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rcx)
nop
and $10154, %r10

// Store
lea addresses_A+0x1c8f0, %r10
nop
nop
nop
nop
cmp $18200, %rsi
movw $0x5152, (%r10)
nop
nop
xor %r10, %r10

// Store
mov $0x3f0, %rbx
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
xor $29178, %rcx

// Store
lea addresses_PSE+0x62e0, %rsi
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovaps %ymm2, (%rsi)
nop
nop
nop
nop
nop
and $45039, %rbp

// Store
mov $0x4f0, %rsi
nop
nop
dec %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%rsi)
cmp $58080, %rsi

// Store
lea addresses_US+0x13a30, %r13
nop
and %r10, %r10
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Faulty Load
mov $0x4594a800000004f0, %r13
nop
nop
nop
nop
sub %rcx, %rcx
movntdqa (%r13), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
