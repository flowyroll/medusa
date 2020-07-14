.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1c9fa, %rsi
lea addresses_D_ht+0x6fb6, %rdi
nop
and %r12, %r12
mov $38, %rcx
rep movsb
nop
nop
nop
nop
sub $31293, %r10
lea addresses_D_ht+0x17c4c, %r10
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xc202, %r10
nop
nop
nop
nop
and $48386, %r8
movw $0x6162, (%r10)
nop
nop
nop
nop
cmp $820, %rbx
lea addresses_normal_ht+0x27ba, %rsi
nop
xor %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
xor $7747, %rbx
lea addresses_A_ht+0x1187a, %rsi
nop
add $58873, %r12
movw $0x6162, (%rsi)
nop
nop
xor %r8, %r8
lea addresses_A_ht+0xe57a, %rdi
nop
nop
nop
nop
nop
add $10372, %rbx
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x14220, %r10
cmp %rcx, %rcx
movups (%r10), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1937a, %r8
nop
nop
cmp $50809, %rsi
movb $0x61, (%r8)
nop
nop
nop
cmp $52686, %r8
lea addresses_D_ht+0x1e3fa, %rsi
nop
nop
nop
sub $44380, %r12
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbx
nop
nop
nop
nop
cmp $31890, %rdi
lea addresses_normal_ht+0x2c12, %r10
cmp $42673, %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
nop
nop
add %rbx, %rbx
lea addresses_D_ht+0x1da7a, %rbx
nop
nop
nop
cmp %r12, %r12
mov (%rbx), %rdi
nop
nop
and $29910, %r8
lea addresses_A_ht+0x1c782, %rsi
cmp $59003, %r12
mov (%rsi), %r8
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0xd0fa, %r10
nop
nop
add %rbx, %rbx
mov (%r10), %si
nop
nop
nop
and $48541, %r10
lea addresses_UC_ht+0xcd4e, %r12
cmp $28845, %rcx
movb (%r12), %bl
nop
inc %r12
lea addresses_A_ht+0x14a3a, %rsi
lea addresses_UC_ht+0x1b57a, %rdi
xor $36871, %r10
mov $127, %rcx
rep movsw
nop
and $26241, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rbx

// Faulty Load
lea addresses_UC+0x737a, %rbp
nop
nop
nop
nop
and $31454, %r10
vmovups (%rbp), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'45': 21799, '46': 30}
45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45
*/
