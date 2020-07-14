.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18230, %r10
add %r11, %r11
mov (%r10), %r13d
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1d9a0, %rbx
nop
nop
add $33157, %r10
mov (%rbx), %r14w
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0x15270, %rsi
lea addresses_WC_ht+0x1c578, %rdi
nop
nop
nop
dec %rbx
mov $87, %rcx
rep movsb
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x1ffb2, %r12
cmp %r14, %r14
movl $0x51525354, (%r12)
nop
nop
nop
nop
sub %r13, %r13

// Store
mov $0x890, %rcx
nop
nop
nop
nop
nop
add %r10, %r10
movw $0x5152, (%rcx)
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_US+0x5d90, %r14
nop
cmp $38486, %r13
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'7a': 1, 'da': 1, '77': 2}
77 77 7a da
*/
