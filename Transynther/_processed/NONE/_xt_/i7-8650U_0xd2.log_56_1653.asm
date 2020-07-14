.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19cde, %rdi
nop
nop
nop
nop
and %rax, %rax
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %r10
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x20a2, %rsi
lea addresses_D_ht+0x14bbc, %rdi
nop
nop
dec %r15
mov $42, %rcx
rep movsw
nop
nop
nop
cmp $64525, %rax
lea addresses_normal_ht+0xa9da, %r10
nop
xor $9590, %rcx
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x1caa2, %rcx
nop
nop
nop
nop
add $60549, %rax
movb (%rcx), %r15b
nop
nop
inc %rdi
lea addresses_A_ht+0x2c12, %rdi
mfence
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
xor $15633, %rsi
lea addresses_D_ht+0x1b6a2, %rax
nop
nop
sub $34385, %r15
mov (%rax), %si
nop
nop
nop
nop
nop
sub $11606, %r10
lea addresses_WC_ht+0x1e236, %r12
nop
nop
nop
nop
cmp %r15, %r15
mov (%r12), %rax
cmp %rdi, %rdi
lea addresses_normal_ht+0x145b1, %rax
clflush (%rax)
nop
xor $32784, %r15
movb $0x61, (%rax)
nop
nop
xor $44550, %rax
lea addresses_UC_ht+0x13a2, %rsi
lea addresses_WC_ht+0x7342, %rdi
nop
inc %r15
mov $32, %rcx
rep movsb
nop
dec %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rdi
push %rdx

// Store
lea addresses_PSE+0x199ce, %r10
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r10)
nop
nop
nop
nop
nop
add $24133, %rdi

// Store
lea addresses_UC+0x6262, %rdi
dec %r9
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
xor $15417, %r9

// Store
lea addresses_PSE+0x1dea2, %rdx
clflush (%rdx)
nop
dec %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
and %r14, %r14

// Store
lea addresses_normal+0x9ea2, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%r10)
nop
nop
dec %rbp

// Store
mov $0xaa2, %rdx
nop
nop
nop
and $60360, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%rdx)
xor %r9, %r9

// Store
lea addresses_D+0x13742, %rdx
nop
dec %r14
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
xor $48256, %r10

// Faulty Load
lea addresses_normal+0x1d6a2, %r10
nop
nop
nop
nop
nop
sub %r15, %r15
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'34': 56}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
