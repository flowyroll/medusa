.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7eec, %rsi
lea addresses_WC_ht+0x1d43c, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $126, %rcx
rep movsb
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0x3720, %rsi
lea addresses_WC_ht+0x120a0, %rdi
nop
nop
sub %r8, %r8
mov $126, %rcx
rep movsb
nop
nop
nop
sub $19959, %rdi
lea addresses_WC_ht+0x1d41c, %rdi
nop
and $57303, %r9
movb $0x61, (%rdi)
nop
nop
dec %rdi
lea addresses_A_ht+0x9766, %r9
nop
nop
nop
and %r12, %r12
movb (%r9), %r10b
nop
nop
nop
inc %r12
lea addresses_D_ht+0x13ec, %rsi
lea addresses_WC_ht+0x6b5e, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $28, %rcx
rep movsl
nop
cmp $24364, %rsi
lea addresses_WT_ht+0x90ec, %r12
nop
nop
nop
nop
add %r11, %r11
movw $0x6162, (%r12)
cmp $21591, %r8
lea addresses_UC_ht+0xbec, %rsi
nop
lfence
movb (%rsi), %r10b
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1e1f2, %r12
nop
nop
sub %rcx, %rcx
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_UC+0xd77c, %r10
nop
nop
nop
sub $42887, %rdx
movl $0x51525354, (%r10)
nop
sub %r10, %r10

// Load
lea addresses_PSE+0x1d9c, %r10
clflush (%r10)
nop
nop
nop
nop
dec %r11
mov (%r10), %eax
nop
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_WC+0x3eec, %rdx
nop
and %r14, %r14
movaps (%rdx), %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'47': 154, '45': 1899, '48': 8418, '46': 2260, '00': 9098}
46 46 48 48 46 48 45 46 46 45 46 00 45 46 00 45 48 00 45 00 45 00 45 45 48 00 45 00 45 48 46 00 00 46 47 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 46 00 00 45 00 45 48 48 45 00 45 45 48 00 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 45 45 46 00 45 48 00 45 48 45 45 48 48 45 48 45 48 46 00 48 46 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 45 48 46 00 48 46 48 00 46 00 00 48 00 48 00 48 00 00 00 48 48 46 00 00 45 00 45 00 45 00 45 48 45 00 45 48 46 00 46 45 48 45 48 00 48 48 45 00 45 00 45 45 48 00 45 45 48 48 48 46 47 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 47 48 45 00 48 48 46 00 45 46 47 00 48 00 48 00 48 45 46 00 00 45 45 48 00 46 00 46 48 46 00 45 46 47 00 48 00 48 00 48 00 45 00 45 45 45 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 46 00 00 48 48 45 46 00 00 48 00 48 48 46 00 45 48 48 45 45 48 48 48 48 48 48 46 47 00 48 00 00 46 00 48 48 46 00 46 00 48 48 45 46 00 46 00 46 00 46 46 48 46 00 48 00 46 47 48 46 00 00 45 48 46 48 46 00 46 00 46 00 45 46 48 00 48 00 48 00 48 48 46 00 45 48 00 45 48 45 46 46 45 45 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 46 00 46 46 48 46 00 45 48 48 45 48 45 00 45 45 48 45 48 48 45 00 48 48 48 48 45 00 45 45 48 45 48 45 48 00 45 00 45 00 45 48 46 00 00 46 00 46 46 45 46 00 45 48 00 45 00 45 00 45 00 45 00 45 48 45 46 46 45 46 00 45 48 00 45 46 46 45 46 00 00 45 45 48 45 48 45 48 00 45 48 46 48 46 00 45 48 00 45 48 48 45 48 00 45 48 46 48 46 00 46 00 46 00 46 00 46 45 48 48 45 00 45 00 45 00 45 00 45 48 48 48 00 46 47 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 48 48 45 00 45 48 00 46 46 00 45 45 46 00 00 48 48 45 00 45 00 45 48 00 46 00 00 48 00 48 00 48 00 45 48 46 00 48 46 48 00 46 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 45 45 46 00 45 48 48 46 00 46 00 46 45 46 46 48 46 47 00 48 00 48 00 48 00 48 00 45 45 46 00 45 48 45 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 45 45 46 00 45 48 48 48 45 48 00 48 48 48 45 00 45 00 45 48 48 48 46 48 46 00 48 45 48 48 45 45 48 45 48 00 48 48 45 00 45 00 45 00 45 48 46 48 00 46 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 46 48 46 00 48 46 00 46 00 00 00 48 48 46 00 45 48 45 48 48 46 00 46 00 45 46 47 00 48 00 48 00 48 00 48 00 48 00 48 46 00 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 00 48 46 46 45 46 00 45 48 00 45 00 45 45 48 45 46 45 46 00 48 46 48 46 45 48 48 45 00 45 00 45 48 00 46 00 46 46 48 46 00 00 45 48 46 48 46 00 48 48 46 00 46 00 48 48 46 00 46 45 48 48 45 45 48 48 45 00 45 00 45 00 45 00 48 48 46 46 00 46 46 48 46 00 48 46 48 46 45
*/
