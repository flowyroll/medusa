.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x2763, %r12
nop
nop
add %rsi, %rsi
mov (%r12), %rbx
nop
nop
nop
nop
cmp $4920, %r11
lea addresses_D_ht+0x1a057, %rsi
lea addresses_WC_ht+0xa97, %rdi
and %r13, %r13
mov $34, %rcx
rep movsw
cmp %rdi, %rdi
lea addresses_D_ht+0x8d03, %rsi
lea addresses_UC_ht+0x1da57, %rdi
nop
xor $20632, %r13
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
and $19081, %rsi
lea addresses_normal_ht+0xfd97, %rdi
nop
nop
inc %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rdi)
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0x6606, %rsi
nop
nop
xor $10280, %r11
movups (%rsi), %xmm3
vpextrq $1, %xmm3, %rcx
and %r12, %r12
lea addresses_D_ht+0x8b17, %r13
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%r13)
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x1e97, %rsi
lea addresses_WC_ht+0xab3c, %rdi
nop
nop
nop
xor $39914, %rdx
mov $107, %rcx
rep movsq
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x5be9, %r13
nop
sub $49573, %rdi
movw $0x6162, (%r13)
nop
nop
xor $63455, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0xef97, %r14
nop
nop
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%r14)
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_D+0x883f, %rdi
sub $13401, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%rdi)
nop
nop
xor $37841, %r15

// Load
lea addresses_US+0x10857, %r15
nop
nop
nop
nop
xor $32261, %r10
movb (%r15), %r14b
nop
nop
nop
nop
inc %r14

// Load
lea addresses_D+0xed60, %rbx
nop
nop
nop
cmp $65086, %rbp
movb (%rbx), %r10b
nop
nop
nop
nop
nop
add $31666, %rbp

// Store
lea addresses_UC+0x1e897, %rax
nop
nop
nop
nop
nop
and $32354, %rbx
movb $0x51, (%rax)
nop
xor $35678, %r15

// Store
lea addresses_WC+0xb297, %r14
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_A+0x4a97, %r10
nop
nop
nop
nop
sub %rbp, %rbp
movb (%r10), %r14b
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'00': 101}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
