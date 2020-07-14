.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1cd4f, %rsi
nop
nop
nop
nop
inc %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
nop
nop
cmp $36574, %r10
lea addresses_WC_ht+0x1bb4f, %r11
nop
nop
nop
cmp $43298, %r9
movw $0x6162, (%r11)
nop
nop
nop
nop
and $44523, %r9
lea addresses_WC_ht+0x5b7b, %rsi
lea addresses_normal_ht+0xc94f, %rdi
clflush (%rdi)
nop
cmp %rbx, %rbx
mov $56, %rcx
rep movsl
cmp $8824, %r10
lea addresses_WC_ht+0x8e4f, %r9
clflush (%r9)
nop
add %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
nop
cmp $60862, %rsi
lea addresses_normal_ht+0x484f, %rsi
lea addresses_WC_ht+0x1940f, %rdi
clflush (%rdi)
nop
nop
nop
sub %r10, %r10
mov $65, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $20225, %r9
lea addresses_WT_ht+0x500f, %r9
nop
nop
sub $20440, %rbx
movl $0x61626364, (%r9)
add $42751, %rax
lea addresses_UC_ht+0xa153, %rsi
lea addresses_A_ht+0xd0cf, %rdi
nop
nop
nop
nop
dec %r11
mov $46, %rcx
rep movsq
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x1414f, %rax
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0x274f, %rbx
nop
nop
nop
and $50447, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %rbx
movntdq %xmm7, (%rbx)
nop
nop
nop
add $61883, %r9
lea addresses_WT_ht+0xb28f, %rax
nop
nop
dec %r10
movb (%rax), %bl
nop
nop
nop
nop
sub $40419, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rbp

// Load
lea addresses_normal+0x8887, %r12
nop
nop
nop
inc %rax
mov (%r12), %r15w
cmp %rax, %rax

// Faulty Load
lea addresses_US+0x9d4f, %rbp
clflush (%rbp)
nop
nop
nop
cmp %r12, %r12
mov (%rbp), %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 60}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
