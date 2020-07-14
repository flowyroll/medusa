.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1ce5, %rdx
nop
nop
nop
nop
nop
and $29251, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rdx)
sub %rcx, %rcx
lea addresses_normal_ht+0x153a5, %r11
and %r10, %r10
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1a005, %r11
nop
nop
nop
lfence
mov (%r11), %r14w
nop
sub $39193, %r11
lea addresses_A_ht+0x179a5, %rax
nop
nop
nop
nop
add $18814, %r14
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rax)
dec %r10
lea addresses_WT_ht+0x151a5, %rsi
lea addresses_WC_ht+0x17061, %rdi
clflush (%rsi)
inc %r10
mov $52, %rcx
rep movsb
sub $58875, %rsi
lea addresses_A_ht+0x1ada5, %r11
nop
nop
and %r10, %r10
mov (%r11), %rdi
cmp %r14, %r14
lea addresses_WT_ht+0xc1a5, %r14
nop
and %rsi, %rsi
movb (%r14), %al
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xc36d, %rsi
lea addresses_UC_ht+0x1661, %rdi
dec %rbx
mov $78, %rcx
rep movsq
nop
nop
mfence
lea addresses_D_ht+0x17fa5, %rsi
lea addresses_WT_ht+0x13da5, %rdi
clflush (%rsi)
sub $42259, %rbx
mov $50, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_WC_ht+0x15da5, %rbx
nop
nop
dec %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x90b5, %rax
xor $9773, %r14
mov (%rax), %rdx
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x5fc5, %rsi
lea addresses_WT+0x12da5, %rdi
clflush (%rdi)
nop
nop
and %r11, %r11
mov $40, %rcx
rep movsw
nop
nop
nop
sub $25243, %rdi

// Store
lea addresses_RW+0x1d225, %rdi
nop
add %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
inc %rax

// Faulty Load
lea addresses_RW+0x105a5, %rax
nop
nop
nop
nop
dec %r8
mov (%rax), %r12d
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'32': 37}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
