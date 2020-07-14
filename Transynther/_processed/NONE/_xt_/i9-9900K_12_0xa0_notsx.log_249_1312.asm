.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x5078, %r14
nop
nop
and $1894, %r10
movb $0x61, (%r14)
nop
nop
nop
nop
nop
cmp $1326, %rcx
lea addresses_A_ht+0x1b460, %rsi
lea addresses_normal_ht+0x21d4, %rdi
nop
cmp $34662, %r15
mov $27, %rcx
rep movsl
nop
add %rcx, %rcx
lea addresses_UC_ht+0xa454, %rsi
nop
nop
and $41228, %rbp
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
inc %rbp
lea addresses_WT_ht+0x9894, %rsi
lea addresses_A_ht+0x8394, %rdi
nop
nop
nop
nop
sub $30449, %rbx
mov $58, %rcx
rep movsb
nop
nop
nop
cmp $7511, %rbp
lea addresses_WT_ht+0x1bcd0, %rsi
nop
xor $64975, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x11e74, %rdi
add $38567, %rcx
movb (%rdi), %r10b
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0xf594, %r15
xor $37130, %rsi
mov (%r15), %r14w
add %r15, %r15
lea addresses_A_ht+0x15b34, %rsi
lea addresses_WT_ht+0x1cf94, %rdi
nop
nop
nop
xor $29195, %r14
mov $95, %rcx
rep movsq
nop
add $4510, %rbp
lea addresses_A_ht+0x1ab94, %rsi
xor $9199, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_WT_ht+0xcd94, %rcx
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%rcx), %r10
add %rbx, %rbx
lea addresses_D_ht+0x1f94, %rsi
lea addresses_normal_ht+0xf614, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r14, %r14
mov $44, %rcx
rep movsw
nop
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x11794, %rsi
lea addresses_WC_ht+0x105bc, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $45, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x11ebf, %rsi
lea addresses_normal_ht+0x12b94, %rdi
clflush (%rdi)
cmp $39889, %r10
mov $22, %rcx
rep movsq
add $12727, %r14
lea addresses_WT_ht+0x5a94, %rsi
lea addresses_normal_ht+0xb514, %rdi
nop
add %r10, %r10
mov $46, %rcx
rep movsl
nop
nop
nop
nop
sub $7070, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x670c6100000002d4, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rdi)
xor %rdi, %rdi

// Store
lea addresses_A+0x16094, %r14
nop
nop
nop
add %r13, %r13
movw $0x5152, (%r14)
nop
nop
add %rbx, %rbx

// Store
lea addresses_normal+0x1aebc, %rbx
nop
nop
inc %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbx)
nop
add $3351, %rsi

// Store
lea addresses_D+0x8394, %rbx
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_normal+0x9f94, %rdi
add %rax, %rax
mov (%rdi), %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'34': 249}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
