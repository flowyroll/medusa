.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_D_ht+0x1b83b, %rsi
nop
nop
nop
and $57277, %r15
movb (%rsi), %r14b
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0x3f23, %r10
nop
mfence
movb $0x61, (%r10)
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x63b, %rsi
nop
nop
nop
nop
nop
and $6407, %rax
mov (%rsi), %r10w
nop
nop
nop
nop
nop
xor $62152, %rbp
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r9
push %rax

// Faulty Load
lea addresses_A+0x1e63b, %rax
nop
nop
nop
nop
mfence
mov (%rax), %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'de': 1, 'e0': 79}
e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 de e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0 e0
*/
