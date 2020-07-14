.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x7509, %rsi
lea addresses_normal_ht+0x1a9bd, %rdi
nop
nop
nop
nop
nop
sub $32281, %r15
mov $14, %rcx
rep movsl
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x7fa9, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov (%rdi), %r14
nop
nop
nop
nop
nop
and $7744, %rsi
lea addresses_WT_ht+0x18a49, %rsi
lea addresses_WC_ht+0x589, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $80, %rcx
rep movsb
nop
xor $63135, %rdi
lea addresses_D_ht+0xe707, %rsi
lea addresses_WC_ht+0x52c5, %rdi
nop
nop
sub $33771, %r15
mov $54, %rcx
rep movsl
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x183d9, %rdi
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub $18018, %rsi
lea addresses_WT_ht+0x1a9c9, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rcx)
inc %rdi
lea addresses_WT_ht+0x19722, %rcx
nop
nop
inc %rdx
mov (%rcx), %r15
and $34143, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Load
lea addresses_normal+0x12889, %r9
inc %rbx
mov (%r9), %eax
nop
xor $48644, %rax

// Store
lea addresses_D+0x1ad79, %rcx
nop
nop
nop
nop
and $31578, %r12
mov $0x5152535455565758, %rax
movq %rax, (%rcx)
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_A+0xc089, %r12
nop
nop
nop
xor $12087, %r10
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%r12)
nop
dec %r10

// Store
mov $0x581, %rsi
nop
nop
sub $55235, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
nop
add %r9, %r9

// Store
lea addresses_UC+0x10489, %r10
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r10)
cmp $3667, %r12

// Load
lea addresses_US+0x15809, %rcx
clflush (%rcx)
nop
nop
xor $35051, %rbx
mov (%rcx), %r10d
nop
nop
add %rbx, %rbx

// Store
mov $0xa89, %rbx
nop
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rbx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r10
nop
nop
nop
nop
dec %r12

// Store
lea addresses_normal+0x19731, %r9
nop
nop
nop
nop
nop
and %rcx, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0x95e1, %rax
nop
nop
nop
sub $24200, %r10
movb $0x51, (%rax)
nop
nop
inc %r12

// Faulty Load
lea addresses_A+0x1089, %rcx
and %r12, %r12
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 1}
58
*/
