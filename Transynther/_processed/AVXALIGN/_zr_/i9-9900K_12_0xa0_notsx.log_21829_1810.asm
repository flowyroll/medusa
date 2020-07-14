.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1c0af, %rsi
lea addresses_WT_ht+0xe0a7, %rdi
nop
nop
cmp %r9, %r9
mov $103, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x170af, %r15
nop
nop
nop
nop
nop
dec %r10
movb $0x61, (%r15)
mfence
lea addresses_D_ht+0x522f, %rdi
nop
inc %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
sub $14194, %rdi
lea addresses_WT_ht+0x58af, %r9
dec %rsi
movl $0x61626364, (%r9)
nop
nop
nop
mfence
lea addresses_A_ht+0x15fef, %rsi
lea addresses_WC_ht+0x14613, %rdi
clflush (%rsi)
nop
nop
nop
and $54741, %r12
mov $55, %rcx
rep movsq
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x153af, %r8
clflush (%r8)
nop
nop
nop
sub $63421, %r15
movups (%r8), %xmm0
vpextrq $0, %xmm0, %r10
nop
xor %r10, %r10
lea addresses_D_ht+0xa4f7, %rsi
lea addresses_WC_ht+0xf3af, %rdi
nop
nop
nop
xor %r12, %r12
mov $66, %rcx
rep movsb
nop
inc %r10
lea addresses_normal_ht+0x223b, %r10
and %r9, %r9
mov (%r10), %di
cmp %r10, %r10
lea addresses_D_ht+0x1cb97, %r9
clflush (%r9)
xor %r10, %r10
mov (%r9), %r12d
nop
cmp %r8, %r8
lea addresses_WC_ht+0x12bdb, %r15
nop
nop
nop
nop
add $23885, %r9
mov (%r15), %cx
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x4eaf, %rsi
clflush (%rsi)
nop
nop
nop
sub %r9, %r9
mov (%rsi), %r8
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0xf4af, %rsi
lea addresses_normal_ht+0x149af, %rdi
cmp %r15, %r15
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xdb91, %rsi
nop
nop
nop
nop
sub $65423, %r9
movw $0x6162, (%rsi)
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xb227, %r13
nop
nop
nop
nop
nop
cmp $55134, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%r13)
nop
add %r10, %r10

// REPMOV
lea addresses_WT+0x12f0f, %rsi
lea addresses_A+0x16acf, %rdi
sub $5461, %r13
mov $75, %rcx
rep movsq
nop
cmp %r10, %r10

// Store
lea addresses_PSE+0x182af, %rax
nop
nop
cmp $1532, %r10
movl $0x51525354, (%rax)
nop
nop
cmp %rax, %rax

// REPMOV
lea addresses_A+0x14747, %rsi
lea addresses_A+0x1da3d, %rdi
nop
sub %r10, %r10
mov $94, %rcx
rep movsw
add %rax, %rax

// REPMOV
lea addresses_D+0x13c98, %rsi
lea addresses_normal+0x173ef, %rdi
clflush (%rsi)
sub $1546, %rbx
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_WT+0x13567, %rcx
nop
nop
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rcx
vmovaps %ymm3, (%rcx)
nop
sub %r12, %r12

// REPMOV
lea addresses_A+0x34bb, %rsi
lea addresses_WC+0x1f0af, %rdi
xor %r14, %r14
mov $94, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx

// Faulty Load
lea addresses_US+0x116af, %rax
nop
and $57553, %r13
movb (%rax), %cl
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
