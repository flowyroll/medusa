.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1eb8e, %rbx
nop
nop
nop
xor %r15, %r15
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r14
nop
nop
nop
nop
nop
add $32047, %r10
lea addresses_D_ht+0x3bc2, %rsi
lea addresses_normal_ht+0x15fe, %rdi
clflush (%rsi)
nop
and $29037, %r8
mov $60, %rcx
rep movsb
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0x45d2, %rcx
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rcx)
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x5348, %rsi
lea addresses_normal_ht+0x32c2, %rdi
dec %r8
mov $50, %rcx
rep movsl
nop
cmp %r8, %r8
lea addresses_UC_ht+0x6042, %r15
clflush (%r15)
cmp $16975, %rsi
movl $0x61626364, (%r15)
nop
nop
dec %r8
lea addresses_WC_ht+0x17c2, %rsi
lea addresses_normal_ht+0x19954, %rdi
nop
nop
nop
xor $29201, %r15
mov $120, %rcx
rep movsq
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0xa3c2, %rbx
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
inc %r15
lea addresses_WT_ht+0x16aa2, %rsi
lea addresses_UC_ht+0xf8c2, %rdi
clflush (%rsi)
nop
and $55686, %r10
mov $59, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xc7c2, %rsi
lea addresses_D_ht+0x107c2, %rdi
and %r14, %r14
mov $52, %rcx
rep movsw
dec %rsi
lea addresses_normal_ht+0x6fc2, %r10
nop
and $52952, %rcx
mov (%r10), %r8
nop
add %rbx, %rbx
lea addresses_WT_ht+0xdad2, %rcx
cmp %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
dec %r14
lea addresses_A_ht+0x12c42, %rcx
nop
nop
nop
nop
add $34990, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
cmp $50892, %r14
lea addresses_UC_ht+0x18be2, %rsi
lea addresses_normal_ht+0x1b9c2, %rdi
clflush (%rdi)
nop
nop
nop
xor $10216, %rbx
mov $61, %rcx
rep movsq
nop
sub $38337, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x1bab2, %rsi
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rsi)
inc %rsi

// Store
mov $0x33538a0000000fc2, %r15
nop
nop
cmp $22086, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%r15)
nop
xor %r10, %r10

// Store
lea addresses_WC+0xd302, %rsi
nop
inc %r14
movw $0x5152, (%rsi)
nop
nop
nop
sub $6639, %rsi

// Store
mov $0x2313c700000002a2, %r14
nop
nop
nop
nop
dec %r10
movb $0x51, (%r14)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_A+0xdb92, %rdx
nop
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rdx)
nop
nop
and $35768, %r15

// Faulty Load
lea addresses_RW+0xf3c2, %r14
nop
nop
nop
nop
nop
add %r12, %r12
movups (%r14), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'32': 54}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
