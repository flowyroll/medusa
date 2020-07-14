.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_RW+0x12472, %r8
nop
nop
nop
nop
nop
and $13810, %rbp
mov (%r8), %edi
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x4252, %r14
nop
nop
nop
dec %r13
movb $0x51, (%r14)
nop
nop
xor %r14, %r14

// Store
lea addresses_WC+0xf9be, %rbx
clflush (%rbx)
nop
xor %r13, %r13
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_A+0x8e72, %rdi
nop
nop
nop
nop
nop
xor $40654, %rbp
mov (%rdi), %r14
nop
nop
nop
inc %r13

// Store
mov $0x33a, %r13
cmp $44171, %rdi
movb $0x51, (%r13)
nop
nop
nop
add $24992, %rax

// Load
lea addresses_PSE+0x11a73, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rax
mov (%rdi), %r8w
and $21081, %r8

// Store
lea addresses_WT+0xba72, %rbp
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rbp)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r13
sub %r8, %r8

// Store
lea addresses_D+0x6d42, %rdi
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0xe472, %r14
nop
nop
nop
xor $9930, %r13
movb (%r14), %al
lea oracles, %rbp
and $0xff, %rax
shlq $12, %rax
mov (%rbp,%rax,1), %rax
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 3}
33 33 33
*/
