.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x14f4f, %rsi
lea addresses_D_ht+0xb3c5, %rdi
nop
nop
nop
and %r13, %r13
mov $38, %rcx
rep movsq
nop
xor $4479, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x5765, %r15
nop
nop
nop
nop
add $58954, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r15)
inc %rsi

// REPMOV
lea addresses_PSE+0x9169, %rsi
lea addresses_WC+0x1ec65, %rdi
nop
nop
sub %rdx, %rdx
mov $1, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_UC+0x2d65, %rcx
nop
nop
nop
and $20030, %rdx
movb $0x51, (%rcx)
nop
nop
nop
nop
xor $59913, %rsi

// Faulty Load
lea addresses_WC+0x10165, %rcx
nop
nop
and $34729, %rdi
mov (%rcx), %dx
lea oracles, %rdx
and $0xff, %rdx
shlq $12, %rdx
mov (%rdx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
