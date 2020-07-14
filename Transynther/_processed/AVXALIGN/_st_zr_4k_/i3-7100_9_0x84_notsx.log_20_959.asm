.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6e80, %r11
nop
and $9973, %rdi
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
xor %rbp, %rbp
lea addresses_A_ht+0x8980, %rbp
nop
nop
nop
nop
add $26277, %r14
movw $0x6162, (%rbp)
nop
nop
nop
sub $61639, %rdi
lea addresses_D_ht+0xf040, %r10
nop
nop
xor $11971, %rax
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
sub %r10, %r10
lea addresses_UC_ht+0x9c0, %rsi
lea addresses_UC_ht+0xda80, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $114, %rcx
rep movsl
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x1c04, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
mov (%rsi), %edi
nop
nop
nop
nop
nop
sub $21996, %rdi
lea addresses_WT_ht+0x4e80, %rdi
nop
nop
nop
nop
cmp $49328, %rax
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
xor %r10, %r10
lea addresses_D_ht+0xecc0, %rbp
nop
nop
add $59718, %rcx
mov (%rbp), %si
and $8223, %r8
lea addresses_D_ht+0x13880, %rbp
nop
nop
nop
nop
nop
inc %r14
movb $0x61, (%rbp)
dec %rdi
lea addresses_normal_ht+0x98ac, %rcx
clflush (%rcx)
nop
nop
cmp %r8, %r8
mov (%rcx), %rbp
nop
nop
nop
cmp $26176, %rax
lea addresses_normal_ht+0x680, %rsi
lea addresses_A_ht+0x1c080, %rdi
xor %r14, %r14
mov $1, %rcx
rep movsw
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x3820, %rsi
lea addresses_A_ht+0xd3b7, %rdi
nop
nop
nop
xor %r14, %r14
mov $81, %rcx
rep movsl
nop
add $56831, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1c344, %rsi
lea addresses_WT+0xd510, %rdi
nop
nop
nop
nop
sub $4185, %r12
mov $13, %rcx
rep movsw
nop
nop
cmp %r12, %r12

// Store
mov $0x756bab0000000900, %r15
nop
nop
nop
nop
add $30208, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovaps %ymm5, (%r15)
nop
sub %rsi, %rsi

// Store
lea addresses_WT+0xb262, %rcx
nop
nop
add %r12, %r12
movl $0x51525354, (%rcx)

// Exception!!!
nop
nop
nop
mov (0), %r15
nop
nop
nop
and %r9, %r9

// Load
lea addresses_normal+0xbbf, %r15
nop
nop
nop
xor %rdi, %rdi
movups (%r15), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_RW+0xb680, %rsi
xor %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rsi)
inc %r15

// Store
lea addresses_normal+0x18680, %rdi
nop
nop
dec %r9
movw $0x5152, (%rdi)
sub %r10, %r10

// Faulty Load
mov $0x2088ad0000000680, %rdi
cmp %r12, %r12
mov (%rdi), %esi
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 7, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'00': 1, '52': 19}
52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52
*/
