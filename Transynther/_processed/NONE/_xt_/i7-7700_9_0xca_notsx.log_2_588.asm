.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x123e, %rax
and $47958, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rax)
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x11689, %rsi
lea addresses_WT_ht+0x241c, %rdi
clflush (%rsi)
cmp %rdx, %rdx
mov $68, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x1c6b4, %rsi
lea addresses_normal_ht+0x12404, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $75, %rcx
rep movsw
nop
sub %r14, %r14
lea addresses_UC_ht+0x131df, %rsi
lea addresses_normal_ht+0x55e8, %rdi
clflush (%rdi)
nop
and %r14, %r14
mov $23, %rcx
rep movsq
nop
nop
nop
xor $8774, %rdi
lea addresses_WT_ht+0x1d3c4, %rcx
clflush (%rcx)
nop
nop
cmp %rdx, %rdx
mov (%rcx), %r9
nop
add $24322, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
mov $0x210af9000000075c, %rsi
nop
nop
nop
nop
nop
dec %r14
movb $0x51, (%rsi)
nop
and $50590, %r9

// Store
lea addresses_normal+0xec04, %rcx
sub %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
xor $25679, %r14

// Load
lea addresses_UC+0x1aa84, %r9
nop
nop
nop
nop
nop
sub $101, %rbx
vmovups (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
and %rcx, %rcx

// Store
lea addresses_WC+0x17684, %rbx
nop
nop
nop
nop
cmp %r12, %r12
movw $0x5152, (%rbx)
xor %rcx, %rcx

// Store
lea addresses_US+0x2c54, %rbp
nop
and $61921, %rsi
movw $0x5152, (%rbp)
nop
nop
nop
nop
sub $33937, %rcx

// Faulty Load
lea addresses_PSE+0xbe84, %rbx
nop
xor $30441, %rsi
vmovups (%rbx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'33': 2}
33 33
*/
