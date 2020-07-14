.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14d6d, %rsi
lea addresses_A_ht+0x5504, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $5, %rcx
rep movsl
nop
sub $24517, %rbp
lea addresses_WC_ht+0xbb6d, %rsi
lea addresses_D_ht+0x2f6d, %rdi
nop
nop
nop
nop
inc %rax
mov $121, %rcx
rep movsb
nop
nop
nop
nop
cmp $24879, %rcx
lea addresses_D_ht+0x18b6d, %rsi
lea addresses_normal_ht+0x1416d, %rdi
nop
and %rbp, %rbp
mov $8, %rcx
rep movsq
nop
and $21360, %rax
lea addresses_A_ht+0x1d16d, %r12
nop
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r12)
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1f8d, %r10
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r10)
nop
nop
xor $35545, %rdi
lea addresses_normal_ht+0x1ed5d, %rsi
lea addresses_D_ht+0x7bed, %rdi
clflush (%rsi)
nop
xor %r15, %r15
mov $123, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1676d, %rsi
lea addresses_UC_ht+0xe62e, %rdi
clflush (%rdi)
nop
nop
nop
nop
inc %rax
mov $82, %rcx
rep movsw
nop
nop
nop
nop
xor $26504, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_WC+0x8b6d, %r15
nop
nop
nop
nop
nop
cmp $18300, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovaps %ymm4, (%r15)
nop
nop
xor %rcx, %rcx

// Faulty Load
mov $0x468c93000000036d, %rax
nop
nop
nop
nop
add %rdi, %rdi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'44': 701, '00': 261}
44 44 00 44 00 44 44 44 44 44 00 00 44 44 00 44 44 44 00 00 44 44 44 44 00 00 44 44 44 44 44 44 00 00 44 44 00 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 00 00 44 00 44 44 44 44 44 44 00 00 44 44 44 44 00 00 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 00 44 44 00 44 00 00 00 00 44 44 44 44 44 00 44 44 44 00 44 44 00 44 00 00 44 44 00 44 44 00 00 44 44 44 00 44 00 00 44 00 00 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 00 00 00 00 00 00 44 44 44 44 00 00 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 00 44 00 00 44 44 44 44 44 00 44 00 44 44 00 44 00 00 44 44 00 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 00 00 00 44 00 44 00 44 00 00 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 00 00 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 00 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 00 00 44 00 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 44 00 44 44 44 00 44 00 44 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 00 00 00 00 00 00 44 44 00 44 44 00 44 44 00 00 44 44 00 44 44 00 44 44 44 44 00 44 00 44 00 44 44 44 00 44 44 00 44 00 44 44 44 44 00 00 00 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 44 44 44 44 00 44 44 00 00 00 44 00 44 44 44 44 44 44 44 00 44 00 44 00 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 00 44 00 00 44 00 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 00 44 00 44 44 00 00 44 44 00 44 00 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 00 00 44 00 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 00 44 44 44 44 44 00 44 44 00 44 00 44 44 00 00 00 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 00 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 00 44 00 44 44 00 44 44 44 44 44 00 00 44 44 00 44 44 44 00 44 44 44 44 44 44 44
*/
