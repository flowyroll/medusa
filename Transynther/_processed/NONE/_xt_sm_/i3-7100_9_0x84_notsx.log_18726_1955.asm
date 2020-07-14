.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18cf0, %rsi
lea addresses_WT_ht+0x10f0, %rdi
nop
nop
nop
nop
nop
lfence
mov $46, %rcx
rep movsl
nop
nop
nop
sub $21567, %r9
lea addresses_normal_ht+0x1a4b0, %r10
nop
add $16496, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x135f0, %rsi
sub %rbp, %rbp
movl $0x61626364, (%rsi)
cmp $51088, %rcx
lea addresses_D_ht+0x69f0, %rcx
nop
nop
nop
nop
xor $26797, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm6
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm6, (%rcx)
cmp %rsi, %rsi
lea addresses_WT_ht+0x5e30, %rsi
lea addresses_WC_ht+0x105f0, %rdi
clflush (%rsi)
nop
cmp %rdx, %rdx
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x49f0, %rsi
lea addresses_UC_ht+0x1b9b, %rdi
nop
nop
and %r9, %r9
mov $109, %rcx
rep movsw
add $50278, %rcx
lea addresses_A_ht+0x1df60, %rcx
nop
nop
nop
nop
nop
add $61854, %r9
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
cmp %r10, %r10
lea addresses_UC_ht+0xed08, %rsi
lea addresses_normal_ht+0x170, %rdi
nop
nop
cmp $58520, %r10
mov $9, %rcx
rep movsb
nop
cmp $63603, %rdx
lea addresses_WC_ht+0x5630, %r12
nop
inc %rsi
mov (%r12), %r10w
nop
xor %r9, %r9
lea addresses_A_ht+0xb5c0, %rsi
lea addresses_normal_ht+0x148c, %rdi
nop
nop
nop
nop
nop
add %r10, %r10
mov $11, %rcx
rep movsb
nop
nop
inc %r9
lea addresses_WT_ht+0x161f0, %rdi
nop
nop
sub $42893, %r12
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rdx
nop
nop
nop
nop
sub $86, %rdi
lea addresses_D_ht+0x16d64, %rsi
lea addresses_WC_ht+0x19f0, %rdi
nop
nop
nop
cmp $30348, %r12
mov $126, %rcx
rep movsl
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x14030, %r12
nop
nop
nop
nop
nop
cmp $3142, %r9
movw $0x6162, (%r12)
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x39f0, %r11
nop
nop
nop
nop
nop
xor $50474, %rbx
movw $0x5152, (%r11)
nop
nop
nop
nop
dec %rbx

// REPMOV
lea addresses_D+0x39f0, %rsi
lea addresses_D+0x39f0, %rdi
nop
add $57764, %rbx
mov $1, %rcx
rep movsl
sub %rbx, %rbx

// Store
lea addresses_WT+0x1356b, %rcx
nop
add %rsi, %rsi
movb $0x51, (%rcx)
nop
and $63653, %r14

// Load
lea addresses_PSE+0x30f0, %r14
nop
nop
nop
nop
dec %rdi
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
nop
and $28402, %rdi

// Store
lea addresses_RW+0x105f0, %rcx
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_normal+0x179f0, %r15
clflush (%r15)
nop
and $4132, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
and $0xffffffffffffffc0, %r15
movaps %xmm4, (%r15)
nop
nop
xor $37414, %r11

// Load
lea addresses_RW+0x199f0, %rcx
nop
nop
nop
cmp $316, %r11
movb (%rcx), %bl
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_RW+0x191f0, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%rsi), %r13b
sub $37048, %r15

// Store
mov $0x220, %r15
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
sub $21646, %r15

// Store
mov $0x7f0, %r14
nop
xor $25109, %r11
movw $0x5152, (%r14)
nop
and $54300, %rbx

// Store
lea addresses_UC+0x12a70, %r15
nop
nop
cmp %r13, %r13
movl $0x51525354, (%r15)
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_RW+0x19588, %rcx
nop
nop
nop
inc %r13
mov (%rcx), %di
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_RW+0x180f0, %rcx
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
add %r15, %r15

// Faulty Load
lea addresses_D+0x39f0, %rdi
clflush (%rdi)
nop
nop
xor $6823, %rcx
mov (%rdi), %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'52': 18726}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
