.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x153ce, %rsi
lea addresses_WT_ht+0x12326, %rdi
nop
nop
nop
nop
inc %r10
mov $110, %rcx
rep movsl
nop
nop
nop
nop
nop
add $49396, %r9
lea addresses_D_ht+0x8726, %rbx
nop
nop
nop
nop
nop
and $11691, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rbx)
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x18926, %r10
cmp %r11, %r11
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1579a, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rsi)
nop
nop
add $37321, %r10
lea addresses_UC_ht+0x12526, %rdi
xor %rcx, %rcx
movw $0x6162, (%rdi)
nop
xor $22960, %rsi
lea addresses_D_ht+0xb966, %rsi
lea addresses_WT_ht+0x1dd06, %rdi
nop
nop
nop
cmp %r9, %r9
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $50063, %rbx
lea addresses_A_ht+0x5126, %rbx
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %rbx
vmovaps %ymm6, (%rbx)
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x15b76, %r10
nop
xor %r9, %r9
movw $0x6162, (%r10)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x13126, %r9
nop
xor %rdi, %rdi
movw $0x6162, (%r9)
xor $26819, %r10
lea addresses_normal_ht+0x8326, %r11
nop
nop
and %r9, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r11)
nop
xor $36016, %rbx
lea addresses_WC_ht+0x12f6b, %r10
nop
nop
nop
nop
nop
inc %r11
mov (%r10), %si
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0xcfc6, %rsi
nop
nop
cmp %rbx, %rbx
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
xor $21289, %r11
lea addresses_WT_ht+0x63c6, %rcx
nop
add %rbx, %rbx
mov (%rcx), %si
nop
add $28270, %rbx
lea addresses_normal_ht+0x4d26, %r9
clflush (%r9)
nop
inc %rcx
mov (%r9), %esi
nop
cmp $23129, %r10
lea addresses_UC_ht+0x1dd16, %rsi
lea addresses_normal_ht+0x1ce26, %rdi
nop
inc %r12
mov $36, %rcx
rep movsw
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Load
lea addresses_WT+0x10d26, %r13
clflush (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
movb (%r13), %bl
nop
and %rbx, %rbx

// Faulty Load
lea addresses_D+0x19126, %r13
clflush (%r13)
nop
nop
xor %rbx, %rbx
mov (%r13), %di
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
