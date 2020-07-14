.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x5a6b, %rsi
lea addresses_PSE+0x1da6b, %rdi
nop
add %r14, %r14
mov $26, %rcx
rep movsq
and $41059, %r12

// Store
mov $0x7e3c090000000e6b, %r14
nop
nop
nop
add %rbp, %rbp
movb $0x51, (%r14)
dec %r12

// Store
lea addresses_PSE+0x1ccc7, %rdi
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12

// Store
mov $0x60a9b800000000ab, %r12
nop
nop
nop
and $27346, %r10
movw $0x5152, (%r12)
nop
nop
nop
xor $41633, %r10

// Store
lea addresses_PSE+0x95eb, %rsi
nop
nop
nop
and %r14, %r14
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add %r12, %r12

// Store
lea addresses_RW+0x12fdf, %rdi
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
xor %rsi, %rsi

// Store
lea addresses_UC+0x1b86b, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
cmp $23924, %r12

// Load
lea addresses_RW+0xb86b, %rsi
nop
nop
nop
nop
add %rdi, %rdi
mov (%rsi), %bp
nop
nop
dec %rdi

// Store
lea addresses_PSE+0x1228b, %r12
nop
nop
nop
nop
cmp $62280, %rsi
movl $0x51525354, (%r12)
nop
nop
sub %r14, %r14

// Store
mov $0x1000, %r10
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_normal+0x466b, %r10
nop
nop
nop
dec %rdi
mov (%r10), %bp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 94}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
