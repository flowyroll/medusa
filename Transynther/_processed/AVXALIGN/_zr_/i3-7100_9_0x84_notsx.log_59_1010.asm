.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x87eb, %rsi
lea addresses_UC_ht+0x4c2a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
xor %r14, %r14
mov $125, %rcx
rep movsb
nop
nop
add %r9, %r9
lea addresses_A_ht+0xc97, %rdx
nop
nop
nop
nop
xor %r11, %r11
mov (%rdx), %r14d
nop
nop
add $33803, %rdx
lea addresses_WT_ht+0x2d70, %rsi
lea addresses_normal_ht+0x7427, %rdi
cmp %rax, %rax
mov $31, %rcx
rep movsl
inc %rdi
lea addresses_normal_ht+0x14e7f, %rdi
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
cmp $10293, %r14
lea addresses_UC_ht+0x12927, %rsi
nop
nop
nop
nop
inc %r14
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor $34160, %r9
lea addresses_WC_ht+0x50ef, %r14
nop
inc %rax
mov (%r14), %r9
nop
sub $18717, %r9
lea addresses_WT_ht+0xd49b, %rsi
lea addresses_D_ht+0x7357, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $98, %rcx
rep movsw
add %rcx, %rcx
lea addresses_normal_ht+0x13e27, %rsi
and $250, %rcx
mov (%rsi), %rdx
nop
nop
and $35386, %rcx
lea addresses_A_ht+0x10e27, %rsi
nop
nop
nop
nop
inc %r9
movb (%rsi), %r11b
nop
nop
nop
add $15739, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_D+0x1a557, %rbx
and $22993, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rbx)
nop
and %rbx, %rbx

// Store
lea addresses_A+0x1ed87, %r13
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r13
movntdq %xmm5, (%r13)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
mov $0xdef, %r11
nop
nop
sub $25997, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovntdq %ymm5, (%r11)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r15
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0x16227, %r10
cmp %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_A+0x1e27, %r11
clflush (%r11)
nop
nop
dec %r10
movb (%r11), %r13b
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 59}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
