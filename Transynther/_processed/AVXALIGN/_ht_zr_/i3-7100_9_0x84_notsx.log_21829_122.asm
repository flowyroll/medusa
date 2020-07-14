.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12fd1, %r9
nop
nop
nop
nop
and %r14, %r14
movb (%r9), %cl
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x1a9d1, %rbp
nop
nop
nop
nop
mfence
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
xor $35609, %r9
lea addresses_WC_ht+0x190d1, %r14
nop
nop
nop
inc %rcx
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
xor $5290, %r14
lea addresses_WT_ht+0x626d, %rsi
lea addresses_WT_ht+0x113d1, %rdi
clflush (%rdi)
nop
nop
nop
add %rbp, %rbp
mov $59, %rcx
rep movsw
nop
and %rbp, %rbp
lea addresses_A_ht+0xfd91, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rdi), %r14w
nop
nop
and %rax, %rax
lea addresses_WT_ht+0xab11, %rbp
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%rbp)
nop
add $69, %rax
lea addresses_normal_ht+0x10f61, %r9
add $24163, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x171d1, %rsi
lea addresses_WC_ht+0x1ae51, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $121, %rcx
rep movsq
nop
nop
sub $63028, %rcx
lea addresses_WC_ht+0x135b1, %rsi
lea addresses_UC_ht+0x80d1, %rdi
sub %r9, %r9
mov $67, %rcx
rep movsq
nop
dec %rdi
lea addresses_A_ht+0xf9d1, %rbp
clflush (%rbp)
xor $16433, %r14
mov (%rbp), %eax
inc %rbx
lea addresses_UC_ht+0x1ba21, %rdi
nop
nop
add $7720, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x29e1, %rsi
lea addresses_WC_ht+0x10dbd, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $44451, %rax
mov $112, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x8fd7, %r14
nop
nop
sub %r9, %r9
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x115d1, %rcx
nop
add %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
inc %r10

// Load
mov $0x6e4e6b00000009d1, %rcx
nop
add %r10, %r10
mov (%rcx), %edx
and %rdi, %rdi

// Store
lea addresses_normal+0xf5d1, %rdi
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%rdi)
nop
add %rdx, %rdx

// Store
lea addresses_WT+0x8951, %rdx
nop
nop
add $29494, %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
and $57619, %r15

// Store
lea addresses_UC+0x15e29, %r11
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%r11)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_A+0xb755, %r10
nop
nop
nop
nop
nop
and $57962, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
nop
nop
and $29854, %r11

// Faulty Load
lea addresses_normal+0xa9d1, %rcx
nop
and $4752, %r10
movntdqa (%rcx), %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 1710, '00': 16168, '48': 2485, '47': 1, '49': 1465}
00 00 46 00 00 00 00 00 00 48 49 46 46 00 00 00 48 48 49 00 00 00 00 00 00 48 00 49 00 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 00 48 48 49 00 00 00 00 00 00 48 49 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 48 49 00 00 00 00 00 00 00 48 49 49 46 00 00 00 00 00 48 49 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 46 46 00 00 00 00 00 48 49 00 00 00 00 00 00 48 00 48 46 00 00 00 00 00 00 48 49 46 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 46 00 00 00 00 00 48 00 46 00 00 00 00 00 00 48 48 49 46 00 00 00 00 00 48 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 46 00 00 00 00 00 48 49 00 00 00 00 00 00 00 00 48 00 49 00 00 00 00 00 00 00 48 00 49 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 48 48 49 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 49 46 00 00 00 00 00 00 48 49 00 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 00 48 49 46 00 00 00 00 00 48 49 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 49 00 00 00 00 00 00 00 48 48 49 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 49 00 00 00 00 00 48 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 48 49 49 00 00 00 00 00 00 00 00 48 49 00 00 00 00 48 48 46 00 00 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 48 48 49 46 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 48 49 46 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 48 46 00 00 00 00 00 48 48 49 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 00 46 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 48 48 46 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 48 49 46 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 48 48 49 00 00 00 00 00 00 00 48 49 49 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 49 00 00 00 00 00 00 00 48 49 46 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 48 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 48 48 46 00 00 00 00 00 48 49 00 00 00 00 00 00 00 00 48 46 00 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 46
*/
