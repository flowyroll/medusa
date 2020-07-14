.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x5756, %rbp
nop
nop
xor $25062, %r13
movb $0x51, (%rbp)
add $2049, %r12

// Store
lea addresses_WT+0x116a5, %r15
nop
nop
lfence
movw $0x5152, (%r15)
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_PSE+0x41c0, %rsi
lea addresses_UC+0x7580, %rdi
nop
nop
nop
and $16835, %rbp
mov $121, %rcx
rep movsb
nop
nop
nop
nop
nop
and $44965, %r15

// REPMOV
lea addresses_RW+0x83c0, %rsi
lea addresses_A+0xf5c0, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
and $33936, %r12

// REPMOV
mov $0x702fae0000000080, %rsi
mov $0x728, %rdi
xor %rbp, %rbp
mov $23, %rcx
rep movsb
nop
nop
nop
and $39696, %rcx

// Store
mov $0x9c0, %r13
xor $65031, %rcx
movl $0x51525354, (%r13)
nop
nop
and %r15, %r15

// Faulty Load
lea addresses_PSE+0x41c0, %r15
nop
nop
and $38925, %r13
mov (%r15), %ecx
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_NC', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 15}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
