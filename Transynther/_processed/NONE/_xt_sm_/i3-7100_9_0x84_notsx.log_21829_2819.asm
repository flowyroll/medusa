.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa94, %r11
nop
and %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r11)
nop
nop
sub $3182, %r14
lea addresses_WT_ht+0x68f6, %r12
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r12), %r11
nop
nop
nop
sub $48480, %r12
lea addresses_WC_ht+0x1d1d4, %rdx
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x18d4, %rax
nop
nop
nop
nop
nop
and $36324, %r11
mov $0x6162636465666768, %r14
movq %r14, (%rax)
and %r12, %r12
lea addresses_normal_ht+0x41e4, %r14
nop
dec %r13
mov (%r14), %rax
nop
nop
nop
cmp %r14, %r14
lea addresses_UC_ht+0x1b34, %rsi
lea addresses_WT_ht+0x1ae34, %rdi
nop
sub %rax, %rax
mov $99, %rcx
rep movsw
nop
nop
nop
lfence
lea addresses_UC_ht+0x178d4, %r8
nop
nop
nop
nop
and %r12, %r12
mov (%r8), %rcx
nop
nop
sub $39784, %rdx
lea addresses_normal_ht+0x16694, %rsi
lea addresses_WT_ht+0x103d1, %rdi
nop
sub $31904, %r11
mov $92, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $55979, %rax
lea addresses_A_ht+0x5b28, %r11
nop
nop
nop
add %rsi, %rsi
mov (%r11), %edi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x1b954, %rsi
lea addresses_WT_ht+0x7434, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r13, %r13
mov $98, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0xca84, %rsi
nop
nop
xor %r12, %r12
mov (%rsi), %r8
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x874, %r14
dec %rsi
mov (%r14), %r11w
nop
nop
add $34960, %r13
lea addresses_D_ht+0x1ceb4, %rdi
nop
nop
nop
add $19834, %r13
mov (%rdi), %si
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_WC+0x98d4, %rcx
nop
nop
dec %rbx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
nop
xor $16547, %rsi

// Store
lea addresses_UC+0x7014, %r11
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_WT+0x1ccd4, %rbx
cmp $9759, %rsi
movw $0x5152, (%rbx)
nop
xor $14581, %rsi

// Store
lea addresses_UC+0x11ca4, %r12
nop
nop
nop
add $36723, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r12)
nop
nop
cmp %rbx, %rbx

// Load
lea addresses_WC+0x98d4, %r12
nop
nop
nop
nop
cmp $53523, %rdx
movb (%r12), %r11b
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_WC+0x98d4, %rbx
sub %rsi, %rsi
mov (%rbx), %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
