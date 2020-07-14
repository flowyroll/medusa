.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d5bf, %rbp
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
sub $64989, %r9
lea addresses_A_ht+0xacc7, %rsi
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x1b587, %r12
sub $7192, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x1aac7, %r8
nop
nop
and %rbp, %rbp
movb $0x61, (%r8)
and $54658, %rax
lea addresses_normal_ht+0xe2c7, %rax
clflush (%rax)
nop
nop
and $54178, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rax)
inc %rsi
lea addresses_UC_ht+0x872, %rsi
nop
nop
nop
and $46627, %r12
movb $0x61, (%rsi)
nop
sub %rax, %rax
lea addresses_WT_ht+0x8147, %rsi
lea addresses_A_ht+0x190c7, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $15, %rcx
rep movsl
nop
xor $29977, %rdx
lea addresses_A_ht+0x36c7, %rbp
nop
nop
nop
nop
add $45819, %r9
movb $0x61, (%rbp)
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xdda7, %r12
nop
nop
add %r8, %r8
mov $0x6162636465666768, %r9
movq %r9, %xmm1
and $0xffffffffffffffc0, %r12
movntdq %xmm1, (%r12)
nop
cmp $44081, %r9
lea addresses_D_ht+0x5b7b, %rbp
xor %r8, %r8
movb (%rbp), %dl
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x1e6f7, %rdi
nop
nop
nop
nop
mfence
mov (%rdi), %r8d
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1a2c7, %rsi
lea addresses_normal_ht+0xf1c7, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
cmp $50392, %r9
mov $62, %rcx
rep movsl
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x1c387, %rsi
lea addresses_A_ht+0x1cb90, %rdi
nop
sub %rbp, %rbp
mov $61, %rcx
rep movsb
nop
nop
nop
inc %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x12247, %rcx
nop
nop
nop
add $18919, %r11
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
nop
nop
nop
add $16134, %r11

// Store
lea addresses_A+0xe2c7, %rcx
nop
nop
nop
nop
nop
xor $33791, %r14
movb $0x51, (%rcx)
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_UC+0xd8c7, %r12
nop
nop
nop
dec %rax
mov (%r12), %r11d
nop
nop
nop
nop
nop
inc %r12

// REPMOV
lea addresses_UC+0x1eac7, %rsi
lea addresses_A+0x18ac7, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $77, %rcx
rep movsw
nop
nop
add $31508, %rsi

// Store
lea addresses_normal+0x7df7, %rsi
nop
nop
sub %r14, %r14
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
and $47091, %rax

// Store
lea addresses_WT+0xa0c7, %rdx
nop
nop
nop
xor $27899, %rax
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
add %r8, %r8

// Load
lea addresses_WT+0x56c7, %rsi
nop
nop
nop
nop
nop
add %rdx, %rdx
movb (%rsi), %r11b
nop
nop
add $5773, %r8

// Store
lea addresses_WC+0x52c7, %r8
nop
nop
nop
and $18156, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r8)
nop
nop
add %rsi, %rsi

// Store
lea addresses_WC+0x194d3, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%rdi)
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_WT+0x5ac7, %r8
nop
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
