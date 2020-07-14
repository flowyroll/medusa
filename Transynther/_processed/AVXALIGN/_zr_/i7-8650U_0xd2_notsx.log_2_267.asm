.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d8f7, %rsi
lea addresses_A_ht+0xcd4, %rdi
nop
nop
nop
nop
nop
and $1973, %r13
mov $27, %rcx
rep movsq
nop
nop
xor $31968, %rbp
lea addresses_WC_ht+0xd66f, %rsi
xor %rbp, %rbp
mov (%rsi), %r13
nop
nop
nop
xor $15884, %rdi
lea addresses_WC_ht+0x14f71, %rsi
nop
nop
nop
nop
and %rax, %rax
movl $0x61626364, (%rsi)
inc %rsi
lea addresses_UC_ht+0x2f81, %r13
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
xor $9665, %rcx
lea addresses_normal_ht+0x16907, %rax
nop
nop
nop
nop
nop
sub $6489, %r13
mov (%rax), %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x18df7, %rsi
lea addresses_WT_ht+0x2607, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $81, %rcx
rep movsl
add $15363, %r14
lea addresses_normal_ht+0x1ee72, %rdi
clflush (%rdi)
nop
nop
sub $6490, %rcx
movb $0x61, (%rdi)
nop
nop
nop
nop
add $20361, %r14
lea addresses_UC_ht+0x1095f, %rsi
nop
nop
add $30237, %rdi
movb $0x61, (%rsi)
lfence
lea addresses_WC_ht+0x12bf7, %r14
clflush (%r14)
nop
nop
nop
sub %rsi, %rsi
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
add %r14, %r14
lea addresses_WC_ht+0xb5a7, %rsi
lea addresses_WT_ht+0xe3f7, %rdi
nop
nop
sub %rdx, %rdx
mov $111, %rcx
rep movsq
inc %rbp
lea addresses_A_ht+0xc3f7, %rsi
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
sub $48883, %rax
lea addresses_normal_ht+0x1dff7, %rdx
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdx)
nop
nop
and $11263, %rdi
lea addresses_D_ht+0x297, %rax
clflush (%rax)
nop
nop
xor $55904, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x8ef7, %rdi
nop
inc %r13
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
sub $16160, %rsi
lea addresses_WC_ht+0x179f7, %rbp
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
nop
nop
nop
add $35272, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WC+0x17947, %rbp
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rbp)
xor $3236, %rdi

// Store
lea addresses_UC+0x23f7, %r13
nop
xor %r9, %r9
movw $0x5152, (%r13)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_US+0x14bf7, %r10
nop
nop
add $4677, %rdi
mov (%r10), %r13d
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 2}
00 00
*/
