.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x12398, %r12
nop
nop
nop
nop
dec %rbp
movb (%r12), %r14b
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x19c18, %rsi
lea addresses_UC_ht+0xe128, %rdi
sub %r12, %r12
mov $60, %rcx
rep movsw
nop
nop
nop
nop
xor $26701, %rcx
lea addresses_normal_ht+0xf563, %r14
sub %r11, %r11
mov (%r14), %cx
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x3458, %rsi
lea addresses_D_ht+0x168b8, %rdi
clflush (%rsi)
nop
add $42438, %rbp
mov $59, %rcx
rep movsw
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x1e5ae, %r12
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r14
movq %r14, (%r12)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1df18, %rsi
nop
nop
add %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x10d70, %rsi
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
xor $25701, %r11
lea addresses_normal_ht+0x1b098, %r11
nop
nop
nop
nop
nop
sub $31010, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x3898, %rsi
lea addresses_WC_ht+0x123d4, %rdi
nop
nop
nop
inc %r10
mov $63, %rcx
rep movsq
nop
nop
nop
sub $14614, %r12
lea addresses_WT_ht+0x3498, %r12
cmp $37554, %rcx
mov (%r12), %r14
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x1a098, %r11
nop
xor %r10, %r10
mov (%r11), %r12d
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x4098, %rsi
lea addresses_A_ht+0x5998, %rdi
nop
nop
sub %r14, %r14
mov $88, %rcx
rep movsw
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x5098, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
and $0xffffffffffffffc0, %rdi
movntdqa (%rdi), %xmm0
vpextrq $0, %xmm0, %rsi
sub %r11, %r11
lea addresses_normal_ht+0x113b8, %rsi
lea addresses_WC_ht+0x17598, %rdi
nop
add $7220, %r14
mov $12, %rcx
rep movsl
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx

// Store
lea addresses_WC+0x52a8, %r10
nop
nop
nop
nop
cmp $33058, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movntdq %xmm6, (%r10)
nop
nop
nop
nop
sub $63054, %r11

// Load
lea addresses_WC+0x17a28, %rcx
nop
xor %rbx, %rbx
movb (%rcx), %r11b
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_D+0x18cc0, %rbx
nop
sub %r10, %r10
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_A+0x1d198, %r13
and %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r13
vmovntdq %ymm0, (%r13)
nop
nop
nop
xor $2797, %r11

// Faulty Load
lea addresses_WT+0x3098, %rcx
nop
nop
nop
nop
and %r8, %r8
mov (%rcx), %ebx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'39': 4}
39 39 39 39
*/
