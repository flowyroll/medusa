.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x94ac, %rsi
lea addresses_normal_ht+0x1e8e3, %rdi
nop
nop
nop
nop
add $8051, %r14
mov $69, %rcx
rep movsb
nop
nop
dec %rax
lea addresses_UC_ht+0x187c7, %rsi
lea addresses_normal_ht+0x198bf, %rdi
nop
nop
nop
add %rdx, %rdx
mov $79, %rcx
rep movsb
nop
nop
nop
add $6602, %rdi
lea addresses_UC_ht+0x17287, %rsi
lea addresses_A_ht+0xf223, %rdi
nop
nop
nop
cmp $52171, %r11
mov $73, %rcx
rep movsl
nop
nop
sub $40707, %rax
lea addresses_WC_ht+0x11473, %rcx
and $43683, %r14
movb $0x61, (%rcx)
nop
nop
dec %rdi
lea addresses_WC_ht+0xe63, %r11
sub $52086, %rcx
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xfd53, %rcx
nop
nop
nop
nop
sub $8259, %r14
movw $0x6162, (%rcx)
sub $60334, %rcx
lea addresses_normal_ht+0x2ae3, %r11
nop
nop
nop
xor $65517, %r14
mov (%r11), %di
nop
nop
nop
cmp $3413, %r11
lea addresses_WT_ht+0xf7a5, %rsi
clflush (%rsi)
sub $3696, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm2, (%rsi)
and $61212, %r14
lea addresses_WC_ht+0x2663, %rsi
lea addresses_WT_ht+0x19ce3, %rdi
nop
nop
nop
and %r15, %r15
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $54787, %rcx
lea addresses_A_ht+0x6c97, %r11
nop
nop
sub $23754, %rdi
mov (%r11), %r15d
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xaae3, %r11
nop
nop
nop
nop
nop
dec %r14
movb (%r11), %dl
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xd263, %rcx
nop
nop
cmp $20773, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x2dab, %rsi
lea addresses_RW+0x1e0e3, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $2516, %rbp
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rax, %rax

// Store
mov $0xfe3, %rbp
nop
and %rdi, %rdi
movb $0x51, (%rbp)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_RW+0x6543, %r10
nop
nop
and %rcx, %rcx
movb $0x51, (%r10)
cmp $32189, %rcx

// Load
mov $0x35a, %rax
nop
nop
xor %r10, %r10
movb (%rax), %cl
nop
nop
nop
dec %rcx

// Faulty Load
lea addresses_RW+0x1e0e3, %rbp
cmp $63393, %rax
mov (%rbp), %r10d
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'35': 1}
35
*/
