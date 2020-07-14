.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c3bb, %r15
nop
nop
nop
sub $11637, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%r15)
xor $19053, %r14
lea addresses_D_ht+0x157bb, %rsi
lea addresses_D_ht+0x1d697, %rdi
clflush (%rdi)
nop
sub $21271, %r12
mov $32, %rcx
rep movsl
add %r15, %r15
lea addresses_WT_ht+0x15933, %r12
nop
nop
nop
nop
inc %rsi
mov (%r12), %r14d
nop
nop
nop
cmp %r15, %r15
lea addresses_WT_ht+0x1865b, %r12
nop
nop
nop
nop
and $52617, %r15
mov (%r12), %di
cmp %r8, %r8
lea addresses_WT_ht+0x569, %rsi
lea addresses_A_ht+0xcdbb, %rdi
nop
nop
nop
nop
nop
sub $30728, %r12
mov $97, %rcx
rep movsb
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0xde5, %rsi
lea addresses_UC_ht+0x1687b, %rdi
nop
nop
cmp $25737, %r14
mov $87, %rcx
rep movsq
sub %r14, %r14
lea addresses_normal_ht+0x19bbb, %rbp
nop
nop
nop
nop
inc %r8
mov (%rbp), %si
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0x8db3, %rsi
nop
nop
nop
xor $38815, %r15
mov (%rsi), %cx
nop
nop
sub $2228, %rdi
lea addresses_normal_ht+0x13dbb, %rcx
and $24401, %rdi
mov (%rcx), %rbp
nop
nop
add $17906, %r12
lea addresses_A_ht+0x1dbb, %rsi
lea addresses_A_ht+0x1e9bb, %rdi
sub %r15, %r15
mov $2, %rcx
rep movsq
nop
xor %r14, %r14
lea addresses_WC_ht+0x142eb, %rdi
nop
nop
nop
nop
cmp %r8, %r8
movl $0x61626364, (%rdi)
nop
nop
and $4043, %r12
lea addresses_D_ht+0x15f6d, %rsi
lea addresses_UC_ht+0xf9c7, %rdi
nop
nop
and %r12, %r12
mov $107, %rcx
rep movsb
nop
nop
xor $25882, %rbp
lea addresses_A_ht+0x151e2, %rsi
lea addresses_UC_ht+0x1436b, %rdi
sub %r8, %r8
mov $83, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $3665, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_A+0x80f, %r14
nop
nop
nop
dec %rbp
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
lea addresses_US+0x2dbb, %rsi
clflush (%rsi)
and $9252, %r9
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'45': 556, 'dd': 5, '46': 1080, '49': 137, '00': 16251, '3c': 9, '47': 669, '28': 81, 'c0': 11, '1a': 105, '5f': 1, '44': 4, '80': 4, 'c9': 2916}
00 00 00 00 00 28 00 00 46 00 00 00 00 00 00 00 45 c9 c9 00 00 00 45 00 00 00 00 c9 00 00 00 47 00 00 00 00 00 00 00 00 45 00 00 c9 00 00 c9 00 c9 47 00 00 00 00 00 00 00 00 c9 00 47 00 c9 00 00 00 00 00 c9 00 00 00 c9 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 c9 00 00 c9 00 00 00 00 00 00 00 00 46 c9 00 00 00 28 00 00 00 00 47 00 00 00 00 c9 00 00 00 00 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 00 47 00 45 47 47 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 45 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 45 c9 00 00 00 28 00 00 c9 00 00 46 c9 c9 47 47 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 47 00 00 00 00 46 00 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 c9 00 00 00 00 28 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 c9 c9 45 00 00 00 00 00 00 00 c9 c9 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 46 00 00 00 00 00 46 47 00 c9 c9 00 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 c9 00 00 00 45 00 c9 00 00 00 00 00 00 00 00 00 49 00 46 00 00 00 49 c9 00 47 00 00 47 00 00 00 00 00 49 c9 c9 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 c9 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 c9 c9 00 00 00 00 c9 47 00 00 c9 46 c9 00 00 00 00 00 00 00 c9 c9 c9 c9 00 00 00 c9 c9 c9 c9 c9 00 00 c9 46 00 00 00 00 00 00 c9 47 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 c9 00 00 00 00 00 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 46 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 c9 00 00 00 00 00 00 00 00 00 45 00 00 00 00 c9 c9 c9 c9 00 46 00 00 00 45 46 c9 00 c9 47 c9 00 c9 c9 c9 c9 c9 c9 00 c9 c9 00 00 47 00 00 00 00 00 00 00 00 00 c9 00 46 00 00 00 00 1a 00 00 00 00 00 45 c9 c9 47 00 c9 c9 00 00 00 00 00 00 45 46 00 00 00 45 00 00 47 00 00 00 00 00 46 c9 c9 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 46 c9 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 c9 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 c9 00 00 00 00 00 49 00 00 c9 00 00 00 46 00 00 00 00 00 00 47 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 46 00 00 00 00 00 00 00 45 46 00 00 00 00 00 c9 c9 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 c9 47 00 46 00 00 00 00 00 00 47 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 46 c9 00 00 00 45 c9 c9 c9 c9 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 00 00 00 00 00 00 00 00 c9 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c9 00 00 c9 00 00 00 00 00 46 00 00 00 00 00 00 00 00 c9 00 00 00 00 46 00 47 00 00 00 00 00 00 00 00 00 00
*/
