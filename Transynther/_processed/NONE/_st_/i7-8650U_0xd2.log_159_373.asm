.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf229, %rsi
lea addresses_normal_ht+0x1d089, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $13, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x5b59, %r9
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r9), %esi
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x12239, %rsi
lea addresses_UC_ht+0x1e9b1, %rdi
nop
nop
nop
nop
nop
and $50283, %r15
mov $33, %rcx
rep movsl
nop
nop
sub $11742, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x1949, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
and %rdx, %rdx

// Store
lea addresses_normal+0xec89, %rcx
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
nop
sub $26175, %rcx

// Load
lea addresses_D+0x1dc9, %rcx
nop
nop
add %r9, %r9
mov (%rcx), %ax
nop
nop
nop
and $61545, %r14

// Faulty Load
lea addresses_A+0x2949, %rax
nop
nop
nop
nop
sub $61212, %rcx
mov (%rax), %r14w
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'58': 159}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
