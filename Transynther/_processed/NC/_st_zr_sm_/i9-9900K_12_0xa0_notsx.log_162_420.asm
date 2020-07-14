.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rax
push %rbx
push %rdi
lea addresses_A_ht+0x14289, %rdi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%rdi), %r8w
nop
nop
nop
nop
inc %rax
pop %rdi
pop %rbx
pop %rax
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x14289, %rsi
lea addresses_PSE+0x1ddc9, %rdi
nop
xor $12310, %r13
mov $50, %rcx
rep movsq
nop
nop
add $52060, %rdi

// Store
mov $0x6e0, %rbp
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_RW+0x12ecf, %rbp
nop
nop
add %rsi, %rsi
mov (%rbp), %r13
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_WC+0xbab9, %r13
nop
nop
nop
nop
dec %rcx
movl $0x51525354, (%r13)
nop
nop
nop
cmp %rdi, %rdi

// Load
lea addresses_PSE+0x7dc9, %rbp
nop
nop
and %rcx, %rcx
mov (%rbp), %rdi
add $55217, %r13

// Store
mov $0x149, %rsi
clflush (%rsi)
and $41812, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x1fed, %rcx
xor %rbp, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rcx)
nop
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1b567, %r13
nop
nop
nop
xor $54975, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %r13
vmovaps %ymm5, (%r13)
nop
nop
cmp $1756, %rax

// Store
mov $0x10363c0000000dc9, %rdx
nop
nop
nop
xor $44049, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%rdx)
nop
sub $37170, %r13

// Load
lea addresses_normal+0x7a69, %rsi
nop
nop
inc %rdi
mov (%rsi), %ebp
sub %rsi, %rsi

// Faulty Load
mov $0x10363c0000000dc9, %rdx
nop
sub $54564, %rsi
mov (%rdx), %r13w
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'58': 145, '00': 17}
58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58
*/
