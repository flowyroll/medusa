.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xe1d1, %rbp
nop
nop
nop
nop
nop
add %r12, %r12
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x111d1, %r12
cmp $58358, %rdi
movw $0x6162, (%r12)
nop
xor %r14, %r14
lea addresses_WC_ht+0x129b1, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
movb (%rdi), %dl
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x898d, %rdi
nop
nop
nop
add $2675, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1e3e9, %rsi
lea addresses_WC_ht+0x35d1, %rdi
nop
dec %rbp
mov $17, %rcx
rep movsl
sub $17856, %r8
lea addresses_UC_ht+0x1cfad, %rsi
lea addresses_A_ht+0x1ce41, %rdi
clflush (%rsi)
nop
xor $29442, %rbp
mov $107, %rcx
rep movsb
nop
nop
nop
and $2575, %rbp
lea addresses_WT_ht+0x1d647, %rsi
lea addresses_WC_ht+0x58ad, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $72, %rcx
rep movsw
nop
nop
nop
sub $52682, %rsi
lea addresses_UC_ht+0x1a9d1, %rbp
nop
nop
nop
nop
nop
add $19332, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rbp)
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x153d1, %rsi
lea addresses_D_ht+0x85d1, %rdi
nop
dec %r12
mov $121, %rcx
rep movsw
nop
xor $43403, %rdi
lea addresses_WC_ht+0x1ab71, %r12
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
cmp $4709, %r12
lea addresses_normal_ht+0x4f11, %rdi
nop
nop
add $10491, %r14
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
and $20927, %rdx
lea addresses_A_ht+0x121d1, %rcx
xor $55623, %rbp
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
cmp $54785, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0xd9d1, %r8
nop
nop
nop
xor $30418, %r10
mov (%r8), %bx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 72}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
