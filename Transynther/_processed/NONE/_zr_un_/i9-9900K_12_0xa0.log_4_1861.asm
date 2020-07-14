.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x1bf7a, %rsi
lea addresses_A+0x6d7a, %rdi
nop
nop
add %r15, %r15
mov $97, %rcx
rep movsb
nop
nop
nop
sub $50037, %rdi

// Store
lea addresses_US+0x1697a, %rcx
cmp $57047, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
and $46494, %rdi

// Faulty Load
lea addresses_UC+0xfa7a, %rdi
nop
nop
nop
and $57328, %rsi
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'7f': 2, '00': 2}
7f 7f 00 00
*/
