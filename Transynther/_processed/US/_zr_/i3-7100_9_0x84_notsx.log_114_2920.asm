.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13884, %rax
nop
nop
nop
nop
sub %r11, %r11
movups (%rax), %xmm3
vpextrq $1, %xmm3, %rdx
nop
xor $21490, %r14
lea addresses_D_ht+0x17b24, %rsi
lea addresses_WC_ht+0x1c764, %rdi
nop
sub %rdx, %rdx
mov $27, %rcx
rep movsb
nop
nop
nop
xor $42195, %rdi
lea addresses_WT_ht+0x15745, %rsi
lea addresses_normal_ht+0x9c48, %rdi
cmp %rbp, %rbp
mov $73, %rcx
rep movsw
nop
nop
sub $56820, %rcx
lea addresses_WT_ht+0x858c, %rcx
nop
nop
add $26968, %rsi
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x121e4, %rsi
nop
nop
nop
nop
nop
and $13688, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
inc %r14
lea addresses_D_ht+0xa604, %r11
nop
nop
nop
dec %rcx
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xc1e4, %r11
nop
add %r14, %r14
movb $0x61, (%r11)
nop
nop
nop
nop
and $2963, %rax
lea addresses_UC_ht+0x1c7cc, %rcx
clflush (%rcx)
nop
nop
sub %rsi, %rsi
mov (%rcx), %eax
dec %rax
lea addresses_UC_ht+0x4424, %r11
sub $53703, %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
xor $37321, %rdx
lea addresses_UC_ht+0xbe4, %rax
xor $14539, %rbp
movb (%rax), %r14b
nop
dec %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x1ab1a, %rbp
nop
nop
cmp %r11, %r11
movb $0x51, (%rbp)
nop
cmp %r11, %r11

// Load
mov $0x2fc59e00000001e4, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r8), %rbp
nop
nop
nop
cmp $4634, %r13

// Store
mov $0x5e4, %rsi
nop
nop
nop
nop
and $45362, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor $48432, %rbp

// Load
lea addresses_PSE+0x93c, %r13
clflush (%r13)
add $30095, %rbp
mov (%r13), %ecx
nop
nop
xor %r13, %r13

// Store
lea addresses_US+0x75e4, %rdx
nop
cmp $14104, %rcx
movl $0x51525354, (%rdx)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_US+0x151e4, %rdx
nop
nop
nop
nop
sub $63215, %rcx
mov (%rdx), %esi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 114}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
