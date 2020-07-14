.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xf245, %rsi
lea addresses_WC_ht+0x34a5, %rdi
clflush (%rdi)
nop
sub %r12, %r12
mov $11, %rcx
rep movsb
nop
and %r15, %r15
lea addresses_normal_ht+0x1019d, %rsi
lea addresses_WT_ht+0x3dd9, %rdi
nop
nop
nop
and %r11, %r11
mov $39, %rcx
rep movsb
nop
dec %r11
lea addresses_A_ht+0x19809, %rsi
lea addresses_A_ht+0x10445, %rdi
nop
nop
nop
cmp %r13, %r13
mov $18, %rcx
rep movsl
cmp %r11, %r11
lea addresses_A_ht+0x140c5, %r13
nop
nop
nop
nop
and $39430, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0xdc7d, %r11
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %r12
nop
nop
nop
xor $45426, %rdi
lea addresses_D_ht+0x5c8a, %r11
nop
nop
lfence
mov $0x6162636465666768, %r13
movq %r13, (%r11)
cmp %r12, %r12
lea addresses_D_ht+0x5bc5, %rsi
add $6773, %rdi
mov (%rsi), %rcx
nop
xor $35129, %r11
lea addresses_D_ht+0x12265, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
nop
add $63153, %rdi
lea addresses_WT_ht+0x1e045, %rdi
inc %r15
movups (%rdi), %xmm3
vpextrq $1, %xmm3, %rsi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x17b7d, %rsi
lea addresses_WT_ht+0x2045, %rdi
nop
nop
nop
nop
and $5577, %r14
mov $31, %rcx
rep movsw
nop
nop
add $19968, %r13
lea addresses_normal_ht+0xaa45, %rsi
lea addresses_WC_ht+0x5805, %rdi
clflush (%rsi)
nop
nop
add %r12, %r12
mov $44, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0xf845, %rsi
lea addresses_UC_ht+0xd4c5, %rdi
inc %r13
mov $5, %rcx
rep movsb
nop
nop
nop
nop
xor $34283, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x16345, %rbp
nop
nop
nop
nop
cmp $8343, %r11
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rbp)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_PSE+0x3845, %rbx
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
add %rsi, %rsi

// REPMOV
lea addresses_normal+0x345, %rsi
lea addresses_PSE+0x62c5, %rdi
nop
nop
nop
add %rax, %rax
mov $7, %rcx
rep movsq
nop
nop
inc %rbp

// Store
lea addresses_WT+0x7963, %r11
nop
nop
and $45174, %rdi
movw $0x5152, (%r11)
nop
nop
xor $54732, %rbx

// REPMOV
lea addresses_A+0x1f945, %rsi
lea addresses_PSE+0x3845, %rdi
clflush (%rsi)
nop
add %r11, %r11
mov $77, %rcx
rep movsw
nop
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_A+0x60b5, %rsi
lea addresses_PSE+0x3845, %rdi
nop
xor %rbp, %rbp
mov $12, %rcx
rep movsq
inc %rdi

// Store
lea addresses_UC+0x1ee45, %rsi
nop
nop
nop
xor %rcx, %rcx
movb $0x51, (%rsi)
add %rdi, %rdi

// Store
lea addresses_UC+0x7745, %r10
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_PSE+0x3845, %rcx
nop
nop
add %rbp, %rbp
mov (%rcx), %bx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
