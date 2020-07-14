.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x115dc, %rsi
lea addresses_UC_ht+0x1165c, %rdi
nop
nop
nop
add %r8, %r8
mov $123, %rcx
rep movsb
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x1e5ec, %rsi
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1525c, %rsi
nop
nop
nop
nop
sub $53214, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x225c, %r9
and $39422, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r9)
sub $18878, %r9
lea addresses_WC_ht+0x11f34, %r9
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x4e5c, %rsi
nop
nop
add $57350, %rcx
movb (%rsi), %r9b
nop
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0x1449c, %rbx
nop
nop
nop
cmp %r8, %r8
mov (%rbx), %r13w
nop
cmp $1952, %rcx
lea addresses_WC_ht+0x1825c, %rsi
lea addresses_WT_ht+0xbe9c, %rdi
nop
nop
nop
nop
nop
xor $49177, %rdx
mov $12, %rcx
rep movsl
and $27848, %r8
lea addresses_UC_ht+0xcb5c, %rsi
xor $43483, %r8
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
add $43518, %r13
lea addresses_UC_ht+0x1967c, %rdi
nop
nop
nop
nop
sub $33449, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
sub $57832, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rdx
push %rsi

// Store
mov $0x436ffe000000025c, %r13
nop
dec %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%r13)
nop
nop
inc %r9

// Faulty Load
lea addresses_WT+0x1d65c, %r15
nop
nop
nop
nop
nop
add $44449, %r10
mov (%r15), %rdx
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'39': 98}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
