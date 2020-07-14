.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1ce8d, %rsi
lea addresses_WC_ht+0x7e8d, %rdi
nop
nop
dec %r8
mov $17, %rcx
rep movsl
nop
nop
nop
nop
nop
and $46741, %rbx
lea addresses_A_ht+0x174fd, %rbx
nop
nop
and $38467, %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_UC+0xf98d, %rbp
sub %r13, %r13
mov (%rbp), %dx
nop
nop
add $32464, %rdx

// REPMOV
lea addresses_PSE+0xc78d, %rsi
lea addresses_UC+0xe88d, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r10
mov $54, %rcx
rep movsb
nop
nop
add $40842, %r13

// Store
mov $0x48d2b2000000048d, %r10
clflush (%r10)
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovntdq %ymm6, (%r10)
add %rbp, %rbp

// Store
mov $0x14f, %rdi
nop
nop
nop
nop
nop
cmp $9658, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_normal+0xba8d, %r10
nop
nop
nop
dec %r13
movl $0x51525354, (%r10)
nop
nop
cmp %rdi, %rdi

// Faulty Load
mov $0x1b8d54000000068d, %r13
add %rdx, %rdx
mov (%r13), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
