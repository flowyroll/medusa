.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x170cf, %rdx
nop
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x1ea74, %r11
nop
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x14534, %r10
inc %rcx
mov (%r10), %r15d
cmp $25778, %rdx
lea addresses_WC_ht+0xfdc4, %rsi
lea addresses_UC_ht+0x634, %rdi
clflush (%rdi)
xor $1126, %r13
mov $13, %rcx
rep movsw
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x15a84, %r15
nop
nop
nop
nop
nop
sub $20207, %r10
movl $0x61626364, (%r15)
nop
xor $56574, %r13
lea addresses_D_ht+0xd928, %rcx
add %rdx, %rdx
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x198, %rsi
nop
nop
nop
nop
nop
and $63287, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x2e9c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $20945, %rcx
movl $0x61626364, (%rdi)
nop
cmp $40619, %rdi
lea addresses_WT_ht+0xd7e4, %rsi
lea addresses_normal_ht+0x6984, %rdi
nop
nop
xor $6158, %r13
mov $78, %rcx
rep movsw
nop
inc %r11
lea addresses_UC_ht+0x63e4, %rsi
lea addresses_D_ht+0x30c4, %rdi
nop
inc %r13
mov $72, %rcx
rep movsb
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x6757, %r13
clflush (%r13)
nop
nop
and %r10, %r10
mov (%r13), %rcx
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdx

// Load
lea addresses_US+0x3fe4, %rbp
nop
nop
nop
nop
nop
inc %rax
movb (%rbp), %cl
nop
nop
nop
nop
nop
xor $58652, %r12

// Store
lea addresses_WT+0x127e4, %r10
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r10)
nop
and %r14, %r14

// Store
mov $0x43da4c0000000604, %rax
nop
nop
sub %r10, %r10
movl $0x51525354, (%rax)
nop
nop
xor $43113, %rcx

// Load
lea addresses_UC+0x30e4, %r14
clflush (%r14)
nop
nop
nop
nop
xor %rax, %rax
movb (%r14), %dl
nop
nop
add %rcx, %rcx

// Load
lea addresses_D+0xc7e4, %r10
nop
nop
nop
xor %rbp, %rbp
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
add $23740, %rcx

// Faulty Load
lea addresses_D+0xc7e4, %rcx
and $60403, %rdx
movntdqa (%rcx), %xmm7
vpextrq $0, %xmm7, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 7161, '58': 14668}
00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 00 58 58 58 00 58 58 00 00 00 00 58 00 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 58 58 00 58 00 58 58 58 00 00 58 58 58 00 00 58 00 58 58 00 58 00 58 58 00 58 58 58 58 00 58 00 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 00 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 00 58 00 58 00 58 58 00 58 00 00 58 58 58 58 58 00 58 00 58 58 00 00 58 00 58 58 58 00 58 00 58 58 00 58 58 00 58 58 00 00 58 00 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 00 00 00 58 58 58 00 58 58 58 00 58 00 58 58 58 00 00 58 00 58 58 00 58 00 58 00 58 00 58 58 58 58 00 00 58 58 58 00 00 00 58 00 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 58 58 00 58 00 00 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 00 00 58 58 00 58 58 58 00 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 00 58 58 58 00 58 58 58 00 58 58 58 00 00 58 00 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 00 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 00 00 58 58 58 00 58 58 00 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 00 00 00 58 58 58 00 00 58 58 00 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 00 58 00 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 00 58 00 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 00 58 58 00 00 58 00 58 00 00 58 58 00 58 58 58 00 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 00 00 58 58 58 58 00 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 00 58 58 00 58 00 58 58 00 58 58 00 58 58 00 58 58 58 00 58 00 58 58 00 00 58 58 58 58 00 00 58 58 00 00 58 00 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 00 58 00 58 58 00 00 00 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 58 58 58 58 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 58 58 00 58 58 58 58 58 58 58 00 00 00 00 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 00 58 58 58 00 58 00 58 00 58 58 58 00 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 00 00 58 00 58 00 00 00 58 00 00 00 00 00 58 00 00 58 58 58 00 58 58 58 00 00 00 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00
*/
