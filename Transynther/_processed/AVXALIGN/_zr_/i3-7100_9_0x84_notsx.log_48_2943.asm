.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11281, %r14
nop
nop
nop
inc %rax
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x3001, %rsi
lea addresses_A_ht+0x2b81, %rdi
nop
nop
and $37336, %rdx
mov $70, %rcx
rep movsq
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x4681, %rsi
lea addresses_WT_ht+0x6719, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
and %r13, %r13
mov $2, %rcx
rep movsq
nop
nop
nop
and $64909, %r14
lea addresses_UC_ht+0x16901, %rsi
lea addresses_normal_ht+0x12e81, %rdi
nop
nop
nop
and %rbp, %rbp
mov $92, %rcx
rep movsl
cmp $44707, %rcx
lea addresses_D_ht+0x1c881, %rdx
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
nop
nop
nop
xor $59846, %r13
lea addresses_WT_ht+0x2e81, %rsi
lea addresses_WC_ht+0x6f01, %rdi
nop
cmp %rax, %rax
mov $69, %rcx
rep movsb
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x1a681, %r13
nop
dec %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r13)
nop
and $37092, %rcx
lea addresses_UC_ht+0xb181, %rsi
lea addresses_D_ht+0x1bd81, %rdi
nop
nop
nop
nop
xor $40030, %r14
mov $41, %rcx
rep movsq
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0xad15, %rbp
cmp %rsi, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
cmp $39660, %rbp
lea addresses_normal_ht+0x1a981, %rsi
lea addresses_D_ht+0x9681, %rdi
inc %rdx
mov $14, %rcx
rep movsl
add $18428, %rdx
lea addresses_normal_ht+0xe589, %rbp
nop
nop
nop
nop
nop
cmp $8590, %rax
mov (%rbp), %r13
nop
sub $62081, %rax
lea addresses_UC_ht+0x21c1, %r13
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
dec %r13
lea addresses_A_ht+0x10b19, %rdx
cmp %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rdx)
nop
nop
dec %rdx
lea addresses_WC_ht+0x1d621, %rsi
lea addresses_A_ht+0x1b681, %rdi
nop
dec %r13
mov $27, %rcx
rep movsq
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_UC+0x8181, %r11
nop
nop
nop
nop
xor $16890, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r11)
sub %rax, %rax

// Faulty Load
lea addresses_US+0x1ae81, %rbp
nop
nop
nop
and %r9, %r9
movb (%rbp), %al
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
