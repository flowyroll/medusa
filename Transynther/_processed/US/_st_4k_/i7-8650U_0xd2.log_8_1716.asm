.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4ab7, %rsi
lea addresses_normal_ht+0x4a89, %rdi
and %rax, %rax
mov $49, %rcx
rep movsw
nop
nop
nop
nop
add $56348, %rbp
lea addresses_WT_ht+0x3a11, %rsi
lea addresses_normal_ht+0x72a9, %rdi
dec %rbx
mov $47, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0xb6e9, %rdi
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rdi)
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x1bebf, %rsi
lea addresses_UC_ht+0x1e9, %rdi
nop
nop
nop
sub $28209, %rdx
mov $84, %rcx
rep movsq
and %rax, %rax
lea addresses_WT_ht+0x1d0e9, %rbx
nop
nop
nop
nop
add $25211, %rax
movl $0x61626364, (%rbx)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x174c1, %rdi
nop
nop
nop
nop
nop
inc %rcx
movups (%rdi), %xmm1
vpextrq $1, %xmm1, %rbx
inc %rbp
lea addresses_WT_ht+0x3fe9, %rdx
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rdx)
nop
nop
add %rdx, %rdx
lea addresses_D_ht+0x3fd9, %rcx
add %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%rcx)
and %rcx, %rcx
lea addresses_normal_ht+0x613b, %rdx
nop
nop
nop
nop
dec %rdi
mov (%rdx), %ax
nop
nop
and $28430, %rdi
lea addresses_normal_ht+0x79b1, %rcx
nop
nop
nop
add %rsi, %rsi
mov (%rcx), %bx
nop
nop
nop
nop
and $37307, %rcx
lea addresses_A_ht+0x18429, %rax
nop
nop
nop
nop
nop
and $27126, %rcx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1a7a9, %rax
nop
nop
nop
and %rcx, %rcx
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xd029, %rdx
nop
nop
inc %rdi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rdx)
nop
nop
inc %rsi

// Store
lea addresses_D+0x190e9, %rsi
nop
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%rsi)
nop
nop
nop
add $43099, %r13

// Load
lea addresses_normal+0xe5e9, %rsi
nop
nop
nop
nop
xor $42282, %rdx
mov (%rsi), %rdi
nop
nop
nop
nop
nop
and $14533, %rdx

// Load
lea addresses_UC+0x1c9d9, %rdx
nop
nop
nop
nop
and %r15, %r15
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
add %rcx, %rcx

// Store
lea addresses_normal+0x5011, %rcx
nop
nop
and %r10, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_RW+0x40e9, %rsi
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%rsi)
nop
nop
nop
nop
xor $45877, %rsi

// Load
lea addresses_UC+0x42d9, %r10
nop
nop
nop
nop
xor $6478, %rdi
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
cmp $38759, %r13

// Faulty Load
lea addresses_US+0x70e9, %r15
nop
add $24121, %r13
movb (%r15), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'58': 8}
58 58 58 58 58 58 58 58
*/
