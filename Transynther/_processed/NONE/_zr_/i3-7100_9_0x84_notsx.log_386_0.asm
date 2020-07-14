.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x14ae6, %rsi
nop
nop
nop
nop
nop
mfence
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x11de6, %rsi
lea addresses_normal_ht+0x2c96, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $10, %rcx
rep movsl
cmp $8033, %rcx
lea addresses_WT_ht+0x134e6, %rsi
lea addresses_WT_ht+0x21c6, %rdi
nop
nop
cmp $16059, %rax
mov $42, %rcx
rep movsw
xor $5923, %r13
lea addresses_WC_ht+0xf9a6, %r13
nop
sub $10289, %r12
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rax
nop
nop
nop
nop
sub $48771, %r9
lea addresses_normal_ht+0x26e6, %rsi
nop
dec %rcx
movw $0x6162, (%rsi)
add $2037, %rsi
lea addresses_WC_ht+0x1ba3e, %rsi
lea addresses_A_ht+0x1d466, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r13
mov $77, %rcx
rep movsb
nop
and $1714, %r12
lea addresses_normal_ht+0x10238, %r13
nop
cmp %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x1292e, %r12
nop
and $817, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%r12)
nop
nop
nop
and $42738, %r9
lea addresses_D_ht+0x1cd4a, %r13
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r13), %esi
nop
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x96a6, %r12
nop
nop
nop
xor $47559, %r13
movl $0x61626364, (%r12)
nop
nop
xor $49402, %r13
lea addresses_WC_ht+0x1ade6, %rdx
nop
inc %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm3
movups %xmm3, (%rdx)
nop
cmp $97, %rdi
lea addresses_A_ht+0x5062, %r9
nop
nop
nop
nop
nop
cmp $8804, %rdi
mov (%r9), %ecx
nop
nop
nop
nop
and $63294, %rdi
lea addresses_WC_ht+0x10be6, %rsi
nop
nop
nop
nop
and %rdx, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
nop
cmp $16516, %r13
lea addresses_WT_ht+0x1e92e, %r13
clflush (%r13)
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
dec %r9
lea addresses_D_ht+0x119e6, %rdi
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%rdi)
inc %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x110e6, %rdi
nop
nop
and $58160, %rax
mov (%rdi), %r9w
nop
dec %r13

// Store
mov $0x9e6, %r12
nop
nop
nop
nop
nop
sub $37740, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movntdq %xmm4, (%r12)
nop
nop
nop
add $42980, %r12

// Faulty Load
lea addresses_A+0x12be6, %rdi
nop
nop
nop
add $54746, %rdx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 386}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
