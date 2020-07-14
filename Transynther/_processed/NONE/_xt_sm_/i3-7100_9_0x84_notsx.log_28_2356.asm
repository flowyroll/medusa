.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16a5f, %rbx
nop
nop
xor $2504, %rax
movb (%rbx), %dl
nop
nop
nop
lfence
lea addresses_D_ht+0x376f, %rsi
lea addresses_WT_ht+0x12b1f, %rdi
sub %rbx, %rbx
mov $32, %rcx
rep movsq
add %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x16b13, %r13
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
inc %r9

// REPMOV
lea addresses_A+0x1325f, %rsi
lea addresses_A+0x1be5f, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp $21085, %r13
mov $19, %rcx
rep movsl
nop
nop
nop
nop
xor $53694, %rbp

// REPMOV
lea addresses_WT+0xc67f, %rsi
lea addresses_WT+0x16c5f, %rdi
cmp %r13, %r13
mov $6, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_A+0x4f5f, %rsi
nop
xor %r14, %r14
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_WT+0x189ff, %r14
clflush (%r14)
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r14)
inc %r13

// Store
lea addresses_UC+0xb8b7, %rbp
nop
xor $15542, %r14
movw $0x5152, (%rbp)
nop
nop
and %rsi, %rsi

// REPMOV
lea addresses_normal+0xd697, %rsi
lea addresses_UC+0xc65f, %rdi
nop
nop
nop
sub $23556, %rbp
mov $125, %rcx
rep movsw
nop
nop
nop
cmp $15551, %r14

// Store
lea addresses_WC+0xc25f, %rbp
nop
nop
nop
nop
nop
and $39664, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rbp)
nop
xor %rbp, %rbp

// REPMOV
lea addresses_PSE+0x16ad7, %rsi
lea addresses_normal+0x355f, %rdi
nop
sub $37263, %rax
mov $82, %rcx
rep movsb
nop
nop
dec %rcx

// Load
lea addresses_US+0x1ac5f, %rdi
nop
nop
nop
sub $36017, %r14
mov (%rdi), %rbp
xor %r13, %r13

// Store
lea addresses_A+0x565f, %rax
clflush (%rax)
nop
dec %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_normal+0xb08b, %rcx
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_WT+0x13d1f, %r13
nop
nop
xor $27968, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_A+0xaa9f, %rcx
nop
add %rsi, %rsi
movw $0x5152, (%rcx)
nop
add $55587, %r9

// Store
mov $0x5810a10000000adf, %rbp
nop
nop
xor $34076, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
xor $33733, %rcx

// Faulty Load
lea addresses_A+0x565f, %r9
nop
nop
sub $51605, %rdi
movups (%r9), %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'58': 28}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
