.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dd45, %rsi
lea addresses_normal_ht+0x9145, %rdi
nop
nop
sub %r12, %r12
mov $2, %rcx
rep movsb
nop
nop
nop
nop
add %r9, %r9
lea addresses_normal_ht+0x1b545, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add $42399, %r10
movb $0x61, (%r14)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1a345, %r12
and %r14, %r14
mov (%r12), %rdi
nop
nop
add $60632, %r12
lea addresses_WT_ht+0xb2d1, %rsi
nop
nop
nop
add $38503, %rcx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x8815, %r12
xor %rsi, %rsi
movb (%r12), %cl
nop
nop
nop
nop
nop
and $39347, %r9
lea addresses_normal_ht+0x15745, %r12
nop
nop
nop
nop
nop
inc %r14
mov (%r12), %rdi
nop
nop
cmp $33132, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x1d45, %rsi
lea addresses_normal+0x16c45, %rdi
nop
xor $10551, %rbp
mov $94, %rcx
rep movsl
nop
nop
nop
nop
nop
and $14588, %rbp

// Store
lea addresses_normal+0x16d45, %rbp
nop
nop
nop
nop
add $30306, %r10
movl $0x51525354, (%rbp)
nop
nop
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_RW+0x19a45, %rsi
lea addresses_normal+0xcb49, %rdi
nop
nop
nop
nop
nop
sub $41812, %r13
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $10641, %r15

// Store
lea addresses_normal+0x893f, %rcx
clflush (%rcx)
nop
add %rax, %rax
movw $0x5152, (%rcx)
nop
nop
and $47702, %r15

// REPMOV
lea addresses_WC+0x1ac3d, %rsi
lea addresses_normal+0xb45, %rdi
nop
nop
nop
nop
xor $15810, %r10
mov $96, %rcx
rep movsw
nop
nop
xor $45967, %rbp

// Faulty Load
lea addresses_normal+0x16d45, %rax
nop
nop
nop
cmp %r10, %r10
movb (%rax), %r13b
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_RW'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
