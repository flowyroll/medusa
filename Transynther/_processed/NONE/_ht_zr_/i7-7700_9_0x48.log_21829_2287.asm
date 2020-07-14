.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xe96a, %rdx
nop
nop
nop
nop
xor $31938, %rbx
mov (%rdx), %esi
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_WC_ht+0xcc0a, %rsi
lea addresses_UC_ht+0x18f8e, %rdi
nop
sub $57416, %r14
mov $12, %rcx
rep movsl
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x29aa, %rsi
nop
nop
nop
nop
and $20664, %rdi
movb (%rsi), %cl
sub $47907, %rcx
lea addresses_WC_ht+0xe316, %rsi
nop
nop
nop
nop
sub $47503, %rcx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
xor $10545, %r14
lea addresses_UC_ht+0x1ce29, %rsi
lea addresses_WC_ht+0x11eee, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $10, %rcx
rep movsl
nop
nop
xor $51196, %rbx
lea addresses_normal_ht+0xb056, %rdi
sub $40903, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0x8922, %rdx
nop
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x166b6, %rsi
lea addresses_WT_ht+0x6346, %rdi
nop
nop
nop
nop
and $8864, %r14
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_A+0x446a, %rsi
nop
nop
xor $23485, %r12
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'48': 268, '46': 13197, '00': 8364}
46 46 46 00 00 46 00 46 00 46 46 00 46 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 46 46 46 00 46 46 00 46 00 46 46 00 46 48 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 46 00 46 00 46 46 00 46 00 46 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 00 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 48 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 00 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 46 48 00 46 00 46 46 46 00 46 46 00 46 00 46 46 00 00 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 46 46 46 00 46 00 00 48 46 00 46 00 46 00 46 46 00 46 48 46 46 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 00 00 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 46 46 00 46 46 00 46 00 46 00 46 46 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 00 46 46 00 46 46 00 46 00 46 46 46 00 46 00 46 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 00 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 48 00 46 00 46 46 46 00 46 48 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 00 46 46 00 46 00 46 00 46 00 46 46 00 46 48 00 46 00 46 46 00 00 00 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 00 46 00 46 00 46 48 00 46 00 46 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 48 46 00 46 00 46 00 46 46 00 46 46 46 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 00 46 46 00 46 46 00 46 00 46 00 46 46 00 46 48 00 46 00 46 46 00 46 46 00 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 00 00 46 46 00 46 46 00 46 00 46 00 00 46 46 46 00 46 46 00 46 00 46 46 00 46 46 00 46 00 46 46 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 00 46 46 00 46 00 46 46 00 46 46 00 46 48 00 46 00 46 46 00 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 46 00 46 00 46 00 46 46 00 46 00 46 46 46 00 46 00 46 46 00 46 00 46 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 00 46 00 46 46 00 46 00 46 00 46 46 00 46 46 00 46 46 00 46 00 46 00
*/
