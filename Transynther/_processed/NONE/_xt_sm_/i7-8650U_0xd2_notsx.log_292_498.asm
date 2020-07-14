.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xbd05, %rax
nop
nop
nop
nop
nop
inc %r9
movb (%rax), %r10b
nop
and $46555, %rbx
lea addresses_WT_ht+0x1312d, %rax
sub %rdi, %rdi
mov (%rax), %bx
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x7a81, %rsi
lea addresses_WT_ht+0x8d0d, %rdi
dec %r9
mov $53, %rcx
rep movsb
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1dc1f, %rcx
nop
and $50058, %r9
and $0xffffffffffffffc0, %rcx
movaps (%rcx), %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1472d, %rsi
lea addresses_A_ht+0x1132d, %rdi
nop
nop
add %r14, %r14
mov $106, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x832d, %r14
clflush (%r14)
nop
nop
xor %rax, %rax
movl $0x61626364, (%r14)
nop
xor %rax, %rax
lea addresses_normal_ht+0x18d17, %rax
dec %r9
mov (%rax), %edi
xor %rdi, %rdi
lea addresses_normal_ht+0x1c631, %rax
nop
nop
nop
sub $48651, %rsi
mov (%rax), %rcx
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Load
lea addresses_PSE+0x19b2d, %r13
nop
nop
nop
nop
nop
add %r8, %r8
movb (%r13), %bl
nop
nop
sub $36171, %rbx

// Store
lea addresses_PSE+0x19b2d, %rbp
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_normal+0x104ad, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rcx)
nop
nop
cmp $56092, %rbx

// Faulty Load
lea addresses_PSE+0x19b2d, %rbp
nop
nop
nop
nop
sub %r8, %r8
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'58': 292}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
