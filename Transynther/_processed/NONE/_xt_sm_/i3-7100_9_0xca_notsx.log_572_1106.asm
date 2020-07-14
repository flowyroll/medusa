.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x13312, %rax
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rax)
nop
nop
add $45403, %rdi
lea addresses_A_ht+0x10a7a, %rsi
lea addresses_normal_ht+0x16132, %rdi
add %r15, %r15
mov $81, %rcx
rep movsw
nop
nop
nop
nop
and $58340, %r11
lea addresses_UC_ht+0x11632, %rax
nop
sub $40702, %r11
mov $0x6162636465666768, %r15
movq %r15, (%rax)
dec %r15
lea addresses_normal_ht+0x5172, %rdi
clflush (%rdi)
sub $19188, %r13
movw $0x6162, (%rdi)
nop
nop
nop
sub $28442, %rcx
lea addresses_normal_ht+0x12432, %rax
cmp $26782, %r13
movl $0x61626364, (%rax)
nop
nop
nop
nop
add $14129, %r15
lea addresses_D_ht+0x1093a, %r11
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r11)
add $60622, %rsi
lea addresses_UC_ht+0x10732, %rdi
nop
cmp %r11, %r11
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rax
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x13432, %r14
clflush (%r14)
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%r14)
cmp $14576, %r9

// REPMOV
lea addresses_WC+0xe186, %rsi
lea addresses_WC+0x18fb2, %rdi
nop
nop
nop
add %rbx, %rbx
mov $51, %rcx
rep movsl
nop
inc %rcx

// Store
lea addresses_RW+0x18f32, %rbx
nop
nop
and $64466, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
xor %r9, %r9

// Store
lea addresses_WT+0x1345e, %rdi
sub %rbx, %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
cmp $12367, %r9

// Store
lea addresses_A+0xf732, %rcx
clflush (%rcx)
nop
nop
dec %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_D+0x1172, %rsi
nop
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
cmp $38671, %rbx

// Faulty Load
lea addresses_A+0xf732, %r10
clflush (%r10)
nop
nop
nop
cmp %rsi, %rsi
mov (%r10), %r9d
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 572}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
