.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1215, %rcx
nop
nop
nop
sub $12786, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub $61167, %r13
lea addresses_WT_ht+0x13095, %rbx
nop
nop
nop
nop
nop
add $1690, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
add %rax, %rax
lea addresses_WT_ht+0x18c35, %r11
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%r11)
nop
sub $48753, %r15
lea addresses_UC_ht+0x1c495, %r15
cmp %r13, %r13
mov (%r15), %r9
cmp %rbx, %rbx
lea addresses_UC_ht+0x14911, %r9
nop
nop
nop
sub $43619, %r15
movb $0x61, (%r9)
nop
nop
nop
nop
nop
xor $31884, %rcx
lea addresses_D_ht+0x123d5, %rax
nop
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %rax
vmovntdqa (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
sub $33697, %r11
lea addresses_WC_ht+0xf695, %r9
nop
nop
nop
nop
and $7530, %r13
mov (%r9), %cx
nop
nop
nop
inc %rbx
lea addresses_WC_ht+0xae95, %r15
nop
nop
nop
nop
nop
add $11605, %rbx
movups (%r15), %xmm7
vpextrq $1, %xmm7, %r13
cmp $64078, %rcx
lea addresses_UC_ht+0xa05d, %rsi
lea addresses_WT_ht+0x1e345, %rdi
nop
cmp %rax, %rax
mov $90, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0xbb15, %r15
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%r15)
xor $32626, %r9
lea addresses_D_ht+0x2695, %r15
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r15)
nop
nop
sub $6551, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x19e95, %r14
nop
and $2369, %rdx
movb (%r14), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 67}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
