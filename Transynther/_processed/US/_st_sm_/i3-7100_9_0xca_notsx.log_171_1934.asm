.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x822, %rcx
nop
add %r9, %r9
movb $0x61, (%rcx)
nop
nop
nop
add $36523, %rcx
lea addresses_WC_ht+0x55a3, %rsi
lea addresses_WC_ht+0x1a362, %rdi
nop
xor %r12, %r12
mov $60, %rcx
rep movsb
xor %r12, %r12
lea addresses_normal_ht+0x11b82, %rsi
lea addresses_normal_ht+0xa4c2, %rdi
nop
inc %rbp
mov $41, %rcx
rep movsl
nop
nop
nop
sub $42662, %rcx
lea addresses_A_ht+0x1e4e2, %r12
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r12), %r9w
nop
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0x8192, %r9
nop
nop
sub $5970, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x9362, %rcx
nop
nop
nop
sub $16302, %rbx
movl $0x61626364, (%rcx)
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x7fc3ec00000000c2, %rbx
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbx)
nop
add %r15, %r15

// Store
lea addresses_D+0x1dc72, %rbx
nop
nop
nop
and $57718, %rcx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
xor $22060, %rsi

// Store
lea addresses_US+0x1d362, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_RW+0x1a562, %r15
nop
nop
xor $11045, %rdi
movb $0x51, (%r15)
nop
nop
nop
nop
add $43455, %rbp

// Faulty Load
lea addresses_US+0x1d362, %rax
nop
nop
nop
nop
add $50696, %rbp
mov (%rax), %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True}}
{'58': 171}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
