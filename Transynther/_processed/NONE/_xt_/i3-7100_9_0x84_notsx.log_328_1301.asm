.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11973, %rsi
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
xor %rax, %rax
lea addresses_A_ht+0x10f83, %rdx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rdx)
sub %rbx, %rbx
lea addresses_WT_ht+0x107b, %rbx
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
and $0xffffffffffffffc0, %rbx
movaps %xmm6, (%rbx)
nop
nop
inc %r11
lea addresses_D_ht+0x9abb, %rsi
lea addresses_A_ht+0xeb04, %rdi
clflush (%rdi)
nop
sub %rdx, %rdx
mov $107, %rcx
rep movsq
nop
sub %r11, %r11
lea addresses_WC_ht+0x1207b, %rsi
lea addresses_D_ht+0x1da7b, %rdi
nop
nop
nop
nop
add $37913, %r14
mov $111, %rcx
rep movsw
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0x1da8b, %rsi
lea addresses_WC_ht+0x1177b, %rdi
clflush (%rsi)
nop
nop
nop
and %rdx, %rdx
mov $104, %rcx
rep movsw
sub %r14, %r14
lea addresses_D_ht+0x157fb, %rsi
lea addresses_normal_ht+0x187b, %rdi
nop
nop
nop
and %r14, %r14
mov $127, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x1cdca, %rdx
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%rdx), %r11b
and %rcx, %rcx
lea addresses_WT_ht+0xe1db, %rsi
lea addresses_UC_ht+0xde83, %rdi
nop
nop
nop
nop
nop
sub $27100, %rdx
mov $104, %rcx
rep movsq
nop
add $33262, %r14
lea addresses_A_ht+0x3efb, %rsi
lea addresses_UC_ht+0xc13b, %rdi
xor $58587, %rax
mov $74, %rcx
rep movsb
nop
dec %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Load
lea addresses_RW+0xb75b, %rdi
nop
cmp %rdx, %rdx
mov (%rdi), %bx
nop
nop
cmp $40319, %rdx

// Load
lea addresses_D+0x1ec1b, %r9
nop
inc %r13
movb (%r9), %r15b
nop
nop
nop
nop
and $9682, %r9

// Store
lea addresses_normal+0x8a7b, %r15
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
nop
nop
cmp $43740, %r9

// Store
mov $0x6f7c620000000a57, %rdx
nop
nop
xor $34355, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_RW+0x6bc3, %rdi
nop
sub %rdx, %rdx
movb $0x51, (%rdi)
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_WT+0x1b27b, %rdx
nop
dec %rdi
mov (%rdx), %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'39': 328}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
