.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x19ace, %r12
clflush (%r12)
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r12)
nop
nop
dec %r11
lea addresses_WC_ht+0x1a34e, %r12
nop
nop
nop
nop
sub $50016, %r9
mov (%r12), %r15w
nop
add $29431, %rdi
lea addresses_UC_ht+0x92ee, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r11), %r12d
nop
nop
cmp $35841, %r10
lea addresses_normal_ht+0x84, %r9
clflush (%r9)
nop
nop
nop
add %r15, %r15
mov (%r9), %r10
nop
nop
nop
nop
nop
xor $8775, %r12
lea addresses_UC_ht+0x6f0e, %r11
nop
nop
cmp %r9, %r9
mov (%r11), %rdx
nop
nop
dec %r12
lea addresses_WC_ht+0x1b82, %rsi
lea addresses_WC_ht+0x1cf4e, %rdi
nop
sub $23549, %r12
mov $90, %rcx
rep movsw
nop
nop
nop
nop
add $46290, %r15
lea addresses_D_ht+0x1b24e, %rdx
clflush (%rdx)
sub $25049, %r15
mov (%rdx), %r10
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_UC_ht+0x70ce, %rsi
lea addresses_WT_ht+0x9fd4, %rdi
nop
nop
nop
nop
nop
and $39307, %r11
mov $27, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xda4e, %r11
add %r15, %r15
movb (%r11), %cl
nop
nop
nop
nop
nop
xor $36633, %r10
lea addresses_D_ht+0x766e, %rsi
lea addresses_WT_ht+0x4af6, %rdi
sub $7240, %r9
mov $113, %rcx
rep movsw
sub %r10, %r10
lea addresses_WC_ht+0x1a8e, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and %rcx, %rcx
vmovups (%r11), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
xor $58336, %r9
lea addresses_WT_ht+0x1cb4e, %rsi
lea addresses_WT_ht+0x660a, %rdi
nop
nop
and %r11, %r11
mov $40, %rcx
rep movsw
nop
add $20641, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0xba1e, %rbx
nop
nop
xor $12993, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%rbx)
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_A+0x8372, %rbp
nop
nop
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
and $52481, %r14

// Store
lea addresses_RW+0xdb4e, %rbp
cmp %r13, %r13
movl $0x51525354, (%rbp)
sub $17143, %rdi

// Store
lea addresses_RW+0xdb4e, %rbp
nop
nop
and %rbx, %rbx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
xor $11301, %r14

// Store
lea addresses_RW+0x1d9e9, %rdx
nop
add $61503, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
sub $15794, %rdi

// Store
lea addresses_UC+0x15556, %r9
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%r9)
nop
sub %r9, %r9

// Store
lea addresses_UC+0x6a8a, %rbx
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
and $13727, %rbp

// Faulty Load
lea addresses_RW+0xdb4e, %rbx
nop
nop
xor $54983, %r9
movb (%rbx), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'54': 15}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
