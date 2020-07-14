.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13e3b, %r12
clflush (%r12)
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x17583, %r8
nop
nop
nop
add $22115, %rsi
movw $0x6162, (%r8)
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x1773b, %rsi
lea addresses_WC_ht+0x6af1, %rdi
nop
nop
nop
inc %r12
mov $50, %rcx
rep movsl
nop
nop
and %r8, %r8
lea addresses_A_ht+0x1a30f, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
add $57181, %rsi
movb $0x61, (%rcx)
xor %r12, %r12
lea addresses_WC_ht+0xdc3b, %rsi
lea addresses_WT_ht+0xba8b, %rdi
clflush (%rsi)
nop
nop
and %r9, %r9
mov $116, %rcx
rep movsq
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x963b, %rsi
lea addresses_UC_ht+0x1ac3b, %rdi
nop
nop
nop
sub $40495, %r9
mov $30, %rcx
rep movsl
dec %rdx
lea addresses_normal_ht+0x5403, %r12
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r12)
nop
nop
inc %r8
lea addresses_A_ht+0x1183b, %rsi
lea addresses_D_ht+0xb03b, %rdi
nop
dec %r10
mov $6, %rcx
rep movsl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1ad0f, %rdx
sub %r10, %r10
movb (%rdx), %cl
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rdi

// Load
lea addresses_UC+0x1283b, %r10
nop
nop
nop
nop
cmp $28855, %r9
movups (%r10), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_A+0x11e3b, %r8
add %r14, %r14
mov (%r8), %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}, 'dst': {'same': True, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
