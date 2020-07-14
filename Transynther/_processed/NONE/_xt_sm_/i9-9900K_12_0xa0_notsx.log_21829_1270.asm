.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6680, %rsi
lea addresses_D_ht+0x568, %rdi
nop
nop
nop
nop
inc %rbx
mov $100, %rcx
rep movsl
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x12a80, %rsi
lea addresses_A_ht+0x1d500, %rdi
clflush (%rsi)
nop
nop
xor %r14, %r14
mov $78, %rcx
rep movsw
nop
nop
nop
add $26036, %rbx
lea addresses_A_ht+0x14738, %r13
nop
nop
nop
nop
add %rbp, %rbp
movb (%r13), %cl
nop
nop
nop
nop
nop
and $56155, %rcx
lea addresses_WC_ht+0x3680, %rsi
lea addresses_A_ht+0x5940, %rdi
sub $19874, %r10
mov $92, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $64248, %r13
lea addresses_D_ht+0x145b0, %rcx
clflush (%rcx)
nop
and $58851, %rbx
mov (%rcx), %r10d
nop
nop
nop
nop
dec %rbx
lea addresses_WT_ht+0x11fe0, %r14
nop
dec %rbx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
dec %rcx
lea addresses_WC_ht+0x17958, %rdi
nop
and %r10, %r10
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x17f80, %r14
nop
sub %rcx, %rcx
mov (%r14), %rdi
nop
nop
dec %r14
lea addresses_WT_ht+0x8680, %rsi
lea addresses_UC_ht+0x2800, %rdi
clflush (%rsi)
nop
nop
inc %r14
mov $30, %rcx
rep movsq
nop
nop
nop
add $59577, %rcx
lea addresses_normal_ht+0x19780, %rcx
nop
nop
nop
dec %r13
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
nop
add $11297, %r13
lea addresses_WC_ht+0x16b80, %rsi
lea addresses_D_ht+0xcc80, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %r13
mov $63, %rcx
rep movsl
nop
nop
add $29163, %r14
lea addresses_D_ht+0x5200, %rbp
nop
nop
add %r14, %r14
mov (%rbp), %edi
nop
nop
nop
nop
nop
xor $51480, %r14
lea addresses_D_ht+0x17c50, %r13
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r13), %rbp
nop
nop
nop
cmp $64299, %rbx
lea addresses_normal_ht+0x16fdc, %rbp
nop
nop
nop
nop
nop
xor $46940, %r10
movb $0x61, (%rbp)
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x13680, %rsi
lea addresses_WT+0x17680, %rdi
nop
nop
sub $33167, %r14
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0x13e80, %rsi
and $13887, %rbx
movw $0x5152, (%rsi)
nop
nop
nop
inc %rdi

// Store
lea addresses_WC+0x1be80, %r14
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
nop
sub $55628, %rcx

// Load
lea addresses_UC+0x12b40, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r14), %ax
nop
nop
nop
nop
nop
add $46817, %rax

// Store
lea addresses_UC+0xbf30, %r15
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movaps %xmm0, (%r15)
nop
nop
inc %r14

// Store
lea addresses_PSE+0x1be80, %rsi
nop
nop
nop
nop
and $11011, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
nop
add $50869, %rcx

// Load
mov $0x71f2640000000140, %rcx
nop
cmp %rsi, %rsi
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_D+0x9880, %rcx
nop
nop
inc %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
dec %rsi

// Load
mov $0x980, %rsi
add %rcx, %rcx
mov (%rsi), %bx
nop
nop
nop
and $5075, %rdi

// Faulty Load
lea addresses_PSE+0x1be80, %rax
and %rcx, %rcx
mov (%rax), %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
