.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xde3, %rsi
lea addresses_WT_ht+0x33ec, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
add %r14, %r14
mov $67, %rcx
rep movsw
sub $30275, %r10
lea addresses_normal_ht+0x62e3, %r15
nop
nop
nop
nop
add $1384, %rbp
vmovups (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x5d33, %rsi
lea addresses_WT_ht+0xc76e, %rdi
nop
nop
nop
nop
nop
xor $28225, %rdx
mov $27, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1493f, %rdx
nop
nop
nop
add $23294, %r10
mov (%rdx), %edi
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1ad4c, %rsi
nop
nop
nop
nop
cmp $18729, %rbp
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x900b, %rsi
lea addresses_UC_ht+0x12fe3, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $103, %rcx
rep movsw
sub $30745, %rcx
lea addresses_WT_ht+0x1ce03, %rsi
lea addresses_D_ht+0x8d6b, %rdi
nop
nop
nop
nop
cmp $5119, %rdx
mov $96, %rcx
rep movsq
nop
nop
nop
and $25064, %r10
lea addresses_WC_ht+0x9e3, %rsi
lea addresses_A_ht+0x19be3, %rdi
nop
nop
nop
and $26909, %r15
mov $68, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x4b73, %rsi
lea addresses_US+0x1117b, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r13
mov $15, %rcx
rep movsl
nop
add %rbp, %rbp

// Faulty Load
lea addresses_WC+0x1e7e3, %rcx
nop
nop
add $19622, %rbx
mov (%rcx), %r12d
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'00': 3789}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
