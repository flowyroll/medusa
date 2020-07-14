.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rsi
lea addresses_WT_ht+0xfd53, %r13
nop
nop
nop
sub $53929, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r13)
nop
sub $56086, %rax
pop %rsi
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x2053, %rsi
lea addresses_WC+0x1e153, %rdi
and %r9, %r9
mov $19, %rcx
rep movsb
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_WC+0x1e153, %rsi
nop
nop
inc %rax
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 237, '16': 44}
00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 00 16 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 16 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 16 00 16 00 00 16 00 00 00 00 00 00 00 16 00 16 00 00 00 00 16 00 00 00 16 00 00 00 00 16 00 00 00 00 00 00 16 00 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 16 16 00 00 00 00 00 00 00 00 00 00 16 00 00 16 00 00 00 00 00 00 16 00 00 00 00 00 00 16 00 00 16 00 00 16 00 16 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 16 00 00 16 00 00 16 00 00 00 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 16 00 16 16 00 00 00 00 00 00 00 00 16 00 00 00 00 00 00 00 00 00 00 00 16 00 16 00 00 00 00 16 16 00 00 00 00 00 00 16 00 00 00 00 16 00 00 00 00 00 00 00 00 00 16 16 00
*/
