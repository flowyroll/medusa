.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1a59e, %rax
sub %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
cmp $65324, %r11
lea addresses_WT_ht+0x1501e, %r12
nop
nop
nop
nop
sub $5653, %rsi
movb (%r12), %r11b
nop
nop
nop
dec %r11
lea addresses_A_ht+0x90e, %rsi
lea addresses_WC_ht+0xc3fe, %rdi
nop
nop
nop
nop
cmp $17706, %rbp
mov $46, %rcx
rep movsq
nop
nop
nop
and $9225, %rdi
lea addresses_normal_ht+0x1a02a, %rdi
nop
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
xor $25228, %rsi
lea addresses_A_ht+0x26fc, %rsi
lea addresses_WT_ht+0x1090e, %rdi
nop
xor %r11, %r11
mov $34, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x870, %r12
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1745e, %rsi
lea addresses_D_ht+0x6d8a, %rdi
nop
and %rdx, %rdx
mov $8, %rcx
rep movsl
nop
nop
add $14872, %r12
lea addresses_UC_ht+0x1d9c2, %rsi
lea addresses_D_ht+0x15a1e, %rdi
nop
nop
inc %rdx
mov $89, %rcx
rep movsl
nop
nop
dec %rbp
lea addresses_WC_ht+0xe89e, %rcx
nop
nop
nop
nop
nop
xor $11263, %rax
mov (%rcx), %edi
cmp $50888, %rdi
lea addresses_D_ht+0x19c1e, %rdi
nop
nop
nop
and $36705, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rdi
movaps %xmm3, (%rdi)
nop
nop
nop
nop
and $56358, %rax
lea addresses_WC_ht+0x1c29e, %rsi
lea addresses_WT_ht+0xf3c4, %rdi
nop
xor $64957, %r11
mov $84, %rcx
rep movsq
and $62523, %rcx
lea addresses_UC_ht+0x1dede, %rsi
lea addresses_normal_ht+0xae5e, %rdi
nop
nop
sub %rdx, %rdx
mov $106, %rcx
rep movsb
nop
cmp $39096, %rdi
lea addresses_WC_ht+0x1c44c, %rdx
nop
nop
nop
xor $38104, %rcx
movw $0x6162, (%rdx)
xor $50700, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x815e, %rbx
add $41976, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovntdq %ymm0, (%rbx)
nop
add %rbx, %rbx

// Store
lea addresses_D+0x1109e, %r13
inc %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
nop
nop
nop
nop
nop
cmp $64975, %r15

// Store
lea addresses_D+0xd09e, %r15
dec %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%r15)
nop
cmp $22678, %rdx

// Load
mov $0xa745f000000009e, %rbx
nop
nop
nop
nop
nop
sub $57115, %r12
movb (%rbx), %r13b
inc %r12

// Load
mov $0x497445000000029e, %rdi
nop
xor $64530, %r14
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
sub $47623, %r15

// Store
mov $0x89e, %r13
nop
and %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
sub %rbx, %rbx

// Faulty Load
lea addresses_D+0x1109e, %r13
cmp %rdi, %rdi
movaps (%r13), %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 11}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
