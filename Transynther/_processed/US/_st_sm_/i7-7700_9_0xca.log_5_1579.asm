.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rax
push %rdi

// Store
lea addresses_US+0x5bf4, %r8
nop
nop
nop
nop
nop
sub %r15, %r15
movb $0x51, (%r8)
nop
nop
nop
and $12886, %r10

// Store
lea addresses_US+0x5bf4, %r11
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_WC+0x14ef4, %r10
nop
nop
nop
nop
dec %r12
movl $0x51525354, (%r10)
nop
nop
dec %r10

// Faulty Load
lea addresses_US+0x5bf4, %rdi
nop
nop
cmp $47587, %r15
mov (%rdi), %r12d
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 5}
58 58 58 58 58
*/
