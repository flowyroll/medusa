.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5407, %rbx
nop
nop
dec %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
sub $33584, %r14
lea addresses_WC_ht+0x16407, %rsi
lea addresses_WT_ht+0x11aa7, %rdi
nop
nop
nop
cmp $58388, %r9
mov $6, %rcx
rep movsb
nop
sub %rbx, %rbx
lea addresses_A_ht+0x494f, %rsi
lea addresses_normal_ht+0x5c35, %rdi
nop
nop
nop
inc %r12
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0xe407, %rbx
nop
nop
nop
xor %rcx, %rcx
movb (%rbx), %r14b
nop
nop
nop
nop
and $10730, %r9
lea addresses_A_ht+0xb3a7, %rsi
lea addresses_A_ht+0xc6f5, %rdi
nop
inc %r13
mov $81, %rcx
rep movsb
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1a6b3, %r14
nop
nop
nop
sub %r13, %r13
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
cmp $21791, %rbx
lea addresses_normal_ht+0x14a07, %rdi
nop
nop
nop
nop
add %r14, %r14
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0xd907, %rsi
lea addresses_WC_ht+0x6407, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r13
mov $95, %rcx
rep movsw
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rax
push %rcx
push %rdx
push %rsi

// Load
lea addresses_US+0x1ea87, %rax
xor %r8, %r8
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r10
nop
nop
add %r11, %r11

// Store
lea addresses_UC+0x49ff, %r10
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_UC+0x16a90, %rax
cmp %rsi, %rsi
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_A+0x1e587, %rcx
add $61635, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_US+0x1ec07, %r10
nop
nop
nop
nop
nop
and $36874, %r11
mov (%r10), %r8d
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'00': 168}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
