.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rbx
lea addresses_UC_ht+0xdcb9, %r8
nop
nop
nop
nop
nop
sub $55820, %rax
mov $0x6162636465666768, %r12
movq %r12, (%r8)
nop
nop
nop
cmp $47498, %r14
lea addresses_WC_ht+0x79b9, %rbx
and %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x41b9, %r14
nop
nop
nop
nop
cmp %rbp, %rbp
movb (%r14), %r8b
nop
nop
nop
nop
nop
and $25904, %r14
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x189b9, %rbp
nop
nop
nop
dec %r9
mov (%rbp), %rdi
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
lea addresses_UC+0xe419, %rdi
cmp $50769, %rcx
movw $0x5152, (%rdi)
nop
nop
sub $15278, %r9

// Store
lea addresses_D+0x189b9, %r14
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WC+0x68a7, %r8
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r8)
nop
nop
add $24572, %r9

// Store
lea addresses_UC+0x141c, %rbp
nop
nop
nop
add $38253, %r9
movw $0x5152, (%rbp)
nop
dec %rdx

// Load
lea addresses_PSE+0x442, %rbp
nop
nop
add %rdi, %rdi
movb (%rbp), %r14b
nop
nop
nop
nop
mfence

// REPMOV
lea addresses_WC+0x134c1, %rsi
lea addresses_UC+0x151b9, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r8
mov $93, %rcx
rep movsq
nop
sub %rdi, %rdi

// Load
lea addresses_WC+0x9179, %r8
nop
nop
nop
nop
nop
sub %rdx, %rdx
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r14
nop
inc %r14

// Load
lea addresses_WT+0x183f9, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
movb (%rbp), %r8b
nop
nop
nop
inc %rsi

// Load
mov $0x604595000000043f, %rsi
nop
nop
nop
nop
sub $40065, %rdi
mov (%rsi), %r9w
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_D+0x189b9, %rdx
nop
nop
nop
nop
xor $562, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
add %r8, %r8

// Faulty Load
lea addresses_D+0x189b9, %rdi
clflush (%rdi)
nop
nop
and %rsi, %rsi
mov (%rdi), %cx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
