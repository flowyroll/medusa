.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb4ab, %r10
nop
nop
nop
nop
nop
xor $3485, %r14
movw $0x6162, (%r10)
xor $11249, %rsi
lea addresses_A_ht+0xf183, %rsi
lea addresses_WT_ht+0xdf83, %rdi
nop
xor $26520, %rbp
mov $4, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x16253, %rsi
lea addresses_normal_ht+0x4483, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $35, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1d96d, %rcx
nop
add %rbx, %rbx
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
sub $135, %rdi
lea addresses_WC_ht+0x5b83, %rsi
inc %rdi
mov (%rsi), %r10w
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rsi

// Faulty Load
mov $0x983, %rsi
nop
nop
nop
nop
nop
xor $1152, %r12
mov (%rsi), %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 69}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
