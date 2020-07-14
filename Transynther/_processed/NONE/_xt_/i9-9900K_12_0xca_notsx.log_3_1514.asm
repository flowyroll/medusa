.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rsi
lea addresses_normal_ht+0x742d, %rsi
nop
add $38924, %r8
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
add %r15, %r15
lea addresses_WC_ht+0x1bb57, %rbp
nop
nop
add $31696, %r12
mov $0x6162636465666768, %r15
movq %r15, (%rbp)
dec %r12
lea addresses_UC_ht+0x1d857, %rsi
nop
xor $26660, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x25c1, %r8
nop
nop
nop
xor %r12, %r12
mov (%r8), %r10w
nop
nop
dec %rbp
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x12947, %rbp
nop
sub $29886, %r8
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_normal+0x19e57, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movaps %xmm7, (%r13)
nop
nop
sub $57104, %rbp

// Store
lea addresses_PSE+0x5717, %r13
nop
nop
nop
nop
nop
cmp $35507, %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
nop
xor $56302, %rdi

// Load
lea addresses_PSE+0x1e257, %rcx
cmp %rdi, %rdi
mov (%rcx), %r10w
nop
nop
and %rbp, %rbp

// Store
lea addresses_UC+0x1f2b7, %r13
clflush (%r13)
dec %rcx
movw $0x5152, (%r13)
nop
nop
nop
add $9455, %r10

// Faulty Load
lea addresses_RW+0x1a57, %r13
sub %rcx, %rcx
mov (%r13), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'32': 3}
32 32 32
*/
