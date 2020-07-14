.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11601, %rbp
nop
add $47281, %r13
movb (%rbp), %r15b
sub %r10, %r10
lea addresses_WC_ht+0x15201, %rsi
lea addresses_A_ht+0x16101, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $26252, %r8
mov $92, %rcx
rep movsw
nop
nop
nop
add $20195, %rdi
lea addresses_WC_ht+0x1e941, %rsi
lea addresses_WT_ht+0xa01, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r15, %r15
mov $72, %rcx
rep movsl
nop
nop
add $28800, %r10
lea addresses_A_ht+0xa01, %rbp
nop
nop
nop
add $31510, %r13
mov (%rbp), %r15w
nop
nop
nop
nop
xor $9712, %r15
lea addresses_normal_ht+0x15201, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add $9410, %r8
mov (%r15), %bp
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x19e99, %r8
nop
nop
and $1098, %r10
vmovups (%r8), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x11a01, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
and $57514, %rcx
lea addresses_UC_ht+0x16e01, %r8
nop
nop
nop
add $782, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1e01, %rbp
nop
nop
nop
dec %r10
movb (%rbp), %r15b
nop
nop
nop
nop
dec %r15
lea addresses_A_ht+0x15b9e, %rbp
nop
nop
nop
and $26458, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rbp)
nop
nop
nop
and $44067, %rdi
lea addresses_WT_ht+0x4ce1, %rsi
lea addresses_WC_ht+0x6c01, %rdi
sub %r10, %r10
mov $60, %rcx
rep movsb
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0xce01, %rbp
nop
nop
nop
nop
and $24696, %r10
mov (%rbp), %r15d
nop
nop
nop
nop
and $13711, %r10
lea addresses_D_ht+0xeb71, %rcx
nop
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
add %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x78ac, %r9
cmp %r14, %r14
movl $0x51525354, (%r9)
nop
nop
and $23160, %r8

// REPMOV
lea addresses_D+0xa035, %rsi
lea addresses_D+0x10001, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $51, %rcx
rep movsq
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x3a01, %r9
nop
nop
and %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
add $16641, %r9

// Store
lea addresses_WC+0xf341, %rax
nop
nop
nop
xor $7651, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovntdq %ymm7, (%rax)
sub %r8, %r8

// Store
lea addresses_WT+0xa401, %rsi
add %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%rsi)

// Exception!!!
nop
nop
mov (0), %r9
nop
nop
sub $26658, %rax

// Store
lea addresses_PSE+0x17201, %rcx
xor $43532, %rax
movw $0x5152, (%rcx)
nop
nop
nop
and %rbp, %rbp

// Store
mov $0x5e8ffb0000000dc9, %rdi
nop
nop
and %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
nop
xor $19902, %rsi

// Store
lea addresses_US+0x144f9, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %rsi, %rsi
movb $0x51, (%rax)
nop
nop
nop
xor $41826, %rsi

// Store
lea addresses_WT+0x13381, %rax
and %r14, %r14
movb $0x51, (%rax)
nop
nop
nop
nop
nop
dec %r14

// Faulty Load
mov $0x6cce160000000601, %rdi
nop
nop
nop
nop
xor %r14, %r14
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
