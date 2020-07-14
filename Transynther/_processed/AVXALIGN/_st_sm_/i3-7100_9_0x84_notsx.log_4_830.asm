.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4e9, %r13
nop
nop
nop
nop
and $54918, %r9
movw $0x6162, (%r13)
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x17974, %rsi
lea addresses_WC_ht+0x5c74, %rdi
clflush (%rsi)
nop
cmp $21649, %rdx
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0xa3f4, %r13
nop
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r13)
nop
xor $59301, %rbx

// Store
lea addresses_UC+0xf6f4, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rcx)
xor %rbx, %rbx

// Store
lea addresses_UC+0x1a8f4, %rdx
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movntdq %xmm5, (%rdx)
nop
nop
cmp $37766, %rcx

// Store
lea addresses_WC+0x4bf4, %rbx
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rbx)

// Exception!!!
mov (0), %rdx
nop
add $56649, %r10

// Store
lea addresses_PSE+0x40f8, %r11
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_PSE+0x11e34, %r13
clflush (%r13)
nop
nop
nop
nop
add %r11, %r11
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
add $48314, %rbx

// Store
lea addresses_PSE+0x14c0c, %r13
nop
dec %r10
movw $0x5152, (%r13)
nop
dec %rdi

// Load
mov $0x96c, %rcx
nop
nop
sub %rdx, %rdx
mov (%rcx), %edi
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_UC+0x1a8f4, %r13
cmp %rcx, %rcx
movntdqa (%r13), %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'58': 4}
58 58 58 58
*/
