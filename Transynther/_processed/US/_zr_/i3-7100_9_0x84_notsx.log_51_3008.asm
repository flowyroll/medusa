.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6f0b, %rbx
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
and $27827, %r10
lea addresses_D_ht+0x4ab, %r8
clflush (%r8)
nop
nop
nop
nop
sub $10217, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm0
movups %xmm0, (%r8)
nop
nop
add %r8, %r8
lea addresses_A_ht+0x1273, %r8
nop
nop
nop
nop
nop
xor $11337, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1058, %r8
nop
add $18176, %r10
mov (%r8), %r11w
nop
add $20602, %r8
lea addresses_A_ht+0x7b8b, %rsi
lea addresses_A_ht+0x6bf7, %rdi
nop
and $11112, %r8
mov $106, %rcx
rep movsq
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1d44b, %rbx
xor $57187, %r8
mov (%rbx), %rdi
dec %r15
lea addresses_normal_ht+0xa5ec, %rbx
nop
and %r11, %r11
movl $0x61626364, (%rbx)
cmp $57393, %r10
lea addresses_WC_ht+0x1d78b, %r15
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r15), %ecx
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1a78b, %rbx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rbx), %rdi
nop
sub %rcx, %rcx
lea addresses_D_ht+0x5b9f, %r11
nop
nop
nop
nop
cmp $41783, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xf7b3, %r11
nop
nop
nop
nop
inc %r15
movw $0x6162, (%r11)
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0xb18b, %r10
nop
nop
nop
nop
nop
sub $30629, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x8bbb, %rsi
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0xb6d3, %rsi
lea addresses_normal_ht+0x1020b, %rdi
nop
nop
nop
nop
inc %r10
mov $101, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x83cb, %r10
nop
nop
nop
nop
nop
and %r8, %r8
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rdx

// Faulty Load
lea addresses_US+0x878b, %rax
nop
nop
and $38630, %r11
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
