.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x157a1, %rax
nop
nop
nop
and $16397, %r14
mov (%rax), %r12
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x14717, %rsi
lea addresses_WT_ht+0xa2fd, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $101, %rcx
rep movsb
sub %r12, %r12
lea addresses_WT_ht+0x1df37, %rsi
lea addresses_D_ht+0x1c9a1, %rdi
clflush (%rsi)
nop
nop
sub $28030, %rdx
mov $79, %rcx
rep movsw
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_UC_ht+0x1ce21, %rdi
nop
nop
nop
add $36211, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
cmp $26666, %rdx
lea addresses_WT_ht+0x16981, %rdi
nop
nop
nop
cmp $14815, %r14
movups (%rdi), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
and $7397, %rcx
lea addresses_UC_ht+0xecc1, %r12
nop
nop
nop
dec %rdx
movl $0x61626364, (%r12)
nop
nop
add %r12, %r12
lea addresses_normal_ht+0xdba1, %rcx
clflush (%rcx)
nop
nop
add $26248, %rax
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rdx

// Store
lea addresses_UC+0x69a1, %r10
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %r15
movq %r15, (%r10)
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1b7a1, %r10
sub %r12, %r12
movb $0x51, (%r10)
nop
nop
xor $3894, %r15

// Load
lea addresses_normal+0x17ec5, %rdx
inc %r13
movb (%rdx), %bl
nop
nop
xor %r15, %r15

// Store
lea addresses_normal+0x13ea1, %rbx
nop
nop
nop
nop
nop
xor $59950, %rdx
movl $0x51525354, (%rbx)
nop
nop
xor %r13, %r13

// Store
lea addresses_PSE+0xf9a1, %r15
nop
mfence
movw $0x5152, (%r15)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_RW+0x2b21, %rbx
add %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
add %r12, %r12

// Store
mov $0xea3ca00000002a1, %r15
nop
inc %r11
movw $0x5152, (%r15)
nop
nop
sub %r15, %r15

// Store
lea addresses_A+0x106b1, %r15
nop
nop
nop
nop
nop
sub $38661, %r11
movl $0x51525354, (%r15)
nop
inc %r11

// Store
lea addresses_A+0x12a0d, %r13
nop
add $61282, %rbx
movw $0x5152, (%r13)
nop
nop
nop
cmp $57217, %r12

// Store
lea addresses_D+0x16b0d, %rdx
nop
nop
nop
cmp $37806, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)
nop
nop
nop
cmp $33563, %rbx

// Store
lea addresses_normal+0x1a561, %rbx
and $50562, %r10
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_UC+0x69a1, %r10
nop
nop
and $33200, %r13
vmovntdqa (%r10), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rdx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 16802, '52': 5027}
52 52 00 00 00 00 00 52 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 00 52 52 52 00 00 52 52 52 52 52 00 00 52 00 00 00 00 00 00 00 00 52 00 00 52 00 52 00 00 00 52 52 52 52 52 00 00 00 52 52 52 00 52 00 00 52 00 00 52 52 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 52 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 52 52 00 00 00 00 00 52 52 00 52 52 00 00 00 00 52 00 00 52 00 00 52 00 00 00 52 00 00 00 52 52 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 52 52 52 00 00 00 52 52 52 00 00 00 52 00 52 52 00 00 00 52 00 52 00 52 00 52 00 52 52 00 00 00 00 52 52 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 52 00 52 00 00 52 00 00 00 52 00 00 52 52 00 52 52 52 00 00 00 00 52 52 00 00 00 52 00 00 00 00 00 00 52 52 52 52 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 52 52 52 52 00 00 00 00 52 00 52 52 00 00 00 00 52 00 52 00 00 00 00 00 00 52 00 00 52 00 00 52 00 00 52 00 00 00 00 52 00 00 52 00 00 52 52 00 00 00 00 00 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 52 00 52 52 00 52 52 52 00 00 00 52 00 52 00 00 52 00 52 00 00 00 52 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 52 00 52 00 52 00 52 52 00 00 52 52 00 52 00 00 00 52 00 52 00 00 00 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 52 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 52 52 00 52 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 52 00 00 00 00 00 00 00 52 00 00 00 00 00 52 00 52 00 00 52 00 00 00 52 00 52 52 52 52 00 00 00 00 00 00 52 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 52 52 52 00 00 52 00 00 52 00 00 00 00 52 00 00 00 00 52 52 00 00 52 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 52 00 00 52 52 00 00 52 00 00 00 00 00 00 00 52 52 00 52 52 00 52 00 00 00 00 00 52 00 00 00 00 00 52 52 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 52 00 00 00 52 00 00 52 00 52 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 52 52 52 52 52 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 52 00 52 52 00 00 00 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 00 52 00 00 00 52 00 00 00 00 00 52 00 00 00 00 00 52 52 52
*/
