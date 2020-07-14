.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rdi
lea addresses_normal_ht+0x666c, %r10
nop
and %r9, %r9
movb $0x61, (%r10)
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x8f0c, %rdi
nop
nop
nop
nop
sub %r12, %r12
mov (%rdi), %r11
nop
and %r15, %r15
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbp
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0xed0c, %rdx
nop
cmp %r10, %r10
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
