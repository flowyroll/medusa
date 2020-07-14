.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x17d26, %r10
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %r10
movntdq %xmm2, (%r10)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x21d2, %rax
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rax)
nop
sub $43171, %r13
lea addresses_D_ht+0x8ed2, %r13
nop
nop
nop
and %rbp, %rbp
mov (%r13), %bx
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x9ad2, %rsi
lea addresses_WC_ht+0x109d2, %rdi
nop
nop
cmp %rax, %rax
mov $8, %rcx
rep movsw
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x7852, %rdi
nop
nop
dec %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x8d8c, %rbp
nop
nop
nop
xor %r14, %r14
mov (%rbp), %di
and $52345, %r10
lea addresses_WT_ht+0xb892, %r12
clflush (%r12)
nop
nop
nop
nop
nop
add $62586, %r10
movb $0x61, (%r12)
nop
xor $62886, %rcx
lea addresses_UC_ht+0x109d2, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%rsi), %ax
nop
nop
nop
nop
and $32963, %rax
lea addresses_WT_ht+0x62b2, %r14
nop
nop
sub %rdi, %rdi
mov (%r14), %rsi
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x127d2, %rsi
lea addresses_WT_ht+0x11dd2, %rdi
nop
nop
nop
nop
xor $7591, %rax
mov $30, %rcx
rep movsb
nop
nop
nop
dec %r10
lea addresses_D_ht+0xff8f, %rax
dec %rdi
mov (%rax), %r10
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x75d2, %rsi
lea addresses_A+0x1f8f2, %rdi
and %r12, %r12
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x13512, %rdx
sub %r12, %r12
movw $0x5152, (%rdx)
nop
nop
nop
dec %r12

// Store
lea addresses_UC+0x2fd2, %r8
nop
nop
xor %rsi, %rsi
movb $0x51, (%r8)
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0xd5d2, %rdi
add %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_RW+0x125d2, %rdi
xor $51073, %r12
mov (%rdi), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
