.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xbed1, %r13
clflush (%r13)
nop
nop
add $63276, %r8
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
xor $51805, %rbx
lea addresses_normal_ht+0x64c1, %r9
nop
nop
nop
nop
and $24397, %r10
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
nop
nop
nop
nop
add $1535, %r9
lea addresses_UC_ht+0x38c1, %r9
nop
nop
nop
nop
add $28926, %rbx
mov (%r9), %r13d
nop
nop
nop
nop
nop
sub $13865, %rbx
lea addresses_UC_ht+0xcfb7, %r9
nop
nop
nop
nop
nop
and $8319, %r8
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x4ec1, %r9
nop
nop
cmp $5111, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r9)
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x1c1c1, %r8
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r8)
nop
nop
cmp %r8, %r8
lea addresses_WT_ht+0xbeb7, %rsi
lea addresses_A_ht+0x14c1, %rdi
nop
nop
nop
sub $35853, %r15
mov $57, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0xacc1, %rsi
lea addresses_A_ht+0x196c1, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $26, %rcx
rep movsb
xor %r15, %r15
lea addresses_normal_ht+0x8f41, %r13
clflush (%r13)
nop
nop
nop
nop
nop
dec %r9
movb (%r13), %r8b
nop
nop
nop
nop
nop
cmp $20609, %rsi
lea addresses_D_ht+0x178c1, %rsi
lea addresses_normal_ht+0x7491, %rdi
nop
nop
nop
nop
nop
xor %r15, %r15
mov $9, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xf301, %rsi
lea addresses_normal_ht+0xbb31, %rdi
clflush (%rsi)
nop
nop
nop
mfence
mov $36, %rcx
rep movsq
nop
nop
nop
nop
and $6246, %r10
lea addresses_D_ht+0x144c1, %rsi
lea addresses_WC_ht+0x29f9, %rdi
nop
and $9218, %r9
mov $119, %rcx
rep movsq
nop
nop
nop
nop
xor $29016, %rcx
lea addresses_WC_ht+0x1bf3a, %r9
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%r9)
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_RW+0xb8c1, %rbp
nop
add $31054, %rbx
movb $0x51, (%rbp)
nop
nop
nop
nop
xor $8730, %rdx

// Load
lea addresses_A+0x5041, %r15
nop
nop
xor $23493, %r10
mov (%r15), %dx
nop
nop
cmp $54873, %r10

// Store
mov $0x8c1, %rbp
dec %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
sub $46261, %rsi

// Store
lea addresses_D+0x157d1, %rdx
nop
add %rbp, %rbp
movb $0x51, (%rdx)
nop
nop
inc %r10

// Store
lea addresses_A+0x138c1, %rbx
nop
nop
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rbx)
sub $18799, %rsi

// Store
lea addresses_D+0x34c1, %r13
nop
nop
nop
xor $51313, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r13)
nop
nop
add $3752, %rdx

// Faulty Load
lea addresses_D+0x34c1, %r15
inc %rbp
mov (%r15), %rsi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
