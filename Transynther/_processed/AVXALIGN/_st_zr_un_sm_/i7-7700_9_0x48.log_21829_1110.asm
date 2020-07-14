.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17363, %r10
nop
xor %rbp, %rbp
mov $0x6162636465666768, %r13
movq %r13, (%r10)
nop
xor $6582, %r15
lea addresses_WT_ht+0x1b763, %r15
nop
nop
nop
nop
cmp $29035, %rbp
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1b77b, %rbp
nop
nop
nop
cmp $52732, %r9
mov (%rbp), %r15w
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x10fee, %r13
cmp %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%r13)
inc %r13
lea addresses_D_ht+0x1e9eb, %rsi
lea addresses_WT_ht+0x9dcb, %rdi
nop
cmp $14725, %r10
mov $6, %rcx
rep movsl
nop
nop
nop
and $5956, %rbp
lea addresses_normal_ht+0x1c10b, %r13
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x61, (%r13)
and $57152, %r13
lea addresses_WC_ht+0x1617f, %rsi
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
sub $32883, %r9
lea addresses_WT_ht+0x2ce3, %rsi
cmp %rcx, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
add %r10, %r10
lea addresses_WC_ht+0x13063, %r13
nop
inc %r15
mov (%r13), %ebp
nop
nop
nop
sub $10290, %rbp
lea addresses_WC_ht+0xabe6, %r9
nop
nop
nop
nop
xor %r10, %r10
mov (%r9), %r15
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x7283, %r15
nop
nop
nop
nop
nop
xor $29578, %rcx
mov (%r15), %r10w
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1bcd3, %rbp
nop
nop
cmp $55555, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %rbp
movaps %xmm6, (%rbp)
nop
nop
nop
xor $43829, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x1dfd420000000363, %rsi
nop
nop
nop
nop
nop
add %r13, %r13
movl $0x51525354, (%rsi)
nop
nop
inc %rcx

// Faulty Load
mov $0x1dfd420000000363, %rcx
nop
nop
add %rdx, %rdx
mov (%rcx), %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'5f': 10141, '54': 7573, '00': 4115}
5f 5f 5f 54 00 54 5f 54 00 00 5f 5f 5f 5f 54 00 54 00 5f 5f 54 54 54 5f 54 54 54 54 54 5f 54 5f 54 5f 5f 54 00 54 5f 00 54 5f 54 00 00 5f 54 5f 5f 54 5f 00 5f 00 00 5f 5f 5f 5f 5f 54 54 00 54 5f 5f 00 5f 5f 54 00 00 54 5f 5f 00 5f 00 5f 00 54 5f 54 54 5f 00 54 5f 5f 5f 54 5f 5f 5f 54 5f 5f 5f 00 5f 00 00 54 5f 5f 54 5f 5f 00 5f 54 54 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 54 54 54 5f 54 5f 54 5f 5f 00 00 54 54 54 5f 5f 54 54 54 5f 54 5f 5f 5f 54 5f 54 5f 5f 5f 00 5f 54 5f 00 54 5f 5f 54 54 54 5f 00 5f 54 5f 00 5f 5f 5f 5f 54 54 54 00 5f 00 5f 00 00 54 54 5f 54 54 5f 5f 5f 5f 54 54 5f 00 5f 5f 5f 00 5f 5f 5f 5f 54 5f 5f 5f 5f 54 54 00 00 00 00 00 54 00 54 5f 54 54 5f 54 54 54 5f 5f 54 00 5f 5f 5f 5f 54 5f 54 54 5f 5f 5f 54 54 54 5f 00 5f 00 54 00 54 54 5f 54 00 54 54 54 54 5f 54 5f 5f 5f 5f 5f 54 5f 54 5f 54 5f 5f 5f 5f 00 00 5f 5f 5f 5f 00 5f 00 00 5f 00 54 54 5f 00 5f 00 00 5f 5f 54 54 5f 5f 5f 54 5f 54 5f 5f 54 5f 00 54 5f 54 54 5f 54 5f 54 5f 00 00 00 54 54 5f 00 5f 54 5f 5f 5f 5f 5f 00 5f 54 54 00 00 54 5f 5f 5f 5f 5f 5f 54 54 54 5f 5f 54 00 00 00 5f 00 5f 00 5f 00 54 5f 5f 54 5f 5f 5f 5f 54 5f 5f 00 54 54 54 5f 5f 5f 54 54 5f 5f 54 00 5f 5f 5f 5f 5f 54 54 54 54 5f 54 5f 54 5f 00 54 54 5f 5f 5f 5f 00 5f 00 5f 5f 5f 54 54 00 5f 00 5f 54 5f 00 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 54 5f 00 54 54 5f 5f 5f 54 54 00 54 54 00 00 54 5f 5f 5f 54 5f 54 00 5f 5f 5f 54 00 5f 54 5f 5f 5f 54 00 54 5f 5f 00 54 5f 5f 54 5f 54 5f 54 54 00 54 5f 00 5f 5f 5f 54 5f 5f 5f 00 5f 54 00 5f 54 54 5f 00 5f 5f 5f 00 5f 54 54 54 54 5f 5f 00 54 5f 5f 54 54 54 5f 54 54 5f 5f 54 5f 54 5f 5f 5f 54 5f 54 00 5f 5f 00 00 5f 5f 00 54 54 5f 54 54 54 5f 5f 5f 5f 5f 5f 5f 54 54 5f 5f 54 54 5f 5f 5f 54 5f 5f 5f 5f 5f 00 5f 00 5f 5f 00 5f 00 54 5f 5f 5f 54 5f 5f 54 5f 5f 54 5f 00 5f 5f 5f 54 00 00 5f 54 54 5f 54 5f 5f 5f 5f 00 54 5f 5f 54 54 5f 00 5f 54 5f 54 5f 5f 5f 5f 5f 54 5f 00 5f 54 5f 54 00 5f 5f 5f 00 54 5f 54 5f 5f 5f 54 5f 00 5f 54 5f 00 00 5f 5f 5f 5f 5f 54 5f 5f 54 5f 5f 5f 5f 5f 5f 00 54 5f 5f 54 5f 5f 54 5f 5f 54 54 5f 5f 54 5f 00 5f 5f 00 00 5f 5f 00 5f 5f 00 00 54 54 5f 54 54 54 54 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 54 5f 5f 54 5f 00 5f 5f 54 5f 54 5f 00 54 5f 00 54 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 54 54 5f 54 54 54 5f 5f 5f 5f 5f 5f 5f 5f 5f 54 5f 00 54 54 5f 54 54 54 00 54 54 54 00 00 54 54 5f 54 54 54 5f 00 54 5f 54 5f 54 5f 54 5f 54 5f 54 54 00 5f 5f 5f 5f 00 54 54 5f 5f 5f 5f 5f 5f 54 5f 5f 00 5f 5f 54 5f 00 00 00 5f 5f 00 5f 54 54 54 5f 54 00 00 54 54 00 5f 00 54 54 5f 00 5f 00 54 54 5f 54 5f 54 54 54 00 54 00 5f 5f 54 5f 54 54 54 54 5f 00 54 5f 5f 5f 54 5f 5f 00 54 5f 5f 54 00 00 54 5f 54 5f 54 00 00 5f 5f 5f 54 5f 54 5f 5f 5f 54 54 54 54 5f 54 5f 5f 5f 00 5f 54 5f 00 00 54 5f 54 54 5f 5f 54 5f 54 5f 00 00 5f 54 54 5f 00 54 5f 5f 5f 54 54 5f 5f 5f 5f 5f 54 5f 00 54 5f 54 00 54 54 5f 54 00 54 00 00 5f 5f 5f 00 5f 5f 00 54 54 5f 5f 54 54 00 5f 00 54 54 00 54 00 5f 5f 5f 00 5f 5f 00 00 54 5f 00 5f 54 54 5f 5f 54 5f 00 54 00 5f 5f 00 54 5f 5f 5f 5f 5f 5f 5f
*/
