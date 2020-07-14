.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1071, %r9
dec %r10
movb (%r9), %al
nop
nop
nop
nop
sub $40047, %rbp
lea addresses_WC_ht+0x13f71, %rsi
nop
nop
nop
cmp %r13, %r13
movb $0x61, (%rsi)
nop
nop
nop
nop
cmp $42735, %rbp
lea addresses_D_ht+0xff71, %r9
nop
inc %rax
movups (%r9), %xmm3
vpextrq $0, %xmm3, %rbp
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x1f71, %r15
nop
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%r15)
nop
sub $57582, %rbp
lea addresses_D_ht+0x7996, %r15
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0xc771, %rsi
nop
nop
inc %r13
movb $0x61, (%rsi)
nop
sub %r10, %r10
lea addresses_WT_ht+0x16671, %rsi
lea addresses_normal_ht+0x19641, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r9, %r9
mov $104, %rcx
rep movsw
sub $45176, %rdi
lea addresses_WC_ht+0x8de1, %r15
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r15)
nop
cmp %rax, %rax
lea addresses_WT_ht+0xe971, %rbp
sub $19750, %rax
mov (%rbp), %r9w
nop
sub %r13, %r13
lea addresses_WT_ht+0x93f1, %rax
nop
nop
nop
sub %rdi, %rdi
mov (%rax), %r9d
add %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x1ef71, %rbx
clflush (%rbx)
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rbx)
nop
lfence

// Store
mov $0x7806d60000000971, %rsi
clflush (%rsi)
nop
nop
dec %r11
movl $0x51525354, (%rsi)
nop
cmp $57559, %rdx

// Store
lea addresses_WC+0x1d331, %r11
xor %rbx, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_WT+0x5771, %r14
nop
nop
add %r10, %r10
movw $0x5152, (%r14)
nop
xor $2001, %r10

// Faulty Load
mov $0x6634a00000000771, %r8
nop
xor %rbx, %rbx
movb (%r8), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 4}
00 00 00 00
*/
