.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x6fe0, %rbx
nop
nop
nop
nop
and $37282, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
nop
cmp $25860, %rdx
lea addresses_A_ht+0x3360, %rbx
nop
nop
add $42250, %rcx
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x9770, %rdx
xor %r14, %r14
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
inc %rbx
lea addresses_A_ht+0x1ce0, %rsi
lea addresses_D_ht+0xcf60, %rdi
clflush (%rsi)
nop
nop
nop
nop
and $8543, %rdx
mov $93, %rcx
rep movsw
cmp $9860, %rcx
lea addresses_A_ht+0xa678, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x61, (%r10)
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x14b60, %r10
nop
nop
add %rbx, %rbx
movb $0x61, (%r10)
inc %r14
lea addresses_A_ht+0xdb60, %r10
sub %r13, %r13
movl $0x61626364, (%r10)
add $57161, %rbx
lea addresses_UC_ht+0x1ad20, %rsi
lea addresses_WT_ht+0x19ddc, %rdi
nop
nop
nop
and $53203, %r10
mov $6, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x9f60, %rsi
lea addresses_UC_ht+0xe160, %rdi
nop
cmp $36302, %r10
mov $49, %rcx
rep movsw
nop
nop
nop
nop
add $21643, %rsi
lea addresses_WC_ht+0xc33c, %rdi
nop
nop
nop
nop
sub $4872, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
inc %rsi
lea addresses_WC_ht+0x15760, %rsi
nop
nop
nop
cmp $31502, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
nop
xor $39302, %rdx
lea addresses_A_ht+0xf960, %r14
clflush (%r14)
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r14)
nop
nop
nop
nop
sub $4321, %rcx
lea addresses_A_ht+0x14360, %rsi
lea addresses_A_ht+0x1dde0, %rdi
nop
nop
nop
inc %r13
mov $44, %rcx
rep movsq
nop
nop
nop
and $57614, %r13
lea addresses_A_ht+0x16e88, %r13
nop
nop
nop
add $61232, %rcx
movw $0x6162, (%r13)
nop
add %rbx, %rbx
lea addresses_UC_ht+0x18798, %rcx
nop
nop
cmp $52215, %rbx
mov (%rcx), %dx
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x15b60, %r10
nop
dec %rcx
movb $0x51, (%r10)
nop
and %rbp, %rbp

// Store
lea addresses_D+0x16f60, %r14
clflush (%r14)
nop
nop
nop
dec %r8
movw $0x5152, (%r14)
xor $18895, %r15

// Store
lea addresses_normal+0x16360, %r10
nop
nop
nop
nop
nop
xor $13785, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
and $38476, %rax

// Load
lea addresses_PSE+0x5f60, %r15
and %rcx, %rcx
mov (%r15), %bp
nop
and $6404, %rbp

// Store
lea addresses_D+0x12f60, %rbp
nop
nop
nop
xor $35048, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rbp)
nop
add $16463, %r14

// Store
lea addresses_WT+0x8793, %r14
clflush (%r14)
nop
nop
nop
nop
sub $56688, %r8
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
dec %r15

// Load
lea addresses_WC+0x3e0, %r14
xor $23609, %rax
mov (%r14), %cx
nop
nop
add %r10, %r10

// REPMOV
lea addresses_D+0x1f0ae, %rsi
lea addresses_UC+0x9160, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %rax, %rax
mov $30, %rcx
rep movsb
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x2d60, %r15
nop
nop
add %r10, %r10
movb $0x51, (%r15)
nop
nop
nop
add %r15, %r15

// REPMOV
lea addresses_RW+0x164e0, %rsi
lea addresses_PSE+0x4660, %rdi
nop
sub %r10, %r10
mov $103, %rcx
rep movsl
nop
cmp %rdi, %rdi

// Store
lea addresses_WC+0x1e040, %rcx
sub $37889, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rcx)
nop
nop
mfence

// Load
lea addresses_normal+0x25ec, %r8
inc %rbp
movb (%r8), %r10b
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_normal+0x15b60, %r15
nop
nop
nop
nop
nop
xor $49105, %r14
movb (%r15), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'51': 5063}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
