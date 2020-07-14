.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r8
lea addresses_WT_ht+0x18a7a, %r10
nop
nop
xor $10570, %r15
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r8
nop
cmp $9779, %r14
lea addresses_A_ht+0x12cfa, %r12
nop
nop
and $17051, %r13
mov (%r12), %r14d
cmp $30583, %r10
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_UC+0xc4fa, %rbx
nop
nop
and $47339, %r8
movw $0x5152, (%rbx)
nop
nop
nop
xor %r8, %r8

// Faulty Load
lea addresses_US+0x194fa, %r9
xor $14490, %rsi
mov (%r9), %r10d
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 9}}
{'52': 15, '00': 1}
52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52
*/
