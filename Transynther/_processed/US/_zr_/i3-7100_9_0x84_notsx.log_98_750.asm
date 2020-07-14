.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5958, %r10
nop
nop
nop
nop
add $20438, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
inc %r9
lea addresses_D_ht+0x12f58, %r10
nop
nop
nop
dec %r15
mov (%r10), %r13d
xor $40865, %r10
lea addresses_WC_ht+0x3ddc, %r15
nop
and $53448, %r13
mov (%r15), %r9d
nop
nop
and $41895, %r9
lea addresses_D_ht+0x12a30, %r15
nop
nop
nop
sub $30572, %rax
movb (%r15), %r10b
cmp %rcx, %rcx
lea addresses_UC_ht+0x8918, %rsi
lea addresses_D_ht+0x4958, %rdi
clflush (%rdi)
nop
add $43374, %r10
mov $83, %rcx
rep movsq
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x7b8, %rsi
lea addresses_normal_ht+0xa758, %rdi
nop
nop
cmp $20197, %r15
mov $112, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x164d8, %r15
clflush (%r15)
nop
nop
nop
xor %r10, %r10
mov (%r15), %di
nop
nop
nop
cmp $5799, %rsi
lea addresses_D_ht+0x14458, %r8
nop
cmp $39036, %r13
mov (%r8), %ax
nop
nop
cmp $63297, %r9
lea addresses_WT_ht+0x1ec00, %rax
xor $12322, %rcx
mov (%rax), %r9d
cmp %rax, %rax
lea addresses_UC_ht+0x17d70, %r8
and %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r8)
nop
xor $43502, %rax
lea addresses_A_ht+0x145a8, %r10
nop
nop
nop
nop
xor $7616, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r10)
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x14f0e, %rdi
nop
nop
nop
nop
nop
add $60991, %r13
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
nop
nop
nop
cmp $23946, %r8
lea addresses_D_ht+0x18058, %rsi
lea addresses_WC_ht+0x12278, %rdi
nop
nop
nop
nop
add $20211, %r15
mov $11, %rcx
rep movsb
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x19c82, %rsi
lea addresses_UC_ht+0x1c758, %rdi
nop
nop
nop
dec %r15
mov $115, %rcx
rep movsl
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x16358, %r13
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%r13)
nop
nop
nop
nop
add $20770, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x146bc, %rbx
nop
nop
nop
inc %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm2
movaps %xmm2, (%rbx)
nop
sub %r10, %r10

// Store
lea addresses_UC+0xd368, %rbp
sub $10134, %r9
movw $0x5152, (%rbp)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_US+0x1b4b0, %rbx
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rbx)
xor $9706, %rax

// Store
mov $0x5a60910000000d58, %rbp
nop
nop
nop
nop
inc %rcx
movb $0x51, (%rbp)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_WC+0x10b58, %rsi
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0x8758, %rsi
nop
nop
nop
add $62179, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 98}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
