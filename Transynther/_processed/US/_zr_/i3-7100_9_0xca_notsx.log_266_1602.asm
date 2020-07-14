.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xd486, %rdx
nop
nop
nop
nop
add $27447, %rbx
movw $0x6162, (%rdx)
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x89c0, %rax
nop
nop
nop
nop
nop
dec %r10
movl $0x61626364, (%rax)
nop
xor $13107, %r10
lea addresses_normal_ht+0x11500, %rsi
lea addresses_normal_ht+0xc988, %rdi
nop
nop
nop
add $34473, %r8
mov $24, %rcx
rep movsq
nop
nop
nop
sub $22485, %rdx
lea addresses_normal_ht+0x18d80, %rbx
nop
and $18773, %rax
movb $0x61, (%rbx)
nop
xor %rbx, %rbx
lea addresses_WT_ht+0xa9e4, %rdx
clflush (%rdx)
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rdx
movntdq %xmm4, (%rdx)
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x10f40, %r10
nop
nop
nop
and $48566, %r11
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1c8b4, %rdi
nop
nop
nop
add $42997, %rbx
mov (%rdi), %edx
nop
nop
nop
nop
nop
add $38613, %rcx
lea addresses_WT_ht+0x1ae0e, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%rsi), %rbx
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x15dbb, %r10
nop
nop
nop
cmp $3245, %rax
and $0xffffffffffffffc0, %r10
movntdqa (%r10), %xmm5
vpextrq $1, %xmm5, %rbx
cmp $29038, %rbx
lea addresses_D_ht+0xc300, %rbx
nop
and $21170, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1a618, %rdx
nop
nop
nop
cmp $55485, %rcx
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
nop
nop
nop
add $42564, %rdi
lea addresses_WC_ht+0x7900, %rsi
lea addresses_WT_ht+0xc200, %rdi
inc %rdx
mov $26, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $38107, %rsi
lea addresses_D_ht+0x5b80, %r8
nop
nop
nop
nop
nop
add %rbx, %rbx
and $0xffffffffffffffc0, %r8
movaps (%r8), %xmm4
vpextrq $1, %xmm4, %rax
nop
nop
nop
cmp $39366, %rdi
lea addresses_A_ht+0x3e80, %rcx
nop
nop
inc %rax
mov (%rcx), %r11w
and $58727, %r11
lea addresses_normal_ht+0x1b00, %rdi
nop
nop
nop
xor $35357, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rdi)
add %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x18f00, %rsi
lea addresses_D+0x18bd8, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $90, %rcx
rep movsb
nop
nop
nop
xor $10203, %r13

// Faulty Load
lea addresses_US+0xdd00, %rdi
dec %r10
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 3, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'00': 266}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
