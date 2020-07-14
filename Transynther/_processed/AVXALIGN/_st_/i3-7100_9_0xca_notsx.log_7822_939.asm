.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13ed, %rbp
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rbp), %r10w
nop
nop
nop
nop
add $46991, %r15
lea addresses_WT_ht+0x266d, %rsi
lea addresses_WT_ht+0x170ed, %rdi
add $50732, %r13
mov $20, %rcx
rep movsw
add %r15, %r15
lea addresses_normal_ht+0x19685, %rdi
nop
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rdi)
nop
nop
inc %r13
lea addresses_A_ht+0x161ed, %rsi
nop
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
sub $47470, %rbp
lea addresses_normal_ht+0x57dd, %rsi
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%rsi)
nop
sub %r13, %r13
lea addresses_A_ht+0x1ed25, %rsi
lea addresses_D_ht+0x1788d, %rdi
nop
nop
nop
sub %r12, %r12
mov $103, %rcx
rep movsq
xor $46870, %r12
lea addresses_WC_ht+0x1a325, %rsi
lea addresses_UC_ht+0x73ed, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $84, %rcx
rep movsq
nop
nop
nop
sub $48364, %r13
lea addresses_WT_ht+0x1c5bd, %rsi
lea addresses_WT_ht+0x1d06d, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r10, %r10
mov $0, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_A_ht+0x1ded, %rbp
nop
cmp $32461, %rdi
movb (%rbp), %r15b
nop
nop
and %r15, %r15
lea addresses_normal_ht+0xa69d, %r15
nop
and $14980, %rdi
vmovups (%r15), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
sub $55708, %rsi
lea addresses_normal_ht+0xf7ed, %rsi
lea addresses_UC_ht+0x1bc2d, %rdi
nop
nop
nop
and %r10, %r10
mov $15, %rcx
rep movsl
cmp %rbp, %rbp
lea addresses_UC_ht+0x1d4ed, %rsi
lea addresses_WC_ht+0x74ed, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $0, %rcx
rep movsw
nop
dec %r13
lea addresses_normal_ht+0xd6ed, %r10
cmp $57565, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x6457, %rcx
nop
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rcx)
nop
nop
add $1968, %rcx
lea addresses_D_ht+0x142ed, %rsi
lea addresses_WC_ht+0x19ecf, %rdi
sub %r10, %r10
mov $91, %rcx
rep movsl
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0xb9ed, %rsi
lea addresses_A+0x3b8f, %rdi
nop
nop
nop
dec %r8
mov $60, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_WT+0x157ed, %rdx
nop
nop
nop
nop
nop
cmp $10072, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
inc %rcx

// Store
lea addresses_A+0x3bed, %rsi
nop
nop
nop
nop
nop
sub $35938, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
and $32244, %rsi

// Load
lea addresses_PSE+0x66c5, %rcx
nop
nop
nop
nop
lfence
mov (%rcx), %edx
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_WT+0xfe0f, %r8
nop
nop
nop
nop
cmp $23018, %r13
movw $0x5152, (%r8)
xor %rdx, %rdx

// REPMOV
mov $0xded, %rsi
lea addresses_US+0x1bf3b, %rdi
sub $47675, %r15
mov $78, %rcx
rep movsw
and $59746, %rdx

// Store
lea addresses_WT+0x1c657, %rdx
nop
nop
nop
nop
add $1512, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rdx)

// Exception!!!
mov (0), %r8
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x74ed, %r13
nop
nop
nop
nop
sub $52607, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r13)
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_normal+0xb9ed, %r14
add %r8, %r8
mov (%r14), %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_P', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': True, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'34': 7822}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
