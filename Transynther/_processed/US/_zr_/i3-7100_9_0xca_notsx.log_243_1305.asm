.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe2ef, %rsi
lea addresses_D_ht+0xe407, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $127, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $10922, %r11
lea addresses_A_ht+0x4e4a, %rcx
nop
xor $54720, %r14
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1525f, %rdi
nop
nop
nop
nop
nop
cmp $46184, %r12
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
inc %rdi
lea addresses_WT_ht+0xfa0f, %r14
nop
nop
nop
nop
nop
sub $1893, %r11
mov (%r14), %rsi
nop
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdx

// Load
lea addresses_D+0x170f, %rcx
nop
nop
nop
sub %rdx, %rdx
mov (%rcx), %r14
nop
nop
nop
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0xea0f, %r12
nop
nop
nop
nop
xor %rbx, %rbx
movups (%r12), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'00': 243}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
