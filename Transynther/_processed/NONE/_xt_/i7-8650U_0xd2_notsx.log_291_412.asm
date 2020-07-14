.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1966b, %rsi
lea addresses_A_ht+0x1fa3, %rdi
xor %r12, %r12
mov $80, %rcx
rep movsl
nop
nop
add $34453, %rsi
lea addresses_A_ht+0x1c667, %r9
nop
nop
inc %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x1deb, %rsi
nop
nop
nop
nop
nop
xor $22399, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
nop
and $43758, %rdi
lea addresses_normal_ht+0x1ae73, %rdi
nop
nop
nop
and $64658, %r9
mov (%rdi), %r12d
nop
nop
nop
nop
add $20574, %r8
lea addresses_normal_ht+0xac63, %rdi
nop
add %r9, %r9
mov (%rdi), %r8d
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x16c63, %r12
nop
nop
nop
nop
nop
and $56582, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%r12)
nop
nop
sub $46831, %rsi
lea addresses_normal_ht+0x76e7, %r12
nop
xor %rbx, %rbx
movb $0x61, (%r12)
add %r12, %r12
lea addresses_D_ht+0x1e6b, %rsi
lea addresses_WC_ht+0x15aa3, %rdi
nop
nop
sub $8348, %r8
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
add $14938, %r9
lea addresses_D_ht+0x2723, %rdi
nop
cmp %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x3ea3, %rsi
lea addresses_UC_ht+0x174a3, %rdi
add $44649, %r15
mov $125, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_D_ht+0x15863, %r8
nop
dec %r15
movb $0x61, (%r8)
nop
nop
nop
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x1d6a3, %rcx
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovaps %ymm2, (%rcx)
nop
nop
nop
nop
sub $38268, %rsi

// Faulty Load
lea addresses_RW+0x3ea3, %r11
nop
nop
nop
nop
nop
and $60246, %r10
mov (%r11), %bp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'32': 291}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
