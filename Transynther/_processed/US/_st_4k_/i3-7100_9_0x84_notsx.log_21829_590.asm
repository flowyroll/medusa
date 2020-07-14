.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xfe6, %rbx
nop
nop
nop
nop
nop
inc %r10
movb $0x61, (%rbx)
nop
xor %rbx, %rbx
lea addresses_WT_ht+0xb5aa, %rsi
lea addresses_D_ht+0x1b126, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $35, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_normal_ht+0x6d26, %rsi
lea addresses_A_ht+0xdfa6, %rdi
nop
sub %rdx, %rdx
mov $36, %rcx
rep movsl
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x55e6, %rbx
clflush (%rbx)
nop
nop
sub $49323, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x15212, %rsi
lea addresses_WC_ht+0x1bb56, %rdi
nop
nop
nop
nop
nop
xor $57034, %r8
mov $35, %rcx
rep movsw
nop
dec %r12
lea addresses_UC_ht+0x68a6, %rsi
lea addresses_UC_ht+0x1eaec, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp $18685, %r8
mov $66, %rcx
rep movsb
nop
nop
nop
mfence
lea addresses_A_ht+0x11766, %rbx
nop
nop
nop
nop
nop
and $6624, %rdi
movb $0x61, (%rbx)
nop
nop
nop
and $41030, %rsi
lea addresses_A_ht+0x1112, %rbx
inc %r10
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
cmp %r12, %r12
lea addresses_D_ht+0x173a6, %r8
cmp $23598, %r12
movb $0x61, (%r8)
sub $14845, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x153a6, %r14
nop
sub $30152, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r14)
cmp $12841, %r8

// Load
lea addresses_PSE+0x7da6, %r14
nop
nop
nop
nop
cmp %rsi, %rsi
movb (%r14), %r8b

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WC+0x1132e, %r14
dec %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_WC+0x1c706, %rsi
nop
nop
nop
cmp %r13, %r13
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x133a6, %r14
nop
nop
nop
cmp $14772, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
cmp %r10, %r10

// Load
lea addresses_US+0x10905, %rcx
clflush (%rcx)
nop
nop
nop
xor $52821, %rdx
mov (%rcx), %r13w
nop
nop
inc %r13

// Load
lea addresses_US+0x1fba6, %rcx
nop
nop
nop
nop
sub %rdx, %rdx
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
cmp $59089, %r14

// Store
lea addresses_A+0x17ba6, %rdx
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movaps %xmm7, (%rdx)
nop
nop
nop
nop
and %r14, %r14

// Store
mov $0x4cfa0100000003a6, %r8
nop
and $48078, %rsi
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
xor $32202, %r14

// Faulty Load
lea addresses_US+0x1e3a6, %rdx
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 11, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
