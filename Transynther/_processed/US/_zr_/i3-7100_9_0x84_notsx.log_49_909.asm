.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x11a44, %rdi
add %r8, %r8
mov (%rdi), %r14w
nop
nop
nop
nop
sub $19582, %r10
lea addresses_D_ht+0x3a84, %rdx
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rdx)
nop
add %rdi, %rdi
lea addresses_WT_ht+0xc8c4, %rsi
lea addresses_UC_ht+0x16244, %rdi
xor %r8, %r8
mov $59, %rcx
rep movsq
nop
nop
and $59695, %rsi
lea addresses_A_ht+0x165b8, %r10
sub $2119, %r14
movb (%r10), %r8b
cmp $435, %r10
lea addresses_A_ht+0x10d44, %rsi
lea addresses_WT_ht+0x6144, %rdi
nop
add $16977, %rbx
mov $65, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x4f44, %rsi
lea addresses_WC_ht+0xeaf0, %rdi
nop
nop
nop
cmp $34556, %rbx
mov $18, %rcx
rep movsw
nop
nop
nop
cmp $16623, %r8
lea addresses_normal_ht+0x15d04, %rsi
lea addresses_normal_ht+0x9f64, %rdi
nop
nop
nop
nop
inc %r14
mov $66, %rcx
rep movsb
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x19b44, %rsi
lea addresses_A_ht+0x3c64, %rdi
nop
cmp %r14, %r14
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xfb04, %rsi
lea addresses_D_ht+0x3ca4, %rdi
nop
nop
nop
nop
nop
xor $24710, %r10
mov $81, %rcx
rep movsq
nop
nop
nop
cmp $49937, %rdi
lea addresses_A_ht+0x5f8, %rsi
lea addresses_UC_ht+0x1b0e4, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rdx
mov $24, %rcx
rep movsw
nop
nop
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rdx
push %rsi

// Load
lea addresses_D+0xdeac, %r10
nop
nop
nop
nop
dec %r15
mov (%r10), %rax
nop
nop
nop
cmp $22274, %r15

// Load
mov $0x4776570000000264, %rsi
clflush (%rsi)
cmp %r15, %r15
movb (%rsi), %r10b
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_WC+0x1a544, %r10
nop
and %r13, %r13
movb $0x51, (%r10)
add $5450, %r15

// Store
lea addresses_WC+0x144, %r13
and %r14, %r14
mov $0x5152535455565758, %r10
movq %r10, (%r13)
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x1c944, %r15
nop
cmp %rax, %rax
vmovups (%r15), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
