.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x121f, %rdx
clflush (%rdx)
nop
nop
nop
nop
sub $43741, %rbp
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
inc %r14
lea addresses_A_ht+0x537, %rsi
lea addresses_normal_ht+0x1f77, %rdi
nop
nop
nop
nop
nop
xor $24399, %r15
mov $16, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0xa137, %rbp
clflush (%rbp)
nop
cmp %rcx, %rcx
movl $0x61626364, (%rbp)
nop
cmp %r14, %r14
lea addresses_UC_ht+0x3cc9, %r15
clflush (%r15)
nop
nop
sub %r14, %r14
mov (%r15), %esi
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0x1dfb7, %rsi
lea addresses_WC_ht+0x1d2cb, %rdi
cmp $34723, %r10
mov $13, %rcx
rep movsb
and $56625, %r15
lea addresses_D_ht+0x1607b, %rcx
and %rsi, %rsi
movb (%rcx), %dl
inc %rdx
lea addresses_UC_ht+0x2737, %rbp
nop
nop
nop
nop
sub $7339, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
inc %rdx
lea addresses_D_ht+0x14737, %rsi
lea addresses_A_ht+0x91d7, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
dec %rbp
lea addresses_D_ht+0x9637, %rsi
lea addresses_WT_ht+0x1d737, %rdi
nop
nop
nop
cmp $11281, %r14
mov $58, %rcx
rep movsq
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x3677, %r10
nop
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%r10)
nop
nop
nop
nop
sub $889, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x4307, %rsi
lea addresses_A+0xf9f7, %rdi
sub %rdx, %rdx
mov $45, %rcx
rep movsb
nop
xor %rbp, %rbp

// Load
lea addresses_D+0x7f37, %rcx
nop
nop
nop
nop
sub %r8, %r8
mov (%rcx), %bp
nop
nop
nop
nop
xor $42063, %rcx

// Store
lea addresses_UC+0x1ad0d, %rcx
clflush (%rcx)
add $10621, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
add $51842, %r15

// Store
lea addresses_D+0x491f, %r8
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_D+0x14f37, %r8
nop
xor %rcx, %rcx
movl $0x51525354, (%r8)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0x13df7, %rcx
dec %r15
movw $0x5152, (%rcx)
nop
and $20274, %r8

// Store
lea addresses_RW+0x97b7, %rsi
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rsi)

// Exception!!!
nop
mov (0), %rsi
nop
inc %rcx

// Faulty Load
lea addresses_D+0x14f37, %r15
nop
cmp $1421, %r8
movb (%r15), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
