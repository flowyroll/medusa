.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5e47, %rsi
lea addresses_WT_ht+0x1c1c7, %rdi
nop
nop
dec %rbp
mov $67, %rcx
rep movsq
nop
nop
nop
nop
nop
and $40202, %rdi
lea addresses_WC_ht+0x1e6ca, %r13
nop
nop
dec %rax
mov (%r13), %edi
inc %rbp
lea addresses_D_ht+0x10943, %rsi
lea addresses_WT_ht+0x5907, %rdi
nop
nop
nop
nop
nop
and $49028, %r13
mov $114, %rcx
rep movsw
dec %rcx
lea addresses_normal_ht+0x163a7, %rcx
sub %r14, %r14
mov (%rcx), %esi
nop
xor %rax, %rax
pop %rsi
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
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x4d3cae00000005c7, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $38922, %rcx
movb $0x51, (%rdi)
nop
nop
xor %rax, %rax

// Load
lea addresses_PSE+0x85c7, %rbx
nop
nop
nop
sub $17808, %rsi
movb (%rbx), %al
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WC+0x61c7, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_UC+0xf85c, %r14
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r14)
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_normal+0x3b77, %r14
nop
nop
nop
cmp $14140, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
sub %rdi, %rdi

// Faulty Load
mov $0x4d3cae00000005c7, %rbx
nop
nop
nop
nop
add %r11, %r11
movups (%rbx), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'46': 1}
46
*/
