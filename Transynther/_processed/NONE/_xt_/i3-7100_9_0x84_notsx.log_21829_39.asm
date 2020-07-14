.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x120ec, %rsi
lea addresses_normal_ht+0x4c18, %rdi
nop
nop
sub $62383, %r10
mov $46, %rcx
rep movsw
nop
nop
sub $45175, %r8
lea addresses_A_ht+0x3d0c, %r10
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
add $7901, %rsi
lea addresses_WT_ht+0xd3b0, %r8
nop
nop
and $36869, %rsi
movw $0x6162, (%r8)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x1010c, %rsi
lea addresses_normal_ht+0x1304c, %rdi
clflush (%rsi)
nop
nop
sub $24591, %r14
mov $74, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_WT_ht+0x14b0c, %rsi
lea addresses_normal_ht+0xc6a1, %rdi
nop
cmp $43296, %rdx
mov $74, %rcx
rep movsb
cmp %r11, %r11
lea addresses_A_ht+0x1e04c, %rsi
lea addresses_WC_ht+0x19c08, %rdi
nop
inc %r8
mov $124, %rcx
rep movsw
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x1b60c, %rsi
lea addresses_WT_ht+0x300c, %rdi
nop
nop
and $6589, %rdx
mov $63, %rcx
rep movsw
nop
and $53598, %r11
lea addresses_UC_ht+0xad8c, %rsi
lea addresses_UC_ht+0xba0c, %rdi
nop
nop
nop
nop
and $61067, %r8
mov $58, %rcx
rep movsq
nop
nop
xor $25764, %r14
lea addresses_WT_ht+0xd0c0, %r14
nop
sub $48720, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
add %rdx, %rdx
lea addresses_WC_ht+0x67ac, %rsi
lea addresses_normal_ht+0x920c, %rdi
nop
nop
nop
sub $54494, %rdx
mov $121, %rcx
rep movsl
nop
nop
inc %r8
lea addresses_UC_ht+0x1442c, %rsi
nop
nop
inc %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1c20c, %rsi
lea addresses_normal_ht+0x99bc, %rdi
nop
nop
nop
sub $3621, %r14
mov $77, %rcx
rep movsw
nop
cmp $52060, %r8
lea addresses_WC_ht+0xdc1, %r14
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm2
movups %xmm2, (%r14)
nop
add $63427, %r11
lea addresses_normal_ht+0x10a0c, %rdi
nop
nop
nop
and %r8, %r8
movw $0x6162, (%rdi)
nop
nop
sub $45220, %rsi
lea addresses_D_ht+0x3a0c, %r11
nop
xor %r14, %r14
mov (%r11), %r10w
nop
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x14, %rbx
nop
nop
nop
nop
inc %r10
movb $0x51, (%rbx)
inc %rcx

// REPMOV
lea addresses_normal+0x1679c, %rsi
lea addresses_WT+0xb5d8, %rdi
nop
nop
nop
nop
nop
and $18373, %rbp
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $47358, %rsi

// Store
lea addresses_UC+0x1110c, %r10
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r10)
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0x13a0c, %rbx
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
and $2251, %rsi

// REPMOV
lea addresses_normal+0x1400c, %rsi
lea addresses_UC+0x72a7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $60, %rcx
rep movsq
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_PSE+0x16c8c, %rbx
nop
nop
xor $33959, %rsi
movw $0x5152, (%rbx)
nop
nop
nop
inc %rbp

// Store
lea addresses_D+0x50c, %rbx
nop
nop
add $4725, %rbp
movl $0x51525354, (%rbx)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0x198c, %rdi
nop
nop
xor $60151, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
sub $6397, %rdi

// Store
lea addresses_normal+0x8a0c, %rsi
add $33982, %r10
movb $0x51, (%rsi)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x7a0c, %r10
nop
nop
nop
nop
and $6477, %rbx
movb $0x51, (%r10)
nop
xor %rsi, %rsi

// Store
lea addresses_D+0x1ecdb, %rdi
cmp %rsi, %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
nop
sub $16786, %rbx

// Store
lea addresses_D+0xe08c, %r11
nop
nop
nop
nop
cmp $50111, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
xor %rbp, %rbp

// Faulty Load
lea addresses_normal+0x1420c, %rcx
nop
nop
nop
xor $6388, %r10
mov (%rcx), %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 1, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
