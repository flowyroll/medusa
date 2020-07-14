.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x19dc3, %rax
nop
nop
nop
nop
inc %r15
movb $0x61, (%rax)
sub $54418, %r12
lea addresses_normal_ht+0x87f, %rsi
lea addresses_UC_ht+0xd8bf, %rdi
nop
nop
nop
nop
add $45322, %rax
mov $10, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x4ddf, %rsi
lea addresses_WT_ht+0x14fff, %rdi
and $20208, %r10
mov $7, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_WT_ht+0x1960f, %rsi
lea addresses_normal_ht+0x707f, %rdi
nop
nop
nop
nop
nop
add $28280, %r10
mov $11, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x5fff, %rax
add %rsi, %rsi
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
and $64557, %rdi
lea addresses_A_ht+0x8b9f, %rcx
nop
nop
cmp $8948, %r10
mov (%rcx), %rdi
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0xa87f, %r15
nop
nop
nop
inc %rsi
movl $0x61626364, (%r15)
add %rcx, %rcx
lea addresses_normal_ht+0x1bff, %r10
xor $32319, %rcx
mov (%r10), %r12w
nop
nop
nop
nop
nop
inc %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %r9
push %rdx

// Store
lea addresses_normal+0xa5ff, %r12
nop
nop
nop
nop
nop
and $62029, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovups %ymm1, (%r12)
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0x17dff, %r15
nop
nop
nop
and $51518, %rdx
mov (%r15), %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 9, 'size': 2, 'same': False, 'NT': False}}
{'18': 1, '7a': 2, '80': 30, '44': 28, 'de': 38, '72': 3, '78': 2, '00': 11064, '40': 1, '70': 1, '74': 4, '53': 45, '08': 1, '47': 491, '7e': 1, '30': 1029, '49': 503, 'ff': 4983, '58': 1, '45': 4, '01': 3593, '8c': 1, '33': 1, '76': 2}
08 58 00 ff 47 00 00 00 00 ff 30 00 00 ff 00 ff 00 00 ff 00 00 00 00 ff 00 01 00 00 00 00 ff 30 00 01 00 00 ff 30 00 01 01 ff 49 00 00 01 01 01 49 00 00 ff 00 00 ff 47 00 ff 00 00 ff 30 00 00 ff 00 00 ff 00 01 01 00 ff 30 00 ff 00 00 ff 30 00 00 ff 30 ff 00 00 ff 49 00 ff 00 00 ff 30 00 ff 49 00 00 ff 00 00 00 00 ff 30 ff 00 01 00 00 00 ff 00 ff 00 01 01 01 00 00 00 47 ff 00 00 00 ff 30 47 00 ff 00 ff 00 00 00 ff 00 00 ff 00 00 00 ff 30 00 00 ff 00 00 ff 49 00 00 ff 00 00 00 00 ff 00 01 ff 80 00 00 ff 30 ff 30 ff 00 ff 00 00 ff 30 00 00 00 ff 30 00 49 ff 47 ff 00 00 00 01 01 00 ff 00 ff 00 01 01 01 ff 00 00 01 00 01 00 01 ff 00 01 00 00 ff 00 00 00 ff 30 ff 00 ff 00 ff 00 00 00 00 ff 00 00 00 00 ff 30 00 00 ff 30 00 00 ff 00 01 00 00 00 ff 30 00 00 ff 00 01 01 01 ff 30 00 00 01 01 01 ff 00 00 ff 00 01 ff 30 00 00 ff 30 00 00 ff 00 00 ff 00 01 01 ff 30 ff 00 00 ff 00 00 ff 00 ff 00 01 01 01 00 00 ff 00 01 01 00 00 ff 00 ff 00 00 00 01 01 ff 00 01 01 01 49 00 00 00 ff 00 00 01 00 01 01 00 01 01 01 01 01 ff 30 00 00 00 00 ff 30 00 ff 49 00 01 00 01 01 ff 00 ff 30 00 01 00 00 ff 00 01 00 01 ff 00 01 00 01 47 00 ff 00 ff 00 01 ff 00 00 ff 00 01 00 00 00 01 ff 30 00 00 ff 00 00 ff 00 00 00 00 ff 00 00 01 ff 47 00 ff 00 01 ff 00 00 00 00 00 ff 30 00 00 00 ff 30 ff 00 ff 00 00 00 00 00 00 ff 00 00 ff 00 01 01 ff 49 00 00 01 01 01 00 01 01 00 00 ff 00 01 01 00 ff 00 00 ff 00 01 00 ff 49 00 47 ff 00 00 47 00 00 00 00 49 00 00 00 00 ff 30 00 00 ff 49 00 49 00 00 00 00 00 00 ff 00 01 00 00 ff 00 00 00 00 00 ff 00 ff 30 ff 00 00 01 00 00 00 53 ff 00 00 01 ff 30 00 00 ff 47 00 01 01 01 00 00 00 00 00 00 ff 30 00 01 00 00 ff 00 00 ff 00 00 00 ff 00 ff 30 00 ff 00 01 ff 00 01 49 00 00 01 ff 00 01 00 ff 00 01 ff 00 ff 00 ff 00 00 01 00 00 ff 00 00 00 ff 00 ff de 00 01 01 01 01 00 00 ff 00 00 00 00 ff 00 00 00 00 00 00 00 ff 30 00 01 00 00 00 ff 47 ff 47 ff 00 00 ff 00 ff 00 00 00 00 00 ff 00 01 00 00 01 ff 30 ff 00 ff 30 ff 00 00 01 49 ff 00 ff 00 00 ff 00 ff 00 01 01 00 ff 00 47 00 ff 00 01 00 00 00 ff 30 ff 47 00 ff 00 00 00 ff 00 ff 30 ff 30 00 00 00 00 00 ff 30 00 ff 00 01 00 ff 30 00 00 00 00 ff 00 01 ff 30 00 00 ff 30 00 ff 00 00 00 ff 00 00 00 ff 00 ff 00 00 00 00 00 ff 30 00 01 01 00 00 ff 00 00 ff 00 ff 00 01 00 ff 00 ff 30 47 00 49 00 49 00 ff 30 00 00 00 ff 00 ff 49 ff 00 00 00 ff 00 00 ff 00 00 00 00 00 ff 00 ff 00 ff 00 01 00 00 ff 00 01 00 01 ff 00 00 ff 49 00 00 00 ff 00 00 ff 00 01 00 00 00 00 ff 00 00 01 ff 00 ff 00 01 01 01 ff 00 00 01 00 01 01 49 00 00 00 ff 00 00 00 00 ff 00 00 47 00 01 ff 30 00 ff 00 01 00 01 ff 00 01 49 00 00 00 ff 00 01 00 01 01 00 00 00 00 00 00 ff 49 00 00 49 ff 00 00 00 ff 00 00 ff 00 01 00 ff 00 01 01 00 ff 00 00 ff 00 01 00 01 00 00 01 ff 00 00 ff 00 01 01 00 00 00 ff 00 ff 00 00 00 00 ff 00 01 01 00 ff 00 00 00 00 ff 30 00 ff 00 ff 00 00 01 ff 00 01 01 01 01 00 ff 47 ff 00 01 ff 49 00 01 00 ff 00 01 de ff 30 00 01 ff 30 00 ff 30 ff 30 00 00 ff 00 01 ff 00 00 47 00 00 00 ff 30 00 00 ff 00 00 ff 00 00 00 00 00 00 00 47
*/
