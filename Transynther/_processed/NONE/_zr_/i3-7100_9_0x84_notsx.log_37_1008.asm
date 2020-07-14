.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x161bb, %rsi
lea addresses_D_ht+0x1167b, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $25, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x6dfb, %rsi
lea addresses_D_ht+0xe0ef, %rdi
cmp %r14, %r14
mov $122, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0xf9db, %rsi
lea addresses_WT_ht+0x1a9db, %rdi
nop
nop
nop
and %rbx, %rbx
mov $20, %rcx
rep movsq
nop
nop
nop
add $5516, %r15
lea addresses_UC_ht+0xcb8b, %rsi
nop
nop
cmp $17942, %rdi
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r14
nop
cmp %r10, %r10
lea addresses_UC_ht+0xac4b, %rsi
clflush (%rsi)
nop
nop
inc %rbx
mov (%rsi), %r10
nop
dec %r14
lea addresses_WT_ht+0x205b, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1e7a1, %rsi
nop
nop
nop
nop
and %r14, %r14
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub $27386, %rbx
lea addresses_WC_ht+0x39db, %rsi
nop
nop
nop
nop
nop
add $13613, %r14
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
and $57760, %r15
lea addresses_normal_ht+0x149db, %r14
nop
nop
nop
nop
nop
and $52580, %r15
mov (%r14), %ecx
nop
inc %rdi
lea addresses_D_ht+0x1176b, %rsi
lea addresses_A_ht+0x10e09, %rdi
nop
nop
nop
and $56327, %r11
mov $58, %rcx
rep movsq
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x18367, %rcx
nop
nop
add $9936, %rdi
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
xor $37678, %r11
lea addresses_UC_ht+0xddb, %r14
nop
nop
nop
and $1833, %rbx
mov (%r14), %r10d
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0xd64b, %r15
nop
nop
nop
nop
nop
xor %r14, %r14
movb $0x61, (%r15)
add $11145, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x68d0100000000bcb, %rcx
nop
nop
nop
nop
add $32422, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_WT+0x1790b, %rax
nop
nop
add $60042, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovntdq %ymm7, (%rax)
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_WT+0x5811, %r14
nop
nop
nop
nop
nop
and %rbp, %rbp
movb (%r14), %cl
nop
nop
add $26524, %r14

// Store
lea addresses_WT+0xbc3b, %r8
dec %rdx
movl $0x51525354, (%r8)

// Exception!!!
mov (0), %rsi
xor %rcx, %rcx

// Faulty Load
lea addresses_A+0x79db, %rax
nop
and %rdx, %rdx
mov (%rax), %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 37}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
