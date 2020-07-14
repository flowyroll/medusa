.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x715d, %r10
nop
nop
nop
nop
sub %rcx, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xa949, %rdx
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%rdx)
and %r15, %r15
lea addresses_A_ht+0x1bd49, %rcx
nop
nop
xor $24209, %r9
movb (%rcx), %r10b
nop
nop
nop
nop
sub $8976, %r15
lea addresses_WT_ht+0x1803d, %rdx
nop
nop
nop
cmp %r9, %r9
mov (%rdx), %ecx
nop
nop
nop
sub %r15, %r15
lea addresses_D_ht+0x1b3c9, %r15
nop
dec %rbp
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
nop
nop
nop
cmp $44126, %r15
lea addresses_WT_ht+0x15549, %rbp
nop
nop
nop
nop
add $40920, %r14
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %rdx
xor $12682, %r14
lea addresses_normal_ht+0x1b471, %rdx
nop
nop
nop
nop
nop
and %rcx, %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x1b569, %rbp
nop
nop
nop
nop
nop
sub $32345, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rbp)
nop
sub %r15, %r15
lea addresses_D_ht+0xd4f9, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $53829, %rdx
mov (%rbp), %rcx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x19049, %rsi
lea addresses_A_ht+0x1a9, %rdi
nop
nop
nop
sub %r15, %r15
mov $44, %rcx
rep movsq
nop
cmp %rbp, %rbp
lea addresses_WT_ht+0xccf1, %rbp
nop
nop
nop
nop
add $48070, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x10149, %r14
xor %r9, %r9
mov (%r14), %r15d
nop
nop
nop
nop
and $5389, %r10
lea addresses_WC_ht+0xc949, %rsi
lea addresses_WC_ht+0xf979, %rdi
and %rbp, %rbp
mov $111, %rcx
rep movsb
nop
nop
xor $51088, %r10
lea addresses_WC_ht+0x1a145, %rdx
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%rdx)
sub %rbp, %rbp
lea addresses_normal_ht+0x30f9, %r14
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
nop
nop
nop
nop
sub $26589, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdx

// Store
lea addresses_WC+0x189c9, %r14
clflush (%r14)
dec %r13
movl $0x51525354, (%r14)
add %rdx, %rdx

// Store
lea addresses_RW+0x19b49, %r12
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_PSE+0x6a49, %rdx
nop
nop
dec %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
inc %r13

// Faulty Load
lea addresses_A+0x1a149, %r13
nop
nop
nop
cmp %r12, %r12
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rdx
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'48': 2705, '00': 231}
48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 00 48 00 48 48 48 00 00 48 48 48 48 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 00 48 48 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48
*/
