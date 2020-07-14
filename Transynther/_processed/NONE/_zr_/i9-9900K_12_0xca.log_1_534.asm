.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xdd67, %rsi
lea addresses_WT_ht+0x567, %rdi
nop
and $10361, %r15
mov $120, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xe967, %rax
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
add $65390, %rcx
lea addresses_UC_ht+0x18ddf, %rsi
lea addresses_A_ht+0x1c23f, %rdi
nop
nop
nop
add %r15, %r15
mov $23, %rcx
rep movsb
inc %rsi
lea addresses_normal_ht+0x15567, %rdi
add $43805, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x107c7, %rax
clflush (%rax)
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %ebp
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xb097, %r15
nop
nop
nop
nop
nop
add $24834, %r8
mov (%r15), %rax
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x8e6b, %r15
add %rax, %rax
mov (%r15), %bp
nop
inc %r15
lea addresses_UC_ht+0xb367, %r8
nop
nop
sub $56082, %rax
mov (%r8), %di
nop
inc %rcx
lea addresses_normal_ht+0x3d63, %rsi
nop
cmp $19335, %rdi
movw $0x6162, (%rsi)
nop
cmp %rax, %rax
lea addresses_WC_ht+0x175a, %rcx
nop
and %rdi, %rdi
movb $0x61, (%rcx)
inc %rax
lea addresses_WC_ht+0x1267a, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r15
nop
xor %r15, %r15
lea addresses_WT_ht+0x16767, %rsi
lea addresses_D_ht+0x29a7, %rdi
nop
nop
xor %rbp, %rbp
mov $33, %rcx
rep movsq
nop
cmp $1215, %rbp
lea addresses_D_ht+0x10767, %rax
nop
cmp $34055, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
add $44186, %rdi
lea addresses_normal_ht+0x1ba97, %rsi
lea addresses_UC_ht+0x17ddd, %rdi
clflush (%rdi)
nop
nop
nop
and %r14, %r14
mov $74, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_UC_ht+0xfe7, %r14
nop
sub $58087, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
xor $9893, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x14567, %r10
nop
nop
nop
nop
inc %rdx
movb $0x51, (%r10)
and %rdi, %rdi

// REPMOV
lea addresses_UC+0x1cd67, %rsi
lea addresses_US+0x11567, %rdi
nop
nop
nop
nop
inc %rbp
mov $3, %rcx
rep movsl
and $57793, %rsi

// Faulty Load
lea addresses_UC+0x1cd67, %rdx
nop
nop
and $9117, %r10
mov (%rdx), %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_US', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 4}}
{'00': 1}
00
*/
