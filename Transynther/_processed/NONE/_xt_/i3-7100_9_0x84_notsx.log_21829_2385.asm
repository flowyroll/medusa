.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x26dc, %rbp
nop
nop
nop
sub $25576, %rax
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
xor $11162, %rdi
lea addresses_A_ht+0xc7c, %rdi
inc %r13
mov (%rdi), %edx
nop
inc %r15
lea addresses_A_ht+0x1817c, %rsi
lea addresses_WC_ht+0xc018, %rdi
clflush (%rdi)
nop
nop
sub $30037, %rax
mov $127, %rcx
rep movsq
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0xf7c, %r11
nop
nop
and $3862, %rbx
movb $0x51, (%r11)
nop
nop
nop
and $39914, %rbx

// Store
lea addresses_PSE+0x417c, %r11
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r11)
sub %rbx, %rbx

// Store
lea addresses_RW+0x18e7c, %r14
nop
nop
sub $55980, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
and %r12, %r12

// Load
lea addresses_normal+0xe43c, %rax
nop
nop
nop
inc %r14
mov (%rax), %r12
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_PSE+0x197c, %r14
nop
nop
nop
nop
nop
sub %r12, %r12
movb (%r14), %r11b
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
