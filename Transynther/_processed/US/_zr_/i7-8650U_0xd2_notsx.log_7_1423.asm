.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe834, %rbx
xor $38039, %rcx
movb (%rbx), %r11b
inc %r11
lea addresses_A_ht+0x34b0, %rbp
nop
nop
nop
nop
inc %r12
movl $0x61626364, (%rbp)
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1bff0, %rsi
lea addresses_normal_ht+0x127f0, %rdi
nop
nop
inc %rdx
mov $80, %rcx
rep movsl
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x5eb0, %rsi
lea addresses_D_ht+0xb9f0, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $99, %rcx
rep movsb
nop
nop
nop
sub $7261, %r12
lea addresses_A_ht+0x129f0, %r11
dec %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x119f0, %rsi
lea addresses_normal_ht+0x5b2, %rdi
nop
nop
nop
nop
xor $11815, %rbx
mov $53, %rcx
rep movsq
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x7f10, %rsi
lea addresses_normal_ht+0x15ff6, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
and %rdx, %rdx
mov $48, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0xe1cc, %rbx
add %rsi, %rsi
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
xor %rdx, %rdx
lea addresses_A_ht+0xe1f0, %rsi
nop
inc %rdi
mov (%rsi), %r12d
nop
add $49551, %rdx
lea addresses_D_ht+0x1a1f0, %r11
nop
nop
nop
nop
nop
cmp $25500, %rbp
movb $0x61, (%r11)
and %rcx, %rcx
lea addresses_UC_ht+0x194f0, %r12
nop
add %rbx, %rbx
movl $0x61626364, (%r12)
nop
nop
add $9010, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x5370, %r14
nop
nop
nop
xor $2918, %rbp
movb $0x51, (%r14)
nop
sub %r14, %r14

// Faulty Load
lea addresses_US+0x49f0, %rsi
nop
add %rdx, %rdx
mov (%rsi), %r14w
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
