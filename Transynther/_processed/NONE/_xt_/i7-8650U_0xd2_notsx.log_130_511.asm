.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xfd01, %r12
nop
and $30209, %rdx
movl $0x61626364, (%r12)
nop
nop
nop
xor $60366, %r12
lea addresses_WT_ht+0x10101, %rbx
clflush (%rbx)
nop
nop
and $20208, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x17681, %rsi
lea addresses_D_ht+0x12d81, %rdi
nop
nop
and $35589, %r9
mov $44, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_UC_ht+0x1b601, %rsi
lea addresses_normal_ht+0x1c001, %rdi
nop
inc %r9
mov $91, %rcx
rep movsw
nop
add $34581, %rdx
lea addresses_A_ht+0xc701, %rsi
lea addresses_UC_ht+0x1ef01, %rdi
nop
nop
sub $24044, %r12
mov $108, %rcx
rep movsq
nop
add %r15, %r15
lea addresses_A_ht+0x8135, %r12
nop
nop
sub %rbx, %rbx
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
add $59692, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x130c1, %rbx
add %rax, %rax
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $56757, %rax

// REPMOV
lea addresses_US+0x1dd01, %rsi
mov $0x181, %rdi
nop
nop
cmp $59562, %rdx
mov $73, %rcx
rep movsw
nop
nop
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_D+0x1501, %rdx
clflush (%rdx)
nop
nop
dec %rbp
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_P', 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'36': 130}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
