.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8155, %rsi
lea addresses_UC_ht+0x1cd55, %rdi
nop
nop
nop
xor $31352, %r8
mov $108, %rcx
rep movsw
add %rdi, %rdi
lea addresses_UC_ht+0x8055, %rcx
nop
inc %r10
movb $0x61, (%rcx)
nop
nop
nop
nop
add $44283, %r10
lea addresses_WC_ht+0x30a2, %rsi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%rsi)
nop
cmp %r10, %r10
lea addresses_normal_ht+0x18555, %rsi
lea addresses_D_ht+0x1ce55, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $122, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xe255, %rax
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rax)
nop
nop
dec %r10
lea addresses_WT_ht+0xf02d, %r8
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%r8)
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x18555, %r10
nop
inc %rcx
mov (%r10), %rdi
nop
nop
nop
xor $55272, %r8
lea addresses_A_ht+0xf795, %rsi
nop
nop
nop
sub $41556, %r15
movb (%rsi), %r8b
nop
add $38897, %r8
lea addresses_A_ht+0x12155, %r10
clflush (%r10)
xor %rdi, %rdi
mov (%r10), %r8d
nop
nop
nop
nop
add $7903, %rcx
lea addresses_D_ht+0xadb5, %rsi
clflush (%rsi)
nop
dec %rdi
mov (%rsi), %ax
xor %r10, %r10
lea addresses_normal_ht+0x1bd85, %rdi
nop
xor $57900, %rsi
movw $0x6162, (%rdi)
cmp %rdi, %rdi
lea addresses_WC_ht+0x127e5, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r10), %xmm2
vpextrq $1, %xmm2, %rdi
cmp $34188, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x7cbf, %r8
add %rsi, %rsi
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x10155, %rcx
nop
nop
and $8122, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
xor $27151, %r8

// Store
lea addresses_WC+0x6155, %rdx
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdx)
nop
and %rcx, %rcx

// Store
lea addresses_WC+0x10ded, %rdx
clflush (%rdx)
sub $4748, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
and $26850, %rdx

// Store
lea addresses_normal+0x17045, %r8
cmp %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r8)
inc %rsi

// REPMOV
lea addresses_WT+0x1f995, %rsi
lea addresses_WT+0x14b3, %rdi
nop
add $27695, %r8
mov $100, %rcx
rep movsw
nop
nop
nop
dec %rdi

// Load
lea addresses_UC+0x3155, %rdi
sub $51934, %rdx
mov (%rdi), %rsi
nop
nop
nop
nop
nop
and $9625, %rsi

// Store
lea addresses_UC+0xef09, %rsi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%rsi)
nop
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_UC+0x12d55, %r14
nop
nop
nop
nop
cmp %rax, %rax
vmovntdqa (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdx
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'00': 4942}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
