.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x124dc, %r8
clflush (%r8)
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r8), %si
add $10857, %rdi
lea addresses_UC_ht+0x14474, %rax
nop
and $57917, %r9
movb $0x61, (%rax)
sub $738, %rax
lea addresses_A_ht+0x18dfc, %rdi
cmp $15922, %rsi
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %r8
xor %rax, %rax
lea addresses_normal_ht+0x384c, %rsi
lea addresses_UC_ht+0x4c7c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rax
mov $125, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_D_ht+0xddfc, %rbp
and $42234, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%rbp)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0x159dc, %rbp
xor $41740, %rsi
mov (%rbp), %cx
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rbx
push %rsi

// Store
lea addresses_normal+0x111d4, %r14
nop
inc %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
add $53401, %rbp

// Faulty Load
lea addresses_US+0x19dfc, %rbx
nop
nop
nop
and $62154, %r10
movups (%rbx), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'ff': 4, '45': 1, '44': 18}
44 44 44 44 44 44 44 45 44 ff 44 ff 44 44 44 44 44 ff 44 44 ff 44 44
*/
