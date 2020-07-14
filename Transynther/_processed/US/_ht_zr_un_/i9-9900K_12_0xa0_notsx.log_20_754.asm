.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x193d9, %rsi
lea addresses_A_ht+0x13d81, %rdi
clflush (%rsi)
nop
xor $22611, %r13
mov $19, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1717b, %r14
nop
and %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0xbb19, %rsi
lea addresses_normal_ht+0x1d119, %rdi
clflush (%rdi)
nop
nop
sub $42757, %r9
mov $114, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_normal_ht+0x31cd, %rsi
lea addresses_WC_ht+0x1e719, %rdi
nop
and %r9, %r9
mov $67, %rcx
rep movsb
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x1019, %rdi
nop
and %r14, %r14
mov (%rdi), %edx
nop
nop
inc %r9
lea addresses_normal_ht+0xec79, %r9
nop
nop
cmp $62562, %rsi
mov (%r9), %r11
and %rdi, %rdi
lea addresses_normal_ht+0x1b299, %r14
nop
nop
nop
nop
mfence
movl $0x61626364, (%r14)
xor %r13, %r13
lea addresses_WC_ht+0x18399, %rsi
lea addresses_normal_ht+0x7b19, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $126, %rcx
rep movsl
nop
xor %r9, %r9
lea addresses_D_ht+0x1a6d1, %r11
nop
nop
nop
nop
nop
xor $45541, %r14
movw $0x6162, (%r11)
nop
nop
nop
and $63499, %rsi
lea addresses_A_ht+0xc019, %r9
nop
nop
inc %rsi
mov (%r9), %r14d
xor %rdx, %rdx
lea addresses_UC_ht+0x36b9, %rsi
lea addresses_UC_ht+0xd019, %rdi
clflush (%rsi)
nop
add $16095, %rdx
mov $117, %rcx
rep movsb
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx

// Load
lea addresses_normal+0x1ab99, %r10
nop
nop
nop
nop
nop
dec %r15
movups (%r10), %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
nop
nop
add $65270, %rax

// Store
lea addresses_D+0x3ed9, %r11
cmp $32688, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
nop
nop
add $19069, %r8

// Store
lea addresses_D+0x19f9d, %rcx
nop
nop
nop
nop
nop
cmp $60304, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rcx)
nop
and %rax, %rax

// Faulty Load
lea addresses_US+0x14f19, %r10
dec %r8
movups (%r10), %xmm3
vpextrq $1, %xmm3, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'eb': 8, 'ff': 4, '48': 3, '00': 5}
00 ff ff eb eb eb eb eb eb eb eb ff 00 00 00 48 00 ff 48 48
*/
