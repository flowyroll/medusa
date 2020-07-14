.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_normal+0x1da59, %rdx
clflush (%rdx)
nop
nop
and %rbp, %rbp
mov (%rdx), %ax
nop
and %rdx, %rdx

// REPMOV
lea addresses_normal+0x1621a, %rsi
lea addresses_normal+0xf7d9, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $111, %rcx
rep movsb
nop
nop
sub %rcx, %rcx

// Load
lea addresses_US+0x154d9, %rdi
nop
nop
cmp $1610, %rsi
movb (%rdi), %r11b
nop
nop
inc %r11

// Store
lea addresses_A+0x17bd9, %r9
clflush (%r9)
nop
nop
nop
nop
add $52259, %rsi
movw $0x5152, (%r9)
nop
nop
nop
nop
add $44628, %rsi

// Store
lea addresses_A+0x785d, %rcx
nop
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rcx)
dec %rcx

// Store
mov $0xbd9, %r11
cmp %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0xf3d9, %rdi
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r9
movq %r9, (%rdi)
cmp $7593, %rax

// Faulty Load
lea addresses_A+0x17bd9, %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%rdx), %eax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 189}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
