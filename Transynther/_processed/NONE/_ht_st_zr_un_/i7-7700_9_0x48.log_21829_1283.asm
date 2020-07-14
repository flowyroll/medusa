.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3178, %rsi
dec %rbx
movb (%rsi), %cl
nop
nop
nop
nop
and $10889, %r8
lea addresses_WT_ht+0x115f6, %rdi
nop
nop
nop
nop
nop
add $56465, %r12
mov (%rdi), %r14
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x1b0f8, %rdi
nop
nop
nop
add $64555, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
xor $5082, %r14
lea addresses_D_ht+0x3b78, %r12
cmp %rsi, %rsi
movb $0x61, (%r12)
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x8178, %rcx
nop
nop
nop
sub %r12, %r12
mov (%rcx), %rsi
cmp %rdi, %rdi
lea addresses_WC_ht+0x10178, %rdi
nop
nop
nop
nop
nop
add $52764, %rsi
mov (%rdi), %ebx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0xc20, %rsi
lea addresses_normal_ht+0x3b68, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $122, %rcx
rep movsb
cmp %r14, %r14
lea addresses_normal_ht+0x15a78, %r12
sub %rcx, %rcx
movl $0x61626364, (%r12)
nop
add %r14, %r14
lea addresses_normal_ht+0x19c78, %rdi
nop
nop
nop
dec %r14
mov (%rdi), %rcx
nop
sub $20116, %r14
lea addresses_normal_ht+0x16178, %rcx
nop
nop
cmp $34875, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rcx)
add %r14, %r14
lea addresses_WT_ht+0x1b578, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%rdi)
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_WT+0x1c978, %r12
cmp %rdx, %rdx
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbx
lea oracles, %r12
and $0xff, %rbx
shlq $12, %rbx
mov (%r12,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'53': 163, 'ab': 1, '3c': 216, '30': 1, '49': 662, '48': 1654, 'c0': 39, '44': 25, '01': 4167, 'ff': 11520, 'd0': 3, '00': 3325, '38': 23, '80': 22, 'e0': 8}
ff ff 01 ff ff ff 01 ff 48 ff 01 ff 01 53 ff 48 ff 00 48 ff 48 00 ff ff 00 ff ff ff 01 48 ff ff 48 00 48 ff ff ff 01 00 ff 00 00 ff 49 48 ff 01 48 ff 00 00 00 ff 49 48 48 ff ff 00 00 ff ff ff 00 48 ff ff 48 ff ff 48 ff ff 01 ff 00 3c 00 ff ff ff 01 00 ff 48 48 ff 00 00 ff ff 48 00 ff ff 00 ff 53 48 ff ff 48 ff 01 ff ff ff ff ff ff 01 ff 01 ff 01 ff ff 48 ff 01 48 ff ff ff ff 48 ff 01 ff ff 01 ff 01 00 ff 01 ff 00 ff 01 ff 01 ff 48 48 00 00 ff 48 00 ff 00 ff ff ff 48 ff 48 ff ff ff 01 ff 00 00 ff ff ff 01 00 ff ff 00 00 ff ff 01 ff ff 01 49 ff 01 ff 01 3c 49 ff ff ff ff 01 ff 01 ff 00 ff ff ff ff 01 ff ff 01 ff ff ff 01 ff 01 ff ff 01 ff ff 01 48 ff 01 ff 01 ff ff ff 01 00 ff 01 ff 01 ff ff 01 00 00 ff 01 00 ff 00 53 ff ff ff 01 ff 01 48 ff ff 01 00 ff ff 01 ff 01 ff 01 49 ff ff 01 ff 01 ff 01 ff 01 ff ff 01 ff 01 00 3c ff ff 01 00 ff 00 00 ff ff 48 ff 00 ff ff 01 48 00 ff ff ff 01 ff 01 ff 01 ff 48 00 ff ff ff 01 ff ff ff 01 48 ff 48 00 ff 48 00 ff ff 01 ff 01 ff 01 ff ff 01 ff ff ff ff 01 ff 01 00 ff 01 48 ff ff 01 ff ff ff ff 49 ff 00 ff ff ff 00 ff 01 ff 01 ff 00 00 48 00 ff 01 ff 01 ff 01 00 ff ff 01 00 ff ff 01 ff ff 49 00 ff 01 00 00 ff ff ff 01 00 ff ff 00 ff 01 ff ff 01 ff 01 ff 01 ff 01 49 ff ff 48 48 48 ff 48 00 ff 00 49 00 00 ff ff ff 48 ff ff 00 ff 01 ff 00 ff 48 ff ff c0 ff ff 01 48 ff 01 00 48 ff 00 ff 48 ff ff ff 48 44 ff ff 49 00 ff ff ff ff 01 00 ff 01 48 ff ff 01 00 ff ff 00 48 00 ff ff 3c ff ff ff ff 01 ff 01 ff 01 ff 01 ff 01 ff 00 48 ff 00 ff ff 01 00 00 ff ff ff 01 ff ff 01 00 3c ff 49 ff ff 01 ff ff ff 01 ff 01 ff ff ff 01 00 ff 00 ff ff ff 01 ff 00 ff 49 ff ff 01 ff ff 01 48 ff 01 ff 01 ff 01 ff 48 ff ff ff 00 ff 00 ff 01 ff ff 01 ff 49 ff 01 ff 00 ff 01 00 ff ff 01 ff 00 ff 01 ff 01 ff 48 ff 00 48 00 ff ff 01 ff ff ff 01 00 ff ff 01 48 ff 3c ff 00 49 00 ff ff 01 ff 01 ff ff 00 ff 00 ff 38 ff ff 00 00 ff ff ff 01 ff 01 3c ff ff 00 ff 01 ff ff 01 ff 01 00 3c ff ff ff ff 3c 00 ff 00 ff 01 ff 01 ff ff ff ff 01 ff 01 00 ff ff 49 ff 01 00 ff 01 ff 01 ff 01 ff ff 48 ff 00 48 48 00 ff ff 00 48 ff 00 ff 00 ff ff 00 ff 48 ff 49 ff c0 ff ff 01 49 ff ff 01 48 ff 00 00 00 ff ff 00 ff 00 00 00 ff ff ff 01 ff 00 ff ff 00 3c ff 00 ff 00 49 ff ff ff ff 00 ff ff 48 ff 01 ff ff 01 ff 01 ff 00 ff 01 ff 01 00 ff 01 ff 01 00 ff 00 ff 48 ff 01 ff 48 ff 01 ff ff 49 48 ff ff 01 00 00 ff 00 ff ff 01 ff ff ff 01 48 ff ff ff 01 ff ff ff 01 ff 48 00 ff ff ff 01 ff 00 00 00 ff ff 01 00 ff 00 00 ff ff 01 ff 01 ff 01 ff 01 00 ff 01 ff 00 ff ff ff 00 ff 01 48 ff 01 48 48 48 48 49 ff 01 00 ff ff ff ff ff 00 ff 01 ff ff 00 00 ff 00 ff 00 ff 01 ff ff 00 ff 00 ff ff 01 ff 01 ff 00 ff 53 ff 48 ff ff 01 ff ff 01 ff ff 48 ff 01 ff 01 ff 48 ff 01 00 00 48 ff ff ff 01 49 ff ff ff 01 ff 01 ff ff ff ff 01 00 48 ff ff 01 ff 48 ff 01 ff ff 01 ff ff 01 ff 01 ff 01 ff 01 ff 00 00 ff 01 ff 01 ff ff 01 ff 01 ff 00 48 ff ff 01 ff 01 48 ff 01 ff 01 00 ff ff 01 ff ff 01 ff 01 00 ff ff ff 01 ff 48 ff ff 01 00 00 ff ff ff 01 48 00 ff 00 ff 01 ff 01 48 ff 53 ff ff 3c 00 ff 49
*/
