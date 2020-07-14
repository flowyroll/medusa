.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa5b1, %r9
nop
dec %r15
mov (%r9), %r14
nop
nop
nop
nop
and $31567, %r13
lea addresses_A_ht+0x19511, %rax
sub $23111, %rbp
movl $0x61626364, (%rax)
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x16631, %rsi
lea addresses_D_ht+0x1d883, %rdi
clflush (%rdi)
nop
nop
nop
add %r9, %r9
mov $121, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0xf431, %rsi
lea addresses_WC_ht+0x122f1, %rdi
nop
cmp %r9, %r9
mov $76, %rcx
rep movsq
nop
nop
nop
nop
nop
and $34192, %rdi
lea addresses_UC_ht+0x6f61, %r9
add $51928, %rax
mov (%r9), %di
nop
and $63795, %r9
lea addresses_D_ht+0x15ad1, %rsi
lea addresses_A_ht+0x5931, %rdi
nop
add $58346, %r14
mov $22, %rcx
rep movsl
lfence
lea addresses_normal_ht+0x13ee8, %rcx
nop
nop
add $31002, %rax
mov (%rcx), %r14d
nop
xor %r15, %r15
lea addresses_WT_ht+0x118b1, %rsi
lea addresses_UC_ht+0x9db1, %rdi
nop
xor %r14, %r14
mov $14, %rcx
rep movsq
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xe771, %r13
nop
nop
nop
inc %rcx
movw $0x5152, (%r13)
xor $20115, %rdx

// REPMOV
lea addresses_A+0x37b1, %rsi
lea addresses_D+0x8fb1, %rdi
nop
nop
nop
nop
cmp $39883, %rax
mov $126, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_D+0xf5b1, %r13
nop
nop
nop
nop
add $30355, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
add $31003, %rdx

// REPMOV
lea addresses_WC+0xeb91, %rsi
lea addresses_normal+0xb4bd, %rdi
xor %r13, %r13
mov $38, %rcx
rep movsq
nop
nop
inc %rbx

// REPMOV
lea addresses_RW+0x1b1f1, %rsi
lea addresses_PSE+0x1f7f1, %rdi
nop
nop
cmp $42737, %r13
mov $112, %rcx
rep movsb
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x129b1, %r15
nop
nop
nop
dec %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp $38399, %rbx

// Load
lea addresses_UC+0x14431, %rsi
nop
xor $24496, %rdi
movaps (%rsi), %xmm3
vpextrq $0, %xmm3, %rbx
nop
nop
nop
inc %rsi

// Load
lea addresses_normal+0xe89a, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov (%rdi), %r13w
add %rdi, %rdi

// Store
lea addresses_WC+0x19fb1, %rdx
nop
dec %rsi
movb $0x51, (%rdx)
nop
nop
nop
nop
and %r13, %r13

// Faulty Load
mov $0x2a29290000000db1, %rsi
nop
nop
nop
nop
sub $25326, %rcx
mov (%rsi), %bx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_RW', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
