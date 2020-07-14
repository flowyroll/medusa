.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x6298, %rsi
lea addresses_WT_ht+0x15a98, %rdi
nop
nop
add %r15, %r15
mov $116, %rcx
rep movsw
nop
xor $14203, %rbx
lea addresses_normal_ht+0x8858, %rsi
lea addresses_normal_ht+0x1ba98, %rdi
nop
nop
nop
nop
nop
cmp $18532, %r12
mov $24, %rcx
rep movsq
nop
sub $23155, %rdi
lea addresses_WC_ht+0x9298, %rsi
lea addresses_WC_ht+0xf098, %rdi
nop
nop
cmp %rax, %rax
mov $52, %rcx
rep movsl
xor $52162, %rax
lea addresses_WT_ht+0x1121c, %rsi
lea addresses_UC_ht+0x1e098, %rdi
nop
nop
nop
nop
and $41369, %rbx
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1ce98, %rdi
nop
nop
nop
sub $63299, %rsi
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
sub $47408, %r15
lea addresses_WT_ht+0x6e98, %rsi
lea addresses_D_ht+0xd314, %rdi
add %rdx, %rdx
mov $82, %rcx
rep movsl
nop
add $7220, %rdx
lea addresses_UC_ht+0x17058, %rsi
nop
nop
nop
nop
nop
xor $12702, %rbx
movb $0x61, (%rsi)
xor %rcx, %rcx
lea addresses_WT_ht+0x1b2ec, %rsi
lea addresses_UC_ht+0x8d04, %rdi
nop
nop
nop
nop
nop
sub $58895, %r12
mov $18, %rcx
rep movsl
nop
nop
nop
nop
nop
add $28083, %rsi
lea addresses_WT_ht+0xf350, %rcx
sub $10602, %rdx
mov (%rcx), %eax
sub $13275, %rsi
lea addresses_D_ht+0xe898, %rsi
lea addresses_WT_ht+0x16298, %rdi
sub $10985, %r12
mov $58, %rcx
rep movsb
nop
add %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x17d98, %rdi
nop
sub %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
mov $0x3b2b860000000898, %rbx
nop
add %r8, %r8
movl $0x51525354, (%rbx)
nop
cmp %rbx, %rbx

// Store
mov $0xea8, %rdi
nop
nop
and %r15, %r15
movw $0x5152, (%rdi)
nop
nop
nop
nop
sub $60100, %rdi

// Faulty Load
lea addresses_RW+0x6298, %rcx
nop
nop
nop
nop
and %rbp, %rbp
mov (%rcx), %r15d
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'32': 115}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
