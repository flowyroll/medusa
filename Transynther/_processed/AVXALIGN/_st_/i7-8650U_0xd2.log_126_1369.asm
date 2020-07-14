.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18e3d, %r12
nop
nop
nop
nop
xor %r13, %r13
movl $0x61626364, (%r12)
nop
add %r12, %r12
lea addresses_D_ht+0x2afd, %rbx
nop
nop
nop
xor %r13, %r13
movb $0x61, (%rbx)
nop
xor %rax, %rax
lea addresses_A_ht+0x7a9d, %rsi
nop
nop
nop
dec %rbp
movl $0x61626364, (%rsi)
nop
cmp $8890, %r12
lea addresses_UC_ht+0x102dd, %rsi
lea addresses_D_ht+0x44dd, %rdi
nop
cmp $13008, %rbx
mov $45, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_UC_ht+0x11d9d, %r12
nop
nop
xor %rbp, %rbp
mov (%r12), %cx
nop
nop
nop
nop
nop
sub $60077, %rdi
lea addresses_UC_ht+0xb1d1, %rax
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rax)
nop
nop
xor $14626, %r12
lea addresses_normal_ht+0x1a9bd, %rsi
lea addresses_D_ht+0xbc48, %rdi
nop
nop
and %rax, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x132dd, %rbx
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rbx)
nop
dec %r13
lea addresses_WT_ht+0x88dd, %r13
nop
nop
nop
nop
add $49890, %rax
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbp
nop
add %rdi, %rdi
lea addresses_UC_ht+0x25dd, %rsi
lea addresses_A_ht+0x13add, %rdi
cmp $28825, %rax
mov $50, %rcx
rep movsq
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1d6dd, %rsi
lea addresses_UC_ht+0x798b, %rdi
nop
nop
inc %rbp
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
and $60417, %rsi
lea addresses_WC_ht+0xb7fd, %rax
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%rax), %r12w
dec %rsi
lea addresses_normal_ht+0x125ae, %rdi
dec %rcx
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rax
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rdx

// Store
lea addresses_A+0x17add, %r14
nop
xor %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%r14)
cmp %rdx, %rdx

// Store
lea addresses_WT+0x136dd, %r9
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%r9)
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0x11add, %rax
nop
nop
nop
nop
and $57303, %r10
mov (%rax), %r9d
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 126}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
