.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xd9ae, %r10
clflush (%r10)
nop
nop
nop
nop
xor %r14, %r14
movb $0x61, (%r10)
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1626e, %r14
clflush (%r14)
nop
inc %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
and $0xffffffffffffffc0, %r14
movaps %xmm2, (%r14)
add %rax, %rax
lea addresses_D_ht+0x1bcde, %rsi
lea addresses_normal_ht+0xbde, %rdi
nop
nop
nop
cmp $21657, %r8
mov $82, %rcx
rep movsw
cmp $46894, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_RW+0x77fe, %rbx
nop
nop
xor %r15, %r15
movb (%rbx), %r12b
nop
and $56837, %r12

// Store
lea addresses_normal+0x9cde, %r8
sub $29725, %r12
movl $0x51525354, (%r8)
nop
add %r12, %r12

// Store
lea addresses_normal+0xaae, %r8
nop
xor $61232, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r8)
nop
inc %r13

// Store
lea addresses_D+0x34ae, %rbp
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
add $34947, %r15

// REPMOV
lea addresses_normal+0xf8de, %rsi
lea addresses_normal+0x9cde, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $31, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x89de, %r13
inc %r12
mov $0x5152535455565758, %r15
movq %r15, (%r13)
sub $54078, %r13

// Store
lea addresses_D+0xf4d6, %rdi
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
cmp $29857, %r14

// Store
lea addresses_A+0x190de, %rcx
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rcx)
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0x17e, %rdi
nop
nop
nop
nop
cmp $3648, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rdi)
nop
nop
sub %r13, %r13

// Store
mov $0x4c586b00000009cc, %rcx
and $65147, %rbp
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rcx)
sub $62469, %r12

// Load
lea addresses_PSE+0x3cde, %r12
nop
nop
cmp $52910, %rsi
movb (%r12), %r15b
nop
nop
and %r13, %r13

// Store
mov $0x48ba000000000ad2, %r8
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
and %r15, %r15

// Store
lea addresses_WT+0x6bfa, %r15
cmp %rdi, %rdi
movw $0x5152, (%r15)
nop
nop
xor $16314, %r15

// Faulty Load
lea addresses_normal+0x9cde, %rbx
nop
nop
nop
sub $21700, %rbp
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
