.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10783, %rsi
lea addresses_UC_ht+0x10924, %rdi
clflush (%rsi)
nop
nop
and $9853, %r8
mov $118, %rcx
rep movsl
nop
nop
nop
nop
nop
add $21109, %r11
lea addresses_normal_ht+0x1e83c, %r13
nop
cmp $65248, %r15
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rsi
nop
and %rcx, %rcx
lea addresses_A_ht+0x193bc, %rsi
lea addresses_normal_ht+0x16ffc, %rdi
nop
nop
inc %rdx
mov $23, %rcx
rep movsl
nop
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x12210, %r15
nop
cmp $19987, %rdx
movw $0x6162, (%r15)
cmp %rdx, %rdx
lea addresses_normal_ht+0x1df7c, %r13
nop
nop
nop
nop
inc %rdi
movb (%r13), %r11b
nop
nop
dec %r13
lea addresses_normal_ht+0x11f11, %rcx
add %rdi, %rdi
mov (%rcx), %r8d
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x737c, %r13
nop
nop
sub $38862, %rdx
mov (%r13), %ax
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
