.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x103b1, %r9
and $11327, %r15
movb $0x61, (%r9)
and %r8, %r8
lea addresses_A_ht+0x2db1, %rsi
lea addresses_WC_ht+0xde31, %rdi
nop
nop
nop
nop
sub $2109, %r12
mov $47, %rcx
rep movsb
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x167b1, %r8
sub $5427, %rcx
movl $0x61626364, (%r8)
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x81b1, %r15
lfence
movb $0x51, (%r15)
nop
nop
nop
nop
sub %r10, %r10

// REPMOV
lea addresses_US+0x6df1, %rsi
lea addresses_D+0x2cb1, %rdi
nop
nop
nop
nop
nop
xor $18649, %rbx
mov $81, %rcx
rep movsb
nop
nop
nop
nop
xor $2146, %r10

// Load
lea addresses_A+0x85b1, %rbx
nop
nop
sub $29038, %r11
mov (%rbx), %rcx
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x9731, %r11
nop
nop
nop
nop
and %r10, %r10
movw $0x5152, (%r11)
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x10db1, %r15
nop
sub %r10, %r10
movups (%r15), %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_US'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'67': 32, '00': 14653, '60': 588, 'f0': 1, '46': 33, '18': 1, 'd0': 1, '45': 311, '28': 6209}
46 00 00 00 00 00 00 00 60 00 45 00 46 00 28 00 28 00 00 00 00 28 28 00 28 00 60 00 00 00 28 00 00 28 00 28 00 00 00 00 00 00 00 00 00 00 00 00 28 28 28 00 00 28 00 28 00 00 00 00 00 00 28 00 00 00 00 28 00 00 00 00 00 00 00 00 00 28 00 00 00 00 28 28 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 28 00 00 00 00 00 28 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 28 60 60 28 28 00 28 28 00 00 00 00 28 00 28 00 00 00 28 28 28 28 00 00 00 28 00 00 28 28 00 00 28 28 28 28 28 45 00 28 67 00 00 28 00 00 00 00 00 00 28 00 00 00 28 60 28 00 00 00 28 28 28 28 28 28 00 00 00 28 00 28 00 28 28 00 28 00 00 28 00 00 00 00 00 00 00 28 00 28 00 00 00 00 45 00 00 00 28 00 28 28 28 00 45 67 00 28 00 28 00 28 28 00 28 00 00 00 00 28 00 00 60 00 00 00 00 28 00 00 00 28 00 00 00 28 28 28 28 28 00 00 00 00 00 28 00 00 60 00 00 00 28 28 28 28 00 28 00 00 28 00 00 00 00 00 28 00 00 00 00 00 00 28 00 00 28 60 28 00 00 28 00 28 00 28 00 00 00 00 00 00 00 45 00 00 00 00 00 28 28 00 00 28 00 28 28 00 00 28 00 28 00 28 00 00 60 28 00 28 00 00 00 00 28 28 00 28 00 28 00 00 00 00 28 00 00 28 00 00 00 28 00 00 00 00 60 00 00 28 00 60 00 28 00 00 00 00 28 00 28 00 00 28 00 28 28 00 00 28 00 28 00 00 00 28 28 28 00 00 28 00 28 28 00 00 00 28 28 28 00 00 28 00 00 00 28 28 28 28 00 00 00 28 28 00 28 00 00 00 28 28 28 28 28 00 28 00 28 28 00 00 28 00 28 00 00 28 00 00 00 00 00 00 00 00 28 00 00 00 00 28 00 00 00 28 00 00 00 00 00 00 28 28 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 28 00 28 28 00 00 60 00 00 00 00 00 00 00 00 28 00 28 00 00 00 00 00 00 00 00 00 60 00 00 00 00 00 28 28 00 00 60 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 28 00 00 00 45 60 00 00 00 28 00 00 60 00 00 00 28 00 00 28 28 00 00 28 28 00 28 00 00 00 00 00 60 00 00 00 28 00 28 00 00 00 00 00 00 28 60 00 00 28 00 00 00 00 28 00 00 00 00 00 00 00 00 28 00 28 00 45 28 28 00 00 28 00 28 00 00 00 00 00 00 00 00 00 00 28 00 00 28 28 28 00 60 28 00 00 00 00 00 28 00 00 28 00 28 00 00 00 28 00 28 00 00 00 00 00 28 28 00 00 00 00 00 28 28 28 00 00 67 00 28 28 00 28 00 00 00 28 00 00 28 00 28 00 00 00 28 00 00 00 00 00 28 00 00 00 00 00 28 00 00 00 00 00 28 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 45 28 28 28 00 00 00 67 60 00 00 00 00 00 28 00 28 00 00 28 28 00 00 00 28 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 60 28 00 00 00 00 00 00 28 00 00 00 28 00 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 28 00 00 00 28 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 00 28 28 28 00 00 00 00 00 00 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 00 00 00 28 00 28 28 00 00 00 28 00 00 00 00 28 00 00 00 00 00 28 00 00 45 28 00 28 28 28 28 28 00 60 28 00 28 45 00 00 00 00 28 00 28 28 00 28 00 00 28 28 28 00 28 28 00 28 00 28 00 00 60 00 00 00 00 00 00 28 60 00 00 00 00 00 00 28 00
*/
