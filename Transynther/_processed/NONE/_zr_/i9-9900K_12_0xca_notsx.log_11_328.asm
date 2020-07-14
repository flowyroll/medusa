.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1e6b9, %r8
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r8), %esi
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x3bb9, %rsi
lea addresses_A_ht+0x1e5b9, %rdi
nop
nop
add %r12, %r12
mov $106, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x1bb9, %r8
inc %r12
movb (%r8), %bl
and %rbx, %rbx
lea addresses_normal_ht+0xa8b9, %rbx
nop
nop
nop
nop
nop
xor $39225, %rsi
movl $0x61626364, (%rbx)
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x9e35, %rsi
lea addresses_UC_ht+0xa061, %rdi
nop
nop
nop
and %r9, %r9
mov $28, %rcx
rep movsq
nop
inc %rsi
lea addresses_D_ht+0x19fb9, %r12
nop
nop
nop
nop
inc %r8
movb (%r12), %cl
cmp $36802, %rdi
lea addresses_D_ht+0x1d0b9, %rsi
lea addresses_UC_ht+0x99b9, %rdi
nop
xor %r8, %r8
mov $86, %rcx
rep movsl
nop
nop
nop
inc %r9
lea addresses_WC_ht+0x1d1b9, %r14
nop
cmp $29297, %r12
movl $0x61626364, (%r14)
nop
cmp $44761, %rbx
lea addresses_UC_ht+0x10523, %r9
nop
nop
nop
nop
inc %rbx
movb $0x61, (%r9)
nop
and $40871, %r9
lea addresses_normal_ht+0x2880, %r12
nop
nop
nop
nop
sub $33967, %rdi
movw $0x6162, (%r12)
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x1e9b9, %r12
nop
nop
and $37467, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0xc1c, %rsi
nop
nop
nop
nop
nop
cmp $16962, %rdi
movb $0x51, (%rsi)
nop
nop
xor $19715, %r10

// Faulty Load
lea addresses_A+0x91b9, %rsi
nop
nop
nop
nop
nop
and $1651, %rcx
mov (%rsi), %di
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
