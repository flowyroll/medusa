.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdx

// Store
mov $0x48273e0000000b74, %r12
nop
nop
nop
nop
nop
sub $11274, %rcx
movb $0x51, (%r12)

// Exception!!!
nop
nop
xor %rdx, %rdx
div %rdx
nop
nop
mfence

// Store
lea addresses_D+0x1de24, %r8
nop
nop
nop
cmp $50723, %rbx
movl $0x51525354, (%r8)
nop
nop
xor $26077, %r8

// Faulty Load
lea addresses_D+0x1de24, %r8
mfence
mov (%r8), %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'7d': 1}
7d
*/
