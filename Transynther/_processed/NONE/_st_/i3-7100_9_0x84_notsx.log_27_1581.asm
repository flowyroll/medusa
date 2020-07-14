.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x16e00, %r8
nop
nop
nop
nop
nop
sub $37699, %rdx
vmovups (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x1029, %r8
nop
nop
nop
sub $49303, %rcx
movb (%r8), %r12b
dec %r12
lea addresses_normal_ht+0x110e9, %r11
nop
cmp $7311, %rbx
mov (%r11), %rcx
nop
dec %rax
lea addresses_WC_ht+0xb1e9, %rax
nop
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rax)
nop
xor %r12, %r12
lea addresses_D_ht+0x1e4e9, %rcx
nop
xor %r12, %r12
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x148e9, %r11
clflush (%r11)
nop
nop
nop
sub $36258, %r12
mov (%r11), %ecx
nop
nop
nop
nop
xor $2593, %rax
lea addresses_A_ht+0x138e9, %rsi
lea addresses_WC_ht+0x14e29, %rdi
nop
nop
nop
add %r8, %r8
mov $1, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $15242, %rcx
lea addresses_D_ht+0x9d41, %r12
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
and $0xffffffffffffffc0, %r12
vmovaps %ymm3, (%r12)
nop
nop
sub $58284, %r8
lea addresses_WT_ht+0x42e9, %rsi
lea addresses_WC_ht+0xdf19, %rdi
nop
nop
xor $33956, %r12
mov $119, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $18745, %rax
lea addresses_normal_ht+0xbaba, %r12
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
inc %rsi
lea addresses_WC_ht+0x1a0e9, %r12
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%r12)
xor %rcx, %rcx
lea addresses_D_ht+0x8309, %rsi
lea addresses_WT_ht+0x51b1, %rdi
nop
nop
nop
nop
nop
cmp $31858, %rax
mov $110, %rcx
rep movsq
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x17147, %rsi
lea addresses_normal_ht+0x16569, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $56, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $25018, %r11
lea addresses_A_ht+0x3ae9, %rsi
lea addresses_WT_ht+0x1ba69, %rdi
nop
nop
nop
nop
and $26381, %r12
mov $65, %rcx
rep movsq
nop
nop
nop
sub $62064, %r8
lea addresses_WT_ht+0x9e53, %rsi
lea addresses_UC_ht+0xcdd9, %rdi
nop
nop
nop
xor %r11, %r11
mov $97, %rcx
rep movsw
nop
nop
xor %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x11ba1, %r14
inc %rbx
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
inc %r14

// Store
lea addresses_UC+0x134e9, %r13
nop
nop
nop
nop
nop
xor $1158, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
sub $22902, %rbx

// Load
mov $0x4171e60000000ee9, %rbx
nop
nop
nop
sub $16963, %r13
mov (%rbx), %r12d
nop
nop
and $18962, %r12

// Store
mov $0x1223300000008e9, %rsi
dec %r14
movw $0x5152, (%rsi)
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_A+0x51b9, %rsi
nop
sub %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rsi)
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x1a549, %r10
cmp %rsi, %rsi
movl $0x51525354, (%r10)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_A+0xa8e9, %r13
clflush (%r13)
nop
nop
nop
nop
add $42461, %r12
mov (%r13), %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'52': 27}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
