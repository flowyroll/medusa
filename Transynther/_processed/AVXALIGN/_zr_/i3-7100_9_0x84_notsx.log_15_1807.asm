.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1878c, %r15
nop
nop
cmp $55748, %r8
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
dec %rbp
lea addresses_D_ht+0xca14, %r15
nop
nop
nop
add $1044, %r10
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x1e73, %rax
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x11414, %r8
nop
nop
nop
nop
add $10480, %r10
mov $0x6162636465666768, %r15
movq %r15, (%r8)
inc %r8
lea addresses_A_ht+0x102b, %rsi
lea addresses_WC_ht+0x16a94, %rdi
nop
xor $28550, %rax
mov $1, %rcx
rep movsq
dec %rcx
lea addresses_A_ht+0x214, %rdi
nop
sub $65516, %r15
mov (%rdi), %esi
nop
nop
nop
cmp $45753, %rbx
lea addresses_D_ht+0x17ed4, %rsi
lea addresses_normal_ht+0x1afa0, %rdi
nop
nop
and $5528, %r10
mov $109, %rcx
rep movsw
xor %r15, %r15
lea addresses_D_ht+0x1d254, %rbp
and $63387, %rax
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0xc78c, %rsi
lea addresses_D_ht+0x19406, %rdi
nop
nop
dec %rax
mov $4, %rcx
rep movsw
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0xb814, %rsi
lea addresses_D_ht+0xaca8, %rdi
nop
nop
nop
xor %r10, %r10
mov $114, %rcx
rep movsw
nop
dec %rsi
lea addresses_A_ht+0x10394, %rsi
lea addresses_D_ht+0x2c14, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $90, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x15e7c, %r15
nop
nop
add %rbp, %rbp
movb $0x61, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x4414, %rsi
lea addresses_WT_ht+0x143d8, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $85, %rcx
rep movsw
nop
inc %rax
lea addresses_D_ht+0x1c042, %rcx
nop
nop
and %rax, %rax
mov (%rcx), %rdi
nop
add %rax, %rax
lea addresses_UC_ht+0x1cc14, %rsi
lea addresses_A_ht+0x10014, %rdi
nop
nop
sub $5943, %r10
mov $102, %rcx
rep movsb
nop
nop
nop
and $61316, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x10654, %rsi
lea addresses_normal+0x8c14, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $16, %rcx
rep movsw
add $14467, %rsi

// Store
lea addresses_WC+0x15414, %rcx
nop
nop
nop
nop
dec %r15
movw $0x5152, (%rcx)
add $36494, %r9

// Load
lea addresses_WC+0x1c2d4, %r9
clflush (%r9)
nop
nop
and $61534, %rbp
mov (%r9), %r14d
and $5996, %rsi

// Store
mov $0x368, %rsi
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
add %rsi, %rsi

// Load
lea addresses_PSE+0x17c14, %r9
nop
add %r15, %r15
mov (%r9), %rsi
nop
inc %rdi

// Store
mov $0x6b3b9b0000000414, %r14
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r14)
nop
nop
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_normal+0x8c14, %r9
nop
xor $25219, %r14
mov (%r9), %ecx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
