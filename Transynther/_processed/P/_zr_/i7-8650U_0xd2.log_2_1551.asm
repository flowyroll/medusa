.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3d77, %rax
dec %rbp
mov (%rax), %cx
nop
nop
and $5189, %rbp
lea addresses_WC_ht+0x18deb, %rsi
lea addresses_WT_ht+0xda4b, %rdi
nop
nop
nop
cmp %r10, %r10
mov $65, %rcx
rep movsl
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x121ab, %rax
clflush (%rax)
cmp %r13, %r13
movb (%rax), %r10b
inc %rax
lea addresses_WT_ht+0x182ab, %rbp
nop
cmp $44485, %r10
movw $0x6162, (%rbp)
nop
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rbp
push %rdi

// Faulty Load
mov $0x8ab, %rdi
and %r12, %r12
mov (%rdi), %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdi
pop %rbp
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 2}
00 00
*/
