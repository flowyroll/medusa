.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x5c8c, %r11
nop
nop
nop
nop
sub $28132, %r15
movb (%r11), %r14b
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x16354, %r14
nop
nop
and $23614, %r15
movb (%r14), %cl
sub %r14, %r14
lea addresses_UC_ht+0x1eb14, %rbx
nop
nop
nop
cmp %rsi, %rsi
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %r13
cmp $46926, %rbx
lea addresses_WC_ht+0xfd94, %r15
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%r15)
dec %r15
lea addresses_normal_ht+0x123c, %rsi
lea addresses_D_ht+0x1d7d4, %rdi
nop
nop
nop
sub $10933, %rbx
mov $91, %rcx
rep movsq
nop
nop
cmp $38196, %rcx
lea addresses_WC_ht+0x18d28, %rdi
nop
cmp %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x1c17f, %rsi
lea addresses_D_ht+0x13736, %rdi
nop
nop
nop
nop
mfence
mov $124, %rcx
rep movsl
add %rsi, %rsi
lea addresses_D_ht+0xa214, %rsi
lea addresses_WT_ht+0xa14, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $15, %rcx
rep movsq
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1d190, %r14
clflush (%r14)
nop
nop
cmp $28404, %r11
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rcx
nop
add %r14, %r14
lea addresses_UC_ht+0x1094, %rsi
lea addresses_D_ht+0x9c44, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $10584, %rbx
mov $27, %rcx
rep movsb
nop
nop
nop
add $47746, %r14
lea addresses_normal_ht+0x18134, %rcx
nop
xor $24269, %rdi
movb $0x61, (%rcx)
nop
nop
cmp %r13, %r13
lea addresses_WT_ht+0x214, %r15
nop
nop
nop
and $11241, %rbx
movb (%r15), %r13b
nop
add %rsi, %rsi
lea addresses_UC_ht+0x1a04, %rbx
clflush (%rbx)
sub %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %rbx
movntdq %xmm1, (%rbx)
and $14256, %r14
lea addresses_D_ht+0xaccc, %rsi
lea addresses_UC_ht+0xca24, %rdi
clflush (%rsi)
nop
nop
nop
sub $61389, %r13
mov $30, %rcx
rep movsl
sub $14838, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rsi

// Store
lea addresses_WC+0x19e14, %r13
nop
nop
and $4826, %rsi
mov $0x5152535455565758, %r15
movq %r15, (%r13)
nop
xor $55878, %r11

// Load
lea addresses_normal+0x1e9b4, %r14
nop
nop
and $27502, %rcx
mov (%r14), %ebp
nop
nop
nop
nop
nop
add $7021, %r11

// Faulty Load
lea addresses_A+0xc214, %rcx
nop
nop
nop
sub $16702, %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'00': 1, '35': 21828}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
