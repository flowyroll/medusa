.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x567c, %rdi
nop
and %rbx, %rbx
mov (%rdi), %dx
sub %rsi, %rsi
lea addresses_UC_ht+0xc61c, %r13
nop
nop
nop
and $33661, %rcx
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
cmp $49792, %rbp
lea addresses_normal_ht+0x1827c, %rcx
nop
nop
nop
nop
nop
and $53637, %rdi
movb (%rcx), %bl
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1b27c, %rsi
lea addresses_D_ht+0x138bc, %rdi
sub $32492, %r15
mov $107, %rcx
rep movsb
nop
nop
add $2899, %rcx
lea addresses_A_ht+0x667c, %rdi
nop
nop
xor $59493, %r15
mov (%rdi), %ebp
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x427c, %rsi
lea addresses_UC_ht+0x6a7c, %rdi
nop
and %r15, %r15
mov $91, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_normal_ht+0xe9f0, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %r13, %r13
movb (%rdx), %r15b
cmp %rbp, %rbp
lea addresses_D_ht+0x1667c, %rsi
add $41251, %rdi
movb $0x61, (%rsi)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x10e7c, %rcx
inc %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0xe2d4, %rdi
and %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
sub $29459, %rcx
lea addresses_WC_ht+0xe71c, %rbx
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rbx)
nop
nop
nop
and $64926, %rcx
lea addresses_WT_ht+0xad24, %rdx
nop
nop
nop
nop
and $25849, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
cmp $33466, %rdx
lea addresses_UC_ht+0x1067c, %r13
nop
nop
nop
nop
nop
xor $38106, %rcx
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
dec %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_WT+0x1afbc, %r8
sub $22167, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r8)
nop
sub %r15, %r15

// Load
lea addresses_PSE+0x1e360, %rdx
nop
nop
nop
cmp %rbx, %rbx
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_A+0xaeb4, %r10
nop
nop
and $36499, %rbx
movw $0x5152, (%r10)
nop
sub $56108, %rdi

// Store
mov $0x4805d10000000668, %rdi
and %r15, %r15
movl $0x51525354, (%rdi)
nop
cmp $59464, %rdx

// Load
lea addresses_RW+0x1a5a4, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and $56835, %rbx
mov (%r15), %r8
nop
nop
nop
nop
dec %r14

// Store
lea addresses_UC+0x1a67c, %rbx
nop
nop
nop
nop
add %rdx, %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
sub $56150, %r10

// Faulty Load
lea addresses_PSE+0xbe7c, %r10
sub %r14, %r14
movb (%r10), %bl
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 578}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
