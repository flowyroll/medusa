.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10e82, %rsi
lea addresses_WC_ht+0xed6c, %rdi
nop
add $31064, %r14
mov $91, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $15261, %rbx
lea addresses_UC_ht+0x18086, %rbp
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x107c2, %rsi
lea addresses_normal_ht+0x11f82, %rdi
nop
and $29020, %r11
mov $84, %rcx
rep movsq
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0xf382, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
movw $0x6162, (%rsi)
nop
inc %r10
lea addresses_WT_ht+0x17c02, %rsi
lea addresses_D_ht+0x8c04, %rdi
nop
nop
nop
nop
dec %rbp
mov $124, %rcx
rep movsl
nop
nop
nop
nop
nop
and $43813, %rcx
lea addresses_D_ht+0x17e03, %r11
nop
nop
nop
lfence
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r11)
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x17382, %r11
nop
cmp %r15, %r15
mov (%r11), %ax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
