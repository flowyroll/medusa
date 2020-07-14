.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1a00f, %r8
clflush (%r8)
nop
nop
sub $20996, %rdx
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
cmp $27193, %rdi
lea addresses_WT_ht+0x13e0e, %r13
nop
nop
nop
and $22500, %rbx
movb $0x61, (%r13)
and $65333, %rdx
lea addresses_WT_ht+0xe9f2, %rdx
nop
sub $56700, %rbx
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
xor $51093, %rbx
lea addresses_D_ht+0x16522, %rbp
nop
sub %rdi, %rdi
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rdx
nop
inc %rdx
lea addresses_WC_ht+0x8ab2, %rsi
lea addresses_normal_ht+0x1465a, %rdi
nop
nop
nop
and $19448, %rbp
mov $6, %rcx
rep movsb
nop
nop
nop
nop
nop
add $44406, %rcx
lea addresses_D_ht+0x8b9a, %rbx
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbx)
nop
dec %rdi
lea addresses_normal_ht+0x12d4e, %rsi
lea addresses_normal_ht+0x25f2, %rdi
nop
and %rbx, %rbx
mov $34, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xc4c2, %rbx
and %r13, %r13
movb (%rbx), %cl
nop
sub %rbp, %rbp
lea addresses_A_ht+0xfff2, %rsi
lea addresses_WT_ht+0xddf2, %rdi
nop
nop
nop
add %rbp, %rbp
mov $107, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_WC_ht+0xbdf2, %rbx
nop
xor %rdi, %rdi
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rbp
nop
and %r13, %r13
lea addresses_UC_ht+0x1aea6, %rdi
nop
nop
add %rbp, %rbp
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r13
nop
xor $23243, %r8
lea addresses_WC_ht+0x15b2, %rsi
lea addresses_WC_ht+0x1c3f2, %rdi
nop
nop
nop
nop
nop
xor $60539, %r8
mov $18, %rcx
rep movsb
nop
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x4bf2, %rsi
lea addresses_A_ht+0x1a572, %rdi
nop
nop
nop
nop
add $9979, %rbp
mov $119, %rcx
rep movsw
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x16a72, %r8
nop
nop
nop
dec %rdi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1b5f2, %r8
xor $8226, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Load
mov $0x58c74100000002ed, %rdi
cmp $62296, %r13
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_WT+0x1c1f2, %r8
nop
nop
nop
nop
add $61055, %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
add %r8, %r8

// Store
mov $0x9da1e0000000eba, %rcx
and %rbx, %rbx
movb $0x51, (%rcx)
cmp %r10, %r10

// Store
lea addresses_WC+0x112d2, %r13
nop
nop
add $27938, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r13)

// Exception!!!
mov (0), %r10
nop
nop
nop
and $56195, %rdi

// Store
lea addresses_US+0x8eb2, %r8
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r8)
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x5f2, %rdi
nop
nop
nop
nop
nop
and $65246, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
add $47286, %rbx

// Faulty Load
lea addresses_A+0x5f2, %r10
clflush (%r10)
nop
add %r13, %r13
mov (%r10), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': True, 'NT': False}}
{'58': 345}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
