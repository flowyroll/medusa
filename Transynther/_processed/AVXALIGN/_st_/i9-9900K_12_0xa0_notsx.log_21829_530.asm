.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xed00, %rbp
nop
nop
nop
nop
nop
sub $24701, %r9
mov (%rbp), %r11
nop
nop
nop
nop
nop
add $30703, %r14
lea addresses_WC_ht+0x8258, %rax
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
xor $872, %rcx
lea addresses_WC_ht+0x34e8, %rsi
lea addresses_WC_ht+0x12d9a, %rdi
sub %r9, %r9
mov $12, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $40559, %rdi
lea addresses_UC_ht+0x56d8, %rdi
nop
nop
nop
nop
nop
inc %rcx
mov (%rdi), %bp
nop
cmp %r11, %r11
lea addresses_WT_ht+0x13c58, %rsi
nop
and %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rsi)
add %r9, %r9
lea addresses_A_ht+0x6ec8, %rsi
lea addresses_D_ht+0x41d4, %rdi
add $25784, %r14
mov $93, %rcx
rep movsq
sub %r9, %r9
lea addresses_WT_ht+0x186a8, %r14
nop
nop
nop
nop
nop
cmp $37560, %rax
mov $0x6162636465666768, %r9
movq %r9, %xmm0
and $0xffffffffffffffc0, %r14
vmovntdq %ymm0, (%r14)
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x18658, %rbp
nop
xor %rcx, %rcx
movb $0x61, (%rbp)
dec %r11
lea addresses_UC_ht+0x2e58, %rsi
lea addresses_WC_ht+0x14858, %rdi
nop
nop
sub $44944, %r11
mov $17, %rcx
rep movsl
nop
nop
cmp %r9, %r9
lea addresses_normal_ht+0x1ba18, %r9
nop
cmp $44934, %rdi
mov (%r9), %esi
nop
nop
nop
nop
cmp $32382, %rax
lea addresses_WC_ht+0x1a666, %rsi
lea addresses_WT_ht+0x14b8, %rdi
nop
nop
nop
sub %r14, %r14
mov $115, %rcx
rep movsb
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1e088, %rsi
lea addresses_A+0x12058, %rdi
nop
nop
nop
nop
nop
and $28615, %r8
mov $9, %rcx
rep movsq
nop
nop
nop
nop
and %r8, %r8

// Load
lea addresses_WC+0x80b4, %r8
nop
nop
lfence
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rsi
nop
xor %rsi, %rsi

// Store
lea addresses_WT+0x17858, %r8
nop
nop
nop
nop
add $3472, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm6
vmovups %ymm6, (%r8)
nop
inc %rdi

// Store
lea addresses_WT+0x8e34, %rcx
and %rdx, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x3ebd, %r8
xor $2801, %rcx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
cmp $26687, %rdx

// Store
lea addresses_WT+0x70b8, %rdx
inc %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdx)
add %rdx, %rdx

// Store
lea addresses_WT+0x188f8, %r15
nop
nop
nop
nop
nop
xor $9892, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r15)
nop
nop
cmp $9971, %rdx

// Store
lea addresses_PSE+0xebd8, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $36735, %r13
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
sub $5357, %rdi

// Faulty Load
lea addresses_RW+0x4058, %rsi
nop
nop
nop
nop
and $8386, %r13
mov (%rsi), %edi
lea oracles, %r8
and $0xff, %rdi
shlq $12, %rdi
mov (%r8,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
