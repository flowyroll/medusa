.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xb023, %rdi
nop
nop
and %r8, %r8
mov (%rdi), %dx
nop
nop
nop
sub $23443, %r11
lea addresses_normal_ht+0xd936, %rbp
cmp %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
nop
and %r14, %r14
lea addresses_WC_ht+0x1aa86, %rbp
nop
nop
and %rdx, %rdx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
add $58767, %rdx
lea addresses_A_ht+0x70c6, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %r11d
nop
nop
nop
and $41661, %r8
lea addresses_D_ht+0x14d66, %rbp
sub %rdi, %rdi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm7
vpextrq $1, %xmm7, %rax
nop
cmp $57134, %rax
lea addresses_D_ht+0xd286, %r8
nop
nop
and %rdx, %rdx
movb $0x61, (%r8)
nop
nop
nop
nop
nop
cmp $20619, %rbp
lea addresses_UC_ht+0x1895d, %r14
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r14)
nop
xor $11090, %r8
lea addresses_normal_ht+0x19286, %rsi
lea addresses_WT_ht+0xea86, %rdi
nop
nop
xor $37864, %r11
mov $85, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x13476, %rdx
nop
nop
nop
sub $7239, %r8
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rdx)
add $48835, %r11
lea addresses_normal_ht+0x3a6, %rsi
dec %rbp
movw $0x6162, (%rsi)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x59c9, %rsi
lea addresses_normal_ht+0xe686, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $114, %rcx
rep movsq
nop
nop
nop
nop
sub $21264, %rcx
lea addresses_UC_ht+0x173fc, %rsi
lea addresses_WT_ht+0x1a17e, %rdi
nop
nop
nop
nop
add %rdx, %rdx
mov $47, %rcx
rep movsb
nop
nop
sub $35027, %rcx
lea addresses_UC_ht+0x486, %rsi
lea addresses_UC_ht+0x7346, %rdi
nop
nop
nop
xor %rdx, %rdx
mov $26, %rcx
rep movsq
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1fe, %rsi
lea addresses_A_ht+0x75e6, %rdi
nop
nop
nop
xor %rax, %rax
mov $28, %rcx
rep movsl
nop
nop
nop
nop
cmp $46352, %rax
lea addresses_D_ht+0xce26, %r11
nop
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%r11)
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x166c6, %r15
dec %r12
movb $0x51, (%r15)
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_PSE+0x12c74, %rsi
lea addresses_UC+0xe352, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $69, %rcx
rep movsq
sub $40449, %r15

// Store
lea addresses_UC+0x9286, %r8
nop
nop
nop
cmp $35383, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x7306, %r11
nop
nop
nop
nop
nop
xor $1887, %r15
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
lea addresses_WT+0x135fe, %r8
clflush (%r8)
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r8)
nop
nop
nop
nop
nop
add $21167, %r8

// Faulty Load
lea addresses_PSE+0x4a86, %rdi
nop
add $27782, %rsi
mov (%rdi), %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 6, 'NT': True, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'33': 21829}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
