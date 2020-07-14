.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x479, %rdx
and %r9, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
nop
cmp $6498, %r11
lea addresses_WC_ht+0x10435, %r10
nop
nop
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0xa035, %rsi
lea addresses_UC_ht+0x878b, %rdi
inc %rbp
mov $45, %rcx
rep movsw
nop
nop
nop
cmp $6529, %r12
lea addresses_D_ht+0x2735, %r12
add %rdx, %rdx
vmovups (%r12), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1d235, %rsi
nop
nop
nop
nop
add $720, %rdx
mov (%rsi), %r10w
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x12635, %rsi
cmp $12656, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
cmp $11744, %rdx
lea addresses_normal_ht+0x141db, %r11
nop
xor $41288, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x255, %rsi
lea addresses_D_ht+0x13675, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0x88b5, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $1181, %r12
mov (%rsi), %r11
nop
dec %rbp
lea addresses_WC_ht+0x9355, %r9
nop
nop
nop
nop
xor $49704, %r12
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
and $45147, %r8
lea addresses_normal_ht+0xf387, %r11
nop
nop
nop
xor $44388, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
and $0xffffffffffffffc0, %r11
movaps %xmm0, (%r11)
nop
xor $42245, %rbp
lea addresses_D_ht+0x8835, %rcx
nop
nop
xor $23089, %rdi
movw $0x6162, (%rcx)
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x5ab, %rsi
nop
nop
and $37632, %r9
mov (%rsi), %rdi
nop
nop
inc %r12
lea addresses_A_ht+0x1ec35, %rbp
nop
nop
sub $64512, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x1f335, %r15
nop
nop
nop
nop
sub $1302, %r8
vmovups (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
inc %rbp

// REPMOV
lea addresses_D+0xc7b5, %rsi
lea addresses_WT+0xbbf5, %rdi
nop
nop
nop
nop
cmp $48399, %r9
mov $48, %rcx
rep movsw
nop
nop
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_UC+0x3035, %rsi
mov $0x735, %rdi
nop
xor $21591, %r8
mov $25, %rcx
rep movsq
nop
nop
nop
nop
cmp $56950, %rdi

// Store
lea addresses_US+0xe9e5, %r9
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
add %r10, %r10

// Load
lea addresses_RW+0x7935, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov (%rdi), %ecx
nop
nop
nop
and $4461, %r8

// Store
mov $0x935, %r9
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%r9)
nop
sub $32039, %rbp

// Load
lea addresses_D+0x1a835, %r15
nop
nop
and $32057, %rcx
mov (%r15), %si
sub $65434, %rdi

// Faulty Load
lea addresses_normal+0xe835, %r9
nop
sub $22589, %r15
mov (%r9), %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_P', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
