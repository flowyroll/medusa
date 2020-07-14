.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x2213, %rdi
nop
sub $43534, %r13
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0xaa62, %rsi
lea addresses_normal_ht+0x7fe3, %rdi
nop
and $39557, %r8
mov $72, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x3113, %rsi
lea addresses_D_ht+0x13393, %rdi
nop
nop
nop
add $62638, %rbp
mov $110, %rcx
rep movsq
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x19393, %r10
clflush (%r10)
nop
nop
nop
add %rcx, %rcx
movb (%r10), %r8b
sub $31490, %r13
lea addresses_normal_ht+0xf793, %r13
cmp %r10, %r10
movw $0x6162, (%r13)
nop
and %r10, %r10
lea addresses_WC_ht+0x6fbf, %rbp
nop
nop
sub $56932, %r8
mov (%rbp), %rdi
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x9633, %rbp
nop
nop
nop
nop
and %rdi, %rdi
movl $0x61626364, (%rbp)
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x82d3, %rbp
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
sub $45742, %r11

// Store
lea addresses_D+0x1ef93, %rax
nop
nop
nop
nop
inc %rdi
movb $0x51, (%rax)

// Exception!!!
nop
nop
mov (0), %rdi
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_UC+0x12e13, %rbp
nop
nop
nop
nop
xor $43467, %r12
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
nop
dec %rbp

// Faulty Load
lea addresses_normal+0x1b93, %rsi
nop
nop
nop
nop
xor $41297, %r11
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'34': 7}
34 34 34 34 34 34 34
*/
