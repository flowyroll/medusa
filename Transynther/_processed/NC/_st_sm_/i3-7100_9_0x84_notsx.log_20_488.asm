.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1e057, %rsi
lea addresses_normal_ht+0x18fd7, %rdi
nop
inc %r14
mov $67, %rcx
rep movsb
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x15697, %rsi
lea addresses_A_ht+0x1e508, %rdi
xor $49853, %r10
mov $20, %rcx
rep movsb
nop
sub %rdx, %rdx
lea addresses_D_ht+0x15507, %rsi
lea addresses_WT_ht+0x1c1f7, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $118, %rcx
rep movsb
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x11d7f, %rsi
lea addresses_normal_ht+0x9d17, %rdi
nop
add $49227, %r10
mov $34, %rcx
rep movsl
sub $52012, %rsi
lea addresses_WC_ht+0x1b285, %rsi
lea addresses_WT_ht+0x1a57, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $82, %rcx
rep movsw
nop
nop
nop
xor $23801, %r11
lea addresses_UC_ht+0x1edc5, %rsi
lea addresses_A_ht+0x184ef, %rdi
nop
nop
nop
inc %r8
mov $51, %rcx
rep movsw
nop
nop
inc %r11
lea addresses_UC_ht+0x17c77, %rdi
nop
nop
xor %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and $56815, %rdx
lea addresses_D_ht+0x182bf, %r11
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
nop
nop
sub $59675, %rdx
lea addresses_A_ht+0xbf7, %rsi
lea addresses_D_ht+0x3317, %rdi
nop
nop
nop
nop
add $23990, %r11
mov $18, %rcx
rep movsw
nop
and %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx

// Store
mov $0x7e7e1e0000000517, %r9
nop
nop
nop
inc %rcx
movb $0x51, (%r9)
nop
nop
nop
nop
dec %rcx

// Store
mov $0x7e7e1e0000000517, %r15
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r15)
nop
and $12021, %r15

// Store
mov $0x7e7e1e0000000517, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rdi)
nop
nop
nop
sub $34326, %rdi

// Load
mov $0xfb37a0000000545, %rcx
clflush (%rcx)
nop
nop
nop
nop
dec %rdi
mov (%rcx), %dx
nop
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_RW+0x116f7, %r9
nop
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
cmp $46820, %rdx

// Faulty Load
mov $0x7e7e1e0000000517, %r14
nop
nop
add %r15, %r15
mov (%r14), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'52': 20}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
