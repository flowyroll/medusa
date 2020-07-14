.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19b9e, %r12
nop
and $60525, %r13
movb $0x61, (%r12)
nop
cmp $947, %rdx
lea addresses_A_ht+0x1d7d5, %r10
nop
nop
nop
nop
add $43296, %rcx
mov (%r10), %rdx
nop
nop
nop
inc %r10
lea addresses_WC_ht+0x1c20e, %rcx
nop
xor %r9, %r9
movl $0x61626364, (%rcx)
nop
and %r10, %r10
lea addresses_D_ht+0x1ec0e, %r13
nop
nop
add $45330, %rdx
movl $0x61626364, (%r13)
sub %r13, %r13
lea addresses_WT_ht+0xf80e, %rsi
lea addresses_WC_ht+0x544e, %rdi
nop
nop
nop
and %rdx, %rdx
mov $58, %rcx
rep movsq
add %rsi, %rsi
lea addresses_D_ht+0xfae, %rdx
nop
xor $64272, %rcx
movw $0x6162, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xdb0e, %rsi
lea addresses_UC_ht+0x1e63e, %rdi
nop
nop
cmp %r13, %r13
mov $106, %rcx
rep movsq
inc %r14
lea addresses_D_ht+0x117e2, %r13
nop
nop
cmp $40497, %r12
mov (%r13), %rdi
nop
nop
nop
cmp $55358, %rsi
lea addresses_WT_ht+0x1526e, %rsi
lea addresses_A_ht+0x5dce, %rdi
nop
nop
inc %r10
mov $46, %rcx
rep movsl
nop
nop
nop
nop
xor $40717, %rsi
lea addresses_A_ht+0xf68e, %r14
nop
nop
nop
nop
add %r10, %r10
movb $0x61, (%r14)
nop
nop
nop
nop
nop
and $21739, %rdi
lea addresses_UC_ht+0x1d3ae, %r13
nop
inc %r10
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r12
nop
nop
nop
nop
and $4509, %rcx
lea addresses_D_ht+0x19c0e, %rdi
nop
and %rsi, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
cmp $34628, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_WC+0x494e, %r8
clflush (%r8)
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rdi
movq %rdi, (%r8)
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_D+0xa00e, %rdi
nop
nop
nop
and $63059, %r12
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub $3008, %r15

// Faulty Load
lea addresses_WC+0x1000e, %r12
clflush (%r12)
nop
nop
nop
nop
sub %r8, %r8
mov (%r12), %ebp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'38': 21829}
38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38 38
*/
