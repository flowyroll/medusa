.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x8f4b, %rbx
nop
sub %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
cmp $63563, %rax
lea addresses_A_ht+0x1414b, %rsi
lea addresses_A_ht+0x904b, %rdi
nop
nop
inc %r8
mov $50, %rcx
rep movsw
nop
nop
and $60570, %rsi
lea addresses_WT_ht+0xe94b, %rcx
nop
nop
inc %r10
mov $0x6162636465666768, %r8
movq %r8, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
cmp $52916, %rax
lea addresses_A_ht+0x1e24b, %r10
nop
nop
sub $47560, %r8
and $0xffffffffffffffc0, %r10
vmovaps (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0xa04b, %r10
nop
nop
add $7191, %rax
mov $0x6162636465666768, %rbx
movq %rbx, (%r10)
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1148b, %rsi
lea addresses_A_ht+0x107cb, %rdi
nop
cmp $51423, %r12
mov $19, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0x14693, %rsi
lea addresses_D_ht+0x1b4bf, %rdi
nop
nop
and $25917, %rbx
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x14d16, %r8
nop
nop
sub %rdi, %rdi
movb $0x61, (%r8)
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x14d4b, %rsi
lea addresses_WT_ht+0x7c4b, %rdi
clflush (%rdi)
nop
inc %rbx
mov $46, %rcx
rep movsl
nop
nop
nop
dec %r8
lea addresses_UC_ht+0x1979b, %r8
nop
nop
xor $11204, %r10
movb $0x61, (%r8)
nop
dec %r12
lea addresses_UC_ht+0x1c08b, %rsi
nop
nop
nop
nop
add $50279, %rbx
mov (%rsi), %r12w
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x6d4b, %r12
nop
nop
nop
nop
nop
cmp $12277, %rbx
movb (%r12), %cl
nop
nop
nop
nop
nop
inc %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
mov $0x264411000000014b, %r14
nop
sub $25055, %rcx
movups (%r14), %xmm7
vpextrq $1, %xmm7, %r9
nop
add %r9, %r9

// Store
mov $0xe4b, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%rcx)
nop
nop
inc %r9

// Store
lea addresses_US+0x54b, %r15
clflush (%r15)
nop
nop
nop
nop
sub %r9, %r9
movl $0x51525354, (%r15)
dec %rcx

// Store
lea addresses_normal+0x14e11, %rcx
nop
nop
xor %rsi, %rsi
movb $0x51, (%rcx)
nop
nop
cmp $42780, %rbp

// REPMOV
lea addresses_PSE+0x1534b, %rsi
lea addresses_WT+0x1faab, %rdi
clflush (%rdi)
nop
and %r9, %r9
mov $94, %rcx
rep movsq
nop
nop
nop
nop
cmp $44484, %r14

// Store
mov $0x264411000000014b, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb $0x51, (%r10)
nop
nop
inc %r9

// REPMOV
mov $0x264411000000014b, %rsi
lea addresses_WC+0x1377a, %rdi
nop
nop
nop
nop
nop
cmp $11582, %r9
mov $46, %rcx
rep movsw
nop
nop
nop
and $14264, %rbp

// Store
lea addresses_UC+0x8379, %r15
nop
nop
nop
sub $27819, %rsi
movb $0x51, (%r15)
and %r9, %r9

// Store
lea addresses_WT+0x194b, %r9
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x5152, (%r9)
nop
nop
nop
and %rbp, %rbp

// Store
lea addresses_WT+0x1cb, %r9
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r9)
nop
add %r10, %r10

// Store
lea addresses_RW+0xdf4b, %rbp
nop
nop
nop
and $26143, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
add %r9, %r9

// REPMOV
mov $0x4718cc0000000163, %rsi
lea addresses_normal+0x1864b, %rdi
nop
nop
nop
nop
cmp $32488, %r15
mov $115, %rcx
rep movsb

// Exception!!!
nop
nop
mov (0), %rcx
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x264411000000014b, %r9
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
mfence

// Load
lea addresses_PSE+0x17d4b, %rcx
nop
nop
and %r9, %r9
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
cmp $44393, %rsi

// Faulty Load
mov $0x264411000000014b, %r10
and $20740, %rbp
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_NC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_NC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'1a': 1}
1a
*/
