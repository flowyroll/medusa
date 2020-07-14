.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1e1fc, %rdi
nop
nop
nop
nop
nop
add $4749, %rax
mov (%rdi), %r13w
nop
and %rbx, %rbx
lea addresses_UC_ht+0xf54c, %rcx
nop
nop
nop
nop
nop
and $16704, %r13
mov (%rcx), %r8
nop
nop
xor $23763, %rdi
lea addresses_WT_ht+0x148cc, %rcx
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
cmp $36185, %r13
lea addresses_D_ht+0x94bc, %rsi
lea addresses_A_ht+0x1854c, %rdi
nop
dec %rdx
mov $99, %rcx
rep movsb
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x17d4c, %rsi
lea addresses_D_ht+0x388c, %rdi
nop
cmp %rax, %rax
mov $23, %rcx
rep movsb
nop
and $27024, %rcx
lea addresses_D_ht+0x1d2c, %rbx
nop
nop
dec %rsi
mov (%rbx), %r8d
nop
nop
and %rax, %rax
lea addresses_WT_ht+0x45fc, %r8
nop
add $22998, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x166ac, %r8
nop
nop
nop
nop
inc %rcx
movb (%r8), %dl
lfence
lea addresses_A_ht+0x1894c, %rsi
lea addresses_WT_ht+0x1538b, %rdi
inc %r13
mov $22, %rcx
rep movsq
nop
nop
nop
nop
nop
add $42689, %rsi
lea addresses_UC_ht+0x1a4dc, %rsi
nop
nop
nop
cmp $7543, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x904c, %rsi
lea addresses_normal_ht+0x20cc, %rdi
nop
nop
nop
sub %r8, %r8
mov $96, %rcx
rep movsq
nop
sub %rax, %rax
lea addresses_normal_ht+0x1d4c, %r8
nop
nop
nop
nop
nop
xor $59482, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rbp
push %rbx
push %rdx

// Load
lea addresses_D+0x7890, %rdx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov (%rdx), %rax
nop
nop
nop
nop
nop
add $20265, %r8

// Store
lea addresses_RW+0x1554c, %rdx
xor $21368, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_D+0x1d98c, %rax
clflush (%rax)
nop
nop
nop
and %rbp, %rbp
movl $0x51525354, (%rax)
dec %r8

// Store
lea addresses_US+0x2f4c, %r12
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x3e4c, %r12
nop
nop
nop
nop
add $64265, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
xor $2950, %r10

// Faulty Load
mov $0x2aadc7000000014c, %r12
nop
nop
nop
inc %rbx
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 732, '45': 21095, '00': 1, 'c3': 1}
46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
