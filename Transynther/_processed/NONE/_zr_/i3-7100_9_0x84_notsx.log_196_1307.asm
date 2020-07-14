.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xa249, %r12
nop
nop
nop
nop
nop
and $65189, %r8
movb (%r12), %bl
nop
nop
nop
nop
cmp $12330, %r15
lea addresses_D_ht+0x12509, %rsi
lea addresses_WC_ht+0xcf89, %rdi
nop
nop
nop
nop
xor $15068, %r11
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0xc189, %rsi
lea addresses_A_ht+0x3239, %rdi
nop
nop
nop
add $5568, %r15
mov $42, %rcx
rep movsl
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x16309, %rsi
lea addresses_WC_ht+0x16709, %rdi
clflush (%rdi)
nop
nop
sub %r12, %r12
mov $109, %rcx
rep movsb
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x6789, %rsi
lea addresses_WC_ht+0xde09, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $0, %rcx
rep movsl
nop
nop
nop
nop
add $42866, %rbx
lea addresses_UC_ht+0xae99, %rdi
nop
nop
nop
nop
nop
cmp $9291, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x15509, %rsi
lea addresses_WT_ht+0xd2d, %rdi
clflush (%rsi)
nop
nop
nop
xor %r15, %r15
mov $38, %rcx
rep movsl
sub %rdi, %rdi
lea addresses_normal_ht+0x14309, %rsi
nop
nop
cmp %r8, %r8
mov (%rsi), %bx
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xd349, %r8
nop
nop
nop
sub $62051, %rbx
movb $0x61, (%r8)
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x9109, %rsi
lea addresses_normal_ht+0x3f09, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $37, %rcx
rep movsl
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0xef59, %rbx
xor $6361, %r12
mov (%rbx), %ecx
nop
nop
nop
nop
nop
sub $23863, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x31d9, %rsi
lea addresses_PSE+0x1fd49, %rdi
nop
and $61508, %rbp
mov $1, %rcx
rep movsq
nop
nop
sub %rdi, %rdi

// Load
lea addresses_PSE+0x1dc99, %r10
nop
nop
xor %rax, %rax
mov (%r10), %di
nop
nop
nop
nop
nop
sub $10875, %rdi

// Store
lea addresses_UC+0xa309, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
sub $11054, %rdi

// Store
lea addresses_WT+0xb09, %rcx
nop
nop
nop
and %r10, %r10
movb $0x51, (%rcx)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x2b09, %r10
nop
nop
nop
sub $55582, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovaps %ymm7, (%r10)
sub $51815, %r10

// Load
lea addresses_PSE+0x7089, %rbp
nop
nop
sub %r8, %r8
movb (%rbp), %r10b
nop
nop
inc %rax

// Store
lea addresses_D+0xe9a9, %rbp
nop
inc %rsi
movw $0x5152, (%rbp)
nop
nop
inc %rdi

// Store
lea addresses_WT+0x1d259, %r8
nop
nop
nop
nop
cmp $2851, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r8)
nop
nop
xor $7000, %rsi

// Faulty Load
lea addresses_D+0x2b09, %rax
nop
nop
nop
nop
add %rbp, %rbp
movups (%rax), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 196}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
