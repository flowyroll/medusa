.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc609, %r15
nop
cmp %r12, %r12
movw $0x6162, (%r15)
nop
nop
dec %rdi
lea addresses_WT_ht+0x10f65, %r12
xor $61826, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r12)
nop
add %r15, %r15
lea addresses_D_ht+0x2395, %r14
nop
nop
nop
nop
add $40087, %r12
mov (%r14), %r15
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x14b65, %rsi
clflush (%rsi)
nop
nop
nop
inc %rbp
movb (%rsi), %r12b
nop
nop
nop
and $1652, %rbp
lea addresses_UC_ht+0xfb65, %rdi
nop
nop
add $8409, %rbp
movl $0x61626364, (%rdi)
nop
nop
inc %rbx
lea addresses_A_ht+0xeb65, %rbp
nop
cmp %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
nop
sub $36087, %rbx
lea addresses_D_ht+0xc44, %rbx
nop
nop
nop
xor %r12, %r12
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
nop
nop
inc %rdi
lea addresses_WC_ht+0x56e5, %rsi
lea addresses_WT_ht+0x39e5, %rdi
and %rbp, %rbp
mov $123, %rcx
rep movsq
nop
nop
cmp $49526, %r14
lea addresses_WC_ht+0xc365, %rbp
nop
nop
nop
nop
and %rsi, %rsi
mov (%rbp), %rcx
sub %rdi, %rdi
lea addresses_UC_ht+0x11e95, %rdi
clflush (%rdi)
inc %rcx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0xc165, %rsi
lea addresses_WC_ht+0x6265, %rdi
nop
nop
nop
and %r14, %r14
mov $62, %rcx
rep movsl
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x17c85, %rcx
nop
nop
nop
and $53797, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub $19143, %r12
lea addresses_UC_ht+0x1cbd7, %rcx
xor $28680, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0x12f65, %rdi
nop
nop
nop
nop
and $56861, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
and $57777, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x1c905, %rsi
lea addresses_UC+0x4ba9, %rdi
xor $14509, %r8
mov $20, %rcx
rep movsl
nop
nop
nop
nop
dec %rdx

// REPMOV
lea addresses_WT+0x765, %rsi
lea addresses_A+0x10b65, %rdi
nop
nop
nop
add %r8, %r8
mov $9, %rcx
rep movsl
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_normal+0xe6ed, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r9)
nop
nop
nop
dec %r10

// Faulty Load
mov $0x71965d0000000b65, %rdi
nop
nop
xor $22652, %rsi
mov (%rdi), %rdx
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'46': 10156, '00': 11672, 'fe': 1}
00 46 46 00 00 46 46 00 46 00 00 46 00 46 00 46 00 00 46 46 00 46 00 00 46 00 46 00 00 00 46 00 00 00 00 00 46 00 00 46 46 00 00 46 00 00 46 46 00 46 46 00 46 46 46 46 46 00 00 46 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 46 00 00 46 46 00 46 46 00 00 46 00 00 00 46 46 46 00 46 46 46 46 46 00 46 00 00 46 00 46 00 46 00 00 46 46 00 00 00 46 00 46 46 46 46 00 46 00 00 46 00 00 00 46 46 46 46 00 46 00 46 00 00 00 00 00 00 00 00 00 46 00 46 46 00 46 46 46 00 46 46 00 46 00 00 46 46 46 00 46 46 00 00 46 46 00 00 00 00 46 46 46 00 00 46 00 46 00 46 00 00 46 46 00 00 00 00 46 46 00 46 00 46 00 46 00 46 46 00 00 00 00 46 00 00 46 46 46 46 46 46 46 00 00 46 00 46 00 46 00 46 00 46 46 00 46 00 00 00 46 46 00 46 46 46 46 00 46 00 46 00 00 46 00 00 46 00 46 46 46 46 46 00 00 46 00 00 00 00 00 46 00 00 00 46 00 46 46 00 00 00 00 46 00 46 00 46 46 46 00 46 00 00 46 46 46 46 46 46 00 46 46 00 00 00 46 46 00 00 00 46 00 46 00 00 46 00 46 00 00 46 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 00 46 00 46 46 46 46 00 00 00 00 46 00 00 46 46 00 46 00 46 46 00 00 00 46 00 00 46 46 46 00 00 46 00 46 00 46 46 00 00 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 46 46 46 00 00 00 00 46 00 46 46 00 46 46 00 46 00 46 00 46 46 46 46 00 00 46 00 00 00 46 00 46 46 46 00 00 46 00 00 46 00 46 00 00 46 00 46 46 00 00 00 46 46 00 46 00 46 00 00 46 46 00 00 00 46 46 00 46 46 46 00 46 00 00 46 46 00 00 46 46 00 46 46 00 46 46 46 00 46 00 46 46 00 46 00 00 00 46 46 46 00 00 00 46 46 00 00 46 00 00 46 00 00 46 46 00 46 00 00 46 46 00 46 00 00 46 46 46 46 00 46 00 46 00 46 46 00 46 00 46 00 00 46 00 00 46 46 00 46 46 46 00 46 46 00 46 00 00 00 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 46 00 46 00 00 00 46 00 00 00 00 46 00 46 00 46 00 46 00 46 46 46 00 00 00 00 46 00 00 46 00 46 00 46 00 00 00 46 46 00 46 46 00 00 46 00 00 00 46 46 00 00 46 46 00 46 46 46 46 00 46 46 00 00 46 46 00 46 00 46 00 46 00 00 00 00 46 00 46 00 46 46 46 00 46 46 00 46 46 00 46 00 46 00 46 00 46 00 46 46 00 46 46 00 00 46 00 00 00 00 46 46 00 00 46 46 46 00 46 46 00 46 00 46 46 00 00 46 46 46 46 00 00 46 46 46 00 00 46 00 46 00 00 46 00 00 46 00 00 46 46 00 00 46 00 46 00 00 00 46 00 46 46 46 46 46 00 46 46 00 00 00 46 46 46 46 00 46 46 46 46 46 00 00 00 46 00 46 00 00 46 46 00 46 46 46 46 46 00 00 46 46 46 00 00 00 00 00 00 00 00 46 46 46 46 46 46 00 46 00 00 46 46 00 46 46 00 46 00 46 46 00 46 00 00 00 00 46 00 00 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 00 46 46 00 46 00 00 00 46 00 46 46 46 46 46 00 00 00 00 00 46 46 00 00 00 00 46 46 46 00 46 46 00 00 46 46 00 46 00 46 46 46 46 00 46 00 46 00 00 46 00 00 46 46 46 46 46 46 46 00 00 46 46 46 00 00 46 00 46 46 00 46 00 00 00 00 00 00 00 46 46 00 00 00 00 46 00 00 46 46 00 00 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 46 00 46 00 46 00 00 46 46 00 46 46 00 46 46 46 00 00 46 00 46 46 00 00 46 00 46 00 00 00 46 46 00 00 00 00 00 00 46 00 00 00 46 00 00 00 46 46 00 00 46 46 46 00 00 00 46 00 46 46 46
*/
