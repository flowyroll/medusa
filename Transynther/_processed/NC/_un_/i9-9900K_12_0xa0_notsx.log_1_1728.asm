.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rcx
lea addresses_UC_ht+0x163f7, %rbp
nop
nop
nop
cmp %rcx, %rcx
mov (%rbp), %r8d
nop
nop
cmp $24098, %r13
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx

// Store
mov $0x36f19b00000006df, %r10
nop
nop
nop
nop
nop
and $64576, %r15
movb $0x51, (%r10)
nop
nop
nop
nop
cmp %r14, %r14

// Faulty Load
mov $0x3ee399000000043f, %rcx
clflush (%rcx)
nop
nop
nop
sub $56430, %r15
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'60': 1}
60
*/
