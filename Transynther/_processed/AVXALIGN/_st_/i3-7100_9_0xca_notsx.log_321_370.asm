.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1a473, %rdx
and %rcx, %rcx
mov (%rdx), %r13d
sub $35783, %rdx
lea addresses_D_ht+0x8d33, %rsi
lea addresses_normal_ht+0x64b3, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $120, %rcx
rep movsq
sub %rcx, %rcx
lea addresses_D_ht+0xb6b3, %rdi
nop
nop
nop
nop
cmp $61418, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rdi)
cmp %rdi, %rdi
lea addresses_normal_ht+0x43b3, %r8
nop
lfence
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r8)
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x168b3, %rsi
lea addresses_WT_ht+0x1c4d3, %rdi
nop
nop
and $24160, %rdx
mov $96, %rcx
rep movsb
xor $62613, %rcx
lea addresses_UC_ht+0x8b93, %rdi
and $11990, %r14
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
sub $64497, %rdx
lea addresses_D_ht+0x19eb3, %rdx
inc %r13
movb (%rdx), %r14b
nop
xor $48570, %rdi
lea addresses_normal_ht+0x156b3, %r14
nop
cmp $34671, %r8
mov (%r14), %cx
nop
nop
nop
nop
xor $22544, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_normal+0x11513, %rsi
lea addresses_D+0xc0b3, %rdi
sub $5348, %r15
mov $18, %rcx
rep movsb
nop
and $9157, %rdi

// Store
lea addresses_WC+0x19333, %r10
clflush (%r10)
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
add %r10, %r10

// Store
mov $0x56edf600000000b3, %r15
cmp %rdi, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
cmp $58206, %rdx

// Load
lea addresses_A+0x165b3, %r12
clflush (%r12)
add $10022, %r10
mov (%r12), %cx
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_WC+0x18d3, %rdi
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rdi)
nop
nop
and $35404, %rsi

// Faulty Load
lea addresses_WT+0x116b3, %r15
inc %r12
mov (%r15), %ecx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'39': 321}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
