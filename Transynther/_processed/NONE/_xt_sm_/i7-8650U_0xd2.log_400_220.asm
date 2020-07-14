.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x612b, %rsi
lea addresses_A_ht+0x292d, %rdi
add $25468, %r12
mov $124, %rcx
rep movsl
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xef0d, %r10
nop
nop
nop
nop
nop
lfence
movups (%r10), %xmm4
vpextrq $0, %xmm4, %rdi
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1b165, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x8a4d, %rdi
nop
nop
xor $6318, %r12
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r8
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1263d, %r10
sub $13045, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
and $0xffffffffffffffc0, %r10
movaps %xmm2, (%r10)
nop
cmp $43047, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi

// Store
lea addresses_PSE+0xd14d, %r9
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r9)
nop
nop
and $35275, %rcx

// Store
lea addresses_PSE+0xd14d, %rdi
nop
nop
nop
nop
nop
cmp $52773, %r8
movl $0x51525354, (%rdi)
nop
nop
nop
and $7226, %rcx

// Store
lea addresses_D+0x109fd, %r15
nop
cmp %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
xor $927, %r14

// Store
lea addresses_D+0x1b34d, %r14
xor $39826, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r14)
and %r10, %r10

// Load
lea addresses_normal+0x1bd4d, %r15
nop
nop
nop
cmp $40472, %r8
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
and $28099, %r15

// Store
lea addresses_PSE+0xd14d, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%r10)
nop
cmp $28418, %r15

// Faulty Load
lea addresses_PSE+0xd14d, %r15
nop
nop
nop
and %r10, %r10
mov (%r15), %r9d
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': True}}
{'58': 400}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
