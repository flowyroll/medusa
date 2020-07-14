.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rcx
lea addresses_D_ht+0x1e910, %r10
nop
nop
nop
nop
nop
cmp %r14, %r14
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r8
inc %rcx
pop %rcx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1af8, %r10
nop
nop
nop
and $34575, %r14
movl $0x51525354, (%r10)
and %r14, %r14

// Store
lea addresses_D+0xa7b8, %r11
xor %rcx, %rcx
movw $0x5152, (%r11)
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x1af8, %rdi
nop
nop
nop
nop
nop
sub $27654, %r15
movb (%rdi), %r11b
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': True, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'54': 2}
54 54
*/
