.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15665, %rsi
lea addresses_A_ht+0x1d275, %rdi
nop
nop
nop
nop
sub $14423, %r14
mov $94, %rcx
rep movsq
nop
nop
nop
and $56083, %rbp
lea addresses_WT_ht+0x1871d, %rbx
clflush (%rbx)
nop
nop
sub $34070, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
cmp $7948, %rsi
lea addresses_normal_ht+0x10c45, %rbp
nop
nop
sub $51317, %r14
movw $0x6162, (%rbp)
nop
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x24e5, %rsi
lea addresses_WT_ht+0xa2e5, %rdi
nop
add %rbp, %rbp
mov $104, %rcx
rep movsw
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x1b084, %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r11)
and %rsi, %rsi
lea addresses_A_ht+0x152e5, %rsi
lea addresses_WT_ht+0x129e5, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rbp
mov $31, %rcx
rep movsq
nop
nop
nop
nop
and $51313, %rdi
lea addresses_WC_ht+0x1e665, %rsi
lea addresses_WC_ht+0x10765, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $61, %rcx
rep movsb
nop
nop
and $42186, %r9
lea addresses_A_ht+0x5d3f, %r9
nop
nop
nop
nop
nop
add $27764, %r11
movb (%r9), %r14b
nop
add %rbx, %rbx
lea addresses_D_ht+0x6c65, %r14
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r14)
nop
nop
sub $6135, %rsi
lea addresses_D_ht+0x2505, %rdi
nop
nop
nop
cmp $15255, %r9
movb $0x61, (%rdi)
nop
and $18518, %rcx
lea addresses_A_ht+0x1da65, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rbx)
xor $62749, %rcx
lea addresses_WT_ht+0x16c15, %r11
clflush (%r11)
nop
nop
sub $43008, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
and $0xffffffffffffffc0, %r11
movntdq %xmm7, (%r11)
nop
nop
nop
nop
add $18714, %rsi
lea addresses_WC_ht+0xae65, %rsi
lea addresses_D_ht+0x1c265, %rdi
nop
nop
nop
nop
sub %r14, %r14
mov $122, %rcx
rep movsb
xor $49428, %r9
lea addresses_A_ht+0x15065, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rdi)
sub $59463, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_A+0xe4c4, %rbx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rbx), %r14
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_US+0x15a65, %r12
nop
nop
nop
nop
nop
add %r14, %r14
movb (%r12), %bl
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 120}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
