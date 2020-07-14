.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x483e, %r13
nop
nop
nop
sub $10350, %rbx
mov (%r13), %r14d
nop
nop
nop
nop
nop
xor $19629, %r10
lea addresses_WC_ht+0x1404b, %r15
nop
nop
nop
nop
nop
inc %rdx
mov (%r15), %di
nop
nop
nop
nop
add $54871, %rbx
lea addresses_D_ht+0x923e, %r14
nop
nop
nop
add %rdx, %rdx
movw $0x6162, (%r14)
nop
xor $53837, %r10
lea addresses_normal_ht+0x273e, %rdx
and %r15, %r15
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r14
nop
cmp %r10, %r10
lea addresses_normal_ht+0xa63e, %rsi
lea addresses_A_ht+0xb73e, %rdi
nop
add %r15, %r15
mov $103, %rcx
rep movsq
nop
nop
nop
nop
sub $3250, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x1f00, %rdi
nop
nop
nop
nop
nop
sub $60629, %rsi
movw $0x5152, (%rdi)
nop
nop
nop
nop
cmp $19104, %rbx

// Store
lea addresses_UC+0xdc24, %rsi
nop
nop
and $63358, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
and $38842, %rdx

// Store
lea addresses_normal+0x16bbe, %rdi
and %r12, %r12
movw $0x5152, (%rdi)
nop
nop
cmp %r8, %r8

// Store
lea addresses_PSE+0x1f7de, %r12
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovntdq %ymm5, (%r12)
nop
nop
nop
nop
and %r12, %r12

// Faulty Load
lea addresses_A+0x1223e, %rbx
clflush (%rbx)
nop
xor $5276, %r11
mov (%rbx), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'47': 23, '48': 2, '3b': 1, '44': 32, '00': 123, 'de': 2}
00 00 47 00 00 00 00 47 00 00 47 00 47 00 00 de 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 de 44 44 00 00 00 47 00 47 00 47 44 44 00 00 00 00 00 47 00 47 47 00 00 00 00 00 00 00 00 44 44 44 47 00 00 00 44 00 00 44 00 00 00 00 00 00 00 47 44 00 00 47 00 44 00 00 44 00 00 00 00 47 00 00 00 47 47 47 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 3b 00 00 00 00 44 44 00 47 00 00 00 00 00 00 00 00 44 47 00 00 47 44 47 47 44 00 44 44 00 44 00 00 44 00 00 44 44 00 47 00 44 44 44 00 00 00 00 00 00
*/
