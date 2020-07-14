.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1a210, %rbx
nop
nop
dec %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
sub $42843, %r14
lea addresses_normal_ht+0x4aa8, %r15
nop
nop
nop
nop
add %rbp, %rbp
mov (%r15), %eax
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x1ca10, %rsi
lea addresses_WT_ht+0x95e0, %rdi
nop
and %r9, %r9
mov $58, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_D_ht+0xc810, %rax
nop
nop
nop
and %r15, %r15
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x16210, %rsi
lea addresses_UC_ht+0xb1a8, %rdi
nop
nop
nop
sub $31550, %rbp
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
add $40099, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x6de2, %r12
clflush (%r12)
and $61688, %rbx
movb $0x51, (%r12)
nop
and %rdi, %rdi

// Store
lea addresses_PSE+0x15759, %rbx
clflush (%rbx)
nop
nop
nop
and $50500, %r12
movb $0x51, (%rbx)
nop
nop
nop
add $51528, %rdi

// Store
lea addresses_WT+0x4a10, %r11
nop
and %rbp, %rbp
movb $0x51, (%r11)
nop
nop
nop
xor $624, %r14

// Load
lea addresses_normal+0x9a90, %rbp
nop
and %r10, %r10
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_UC+0x16a60, %r12
nop
cmp %r14, %r14
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
mfence

// Load
lea addresses_normal+0x7574, %rbx
nop
xor $9967, %r10
mov (%rbx), %r14w
nop
nop
nop
inc %rbx

// Store
lea addresses_normal+0x10a10, %r12
clflush (%r12)
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
nop
add $32775, %rbx

// Load
lea addresses_UC+0xb13, %rbp
nop
nop
nop
nop
cmp %r14, %r14
mov (%rbp), %rbx
nop
and $6048, %r10

// Store
lea addresses_WC+0xce10, %r14
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r14)
nop
sub $60148, %rbx

// Store
lea addresses_WT+0x11a10, %rbp
xor $47277, %r12
movb $0x51, (%rbp)
nop
nop
and $21012, %rdi

// Store
lea addresses_D+0xa110, %r14
nop
nop
nop
nop
nop
cmp $63990, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
and $15992, %rdi

// Store
lea addresses_WT+0x10510, %rdi
nop
nop
nop
add %r12, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
xor %rdi, %rdi

// REPMOV
lea addresses_WC+0x10e90, %rsi
lea addresses_PSE+0xa210, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r11, %r11
mov $0, %rcx
rep movsb
sub $6860, %rbx

// Store
mov $0x8b7, %rdi
xor $2024, %rbp
movl $0x51525354, (%rdi)
nop
nop
and $62529, %rdi

// Faulty Load
lea addresses_WT+0x11a10, %rdi
xor %r11, %r11
mov (%rdi), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'51': 34}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
