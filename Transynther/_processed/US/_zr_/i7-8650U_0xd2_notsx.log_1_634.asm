.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x18d10, %rdx
xor $58104, %r14
movb $0x61, (%rdx)
nop
nop
nop
nop
add $28279, %rcx
lea addresses_UC_ht+0x11808, %r9
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x14e8, %rsi
lea addresses_normal_ht+0xa910, %rdi
and %r10, %r10
mov $4, %rcx
rep movsl
nop
nop
dec %r9
lea addresses_A_ht+0x1aa10, %r14
nop
nop
nop
nop
nop
cmp $63130, %r10
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
nop
xor $36624, %rsi
lea addresses_D_ht+0xf110, %rbp
clflush (%rbp)
dec %rdi
movw $0x6162, (%rbp)
nop
nop
add $24863, %rcx
lea addresses_A_ht+0x16720, %rsi
lea addresses_D_ht+0x16d10, %rdi
sub %rdx, %rdx
mov $50, %rcx
rep movsb
xor $11186, %rdx
lea addresses_A_ht+0x1a04e, %rsi
lea addresses_WC_ht+0x104ac, %rdi
nop
dec %rdx
mov $38, %rcx
rep movsb
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1ea4e, %r14
nop
nop
nop
and $65247, %rcx
mov $0x6162636465666768, %r9
movq %r9, (%r14)
nop
add $13712, %r10
lea addresses_UC_ht+0x6510, %rsi
lea addresses_WT_ht+0x7910, %rdi
clflush (%rdi)
nop
nop
nop
sub %rbp, %rbp
mov $1, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x13910, %rsi
lea addresses_WT_ht+0x13110, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $50, %rcx
rep movsl
nop
dec %r9
lea addresses_A_ht+0x1749c, %r10
nop
nop
nop
cmp $33009, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r10)
nop
nop
add $7992, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x13710, %rsi
lea addresses_UC+0x1fe40, %rdi
inc %r13
mov $32, %rcx
rep movsl
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_US+0xf259, %rsi
nop
nop
nop
nop
sub $3069, %rcx
movb (%rsi), %r10b
nop
nop
nop
nop
nop
sub $47263, %rcx

// Load
lea addresses_US+0x1f650, %rcx
nop
nop
and $29531, %r10
vmovups (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
xor %r10, %r10

// Store
lea addresses_normal+0x510, %rdx
nop
nop
nop
nop
and $46675, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x6f50, %rdx
nop
nop
nop
nop
cmp $18383, %r13
movw $0x5152, (%rdx)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_PSE+0x2510, %r13
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovntdq %ymm7, (%r13)
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_US+0xc910, %rdi
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
