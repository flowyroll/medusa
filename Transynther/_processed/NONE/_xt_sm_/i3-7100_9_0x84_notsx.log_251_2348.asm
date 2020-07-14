.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14ff6, %r10
nop
nop
nop
nop
nop
inc %r15
mov (%r10), %ebx
nop
nop
nop
nop
xor $9805, %r12
lea addresses_WT_ht+0x3406, %r10
nop
nop
nop
nop
and $17204, %rbx
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x174f6, %r12
nop
nop
nop
cmp %r11, %r11
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x18a6e, %rsi
lea addresses_A_ht+0x16056, %rdi
clflush (%rsi)
nop
nop
nop
add %r11, %r11
mov $22, %rcx
rep movsb
nop
nop
nop
sub %r10, %r10
lea addresses_normal_ht+0x46f6, %rsi
lea addresses_D_ht+0x1ced4, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $38, %rcx
rep movsl
nop
cmp $30669, %r10
lea addresses_WC_ht+0x1ddbe, %r10
nop
nop
nop
nop
nop
add %r15, %r15
movb $0x61, (%r10)
nop
nop
nop
cmp $23859, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x63f6, %rsi
lea addresses_WT+0xf76, %rdi
nop
nop
xor %rbp, %rbp
mov $98, %rcx
rep movsb
xor %rcx, %rcx

// Store
lea addresses_A+0x1f3f6, %rcx
and $16289, %r9
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
cmp $45561, %rdi

// Load
lea addresses_WT+0xaf46, %rcx
nop
nop
nop
add $52642, %rsi
movb (%rcx), %r9b
nop
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_PSE+0x3ef6, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
cmp $19229, %r8

// Store
lea addresses_RW+0xe3f6, %r8
nop
nop
add $40369, %rbp
movw $0x5152, (%r8)
nop
nop
dec %rbp

// Store
lea addresses_A+0x1d3f6, %r15
nop
sub $4302, %r8
movb $0x51, (%r15)
xor %rcx, %rcx

// Store
lea addresses_RW+0x17524, %r9
nop
nop
and $62972, %rbp
movw $0x5152, (%r9)
nop
nop
nop
nop
add %r15, %r15

// Store
lea addresses_RW+0x63f6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r15, %r15
movl $0x51525354, (%rdi)
nop
nop
sub $56999, %rcx

// Faulty Load
lea addresses_RW+0x63f6, %rsi
and $32829, %rbp
movb (%rsi), %r15b
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'54': 251}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
