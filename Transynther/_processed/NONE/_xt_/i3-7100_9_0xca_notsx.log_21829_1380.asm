.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3c73, %rbp
nop
inc %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0xbc15, %rdx
nop
nop
nop
dec %rbx
mov (%rdx), %ax
nop
nop
cmp $62079, %rbx
lea addresses_D_ht+0x490b, %r14
and %r12, %r12
movw $0x6162, (%r14)
nop
add %r14, %r14
lea addresses_A_ht+0x12295, %r14
nop
nop
nop
nop
nop
add $42511, %rdx
mov (%r14), %rbp
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x15495, %r14
cmp $15209, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
cmp $63192, %r14
lea addresses_WC_ht+0x7bd5, %r14
nop
xor %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm4
movups %xmm4, (%r14)
nop
dec %r14
lea addresses_A_ht+0x14d95, %r12
nop
nop
add $50882, %r14
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
and $54470, %r12
lea addresses_D_ht+0x18b15, %rsi
lea addresses_WT_ht+0x28b5, %rdi
add %rdx, %rdx
mov $53, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_A_ht+0x1b15, %rsi
lea addresses_normal_ht+0x1dc15, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $43446, %rdx
mov $6, %rcx
rep movsw
nop
nop
dec %rbx
lea addresses_normal_ht+0x1f8a, %rcx
dec %rsi
mov (%rcx), %r14d
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x1c815, %r14
nop
nop
nop
add $60879, %rax
mov (%r14), %ebp
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x14295, %r12
nop
cmp %rbx, %rbx
movups (%r12), %xmm5
vpextrq $1, %xmm5, %rsi
and $34560, %r14
lea addresses_D_ht+0x9415, %rbx
nop
sub %rdx, %rdx
mov (%rbx), %si
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x14515, %rsi
lea addresses_D_ht+0x13715, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $73, %rcx
rep movsq
nop
nop
nop
nop
nop
and $3145, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0xc715, %rdi
nop
add $28706, %r13
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x2415, %r11
nop
nop
nop
nop
and $53408, %rdx
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
cmp %rdx, %rdx

// REPMOV
lea addresses_RW+0x1cd15, %rsi
lea addresses_normal+0x46f1, %rdi
nop
nop
add %rax, %rax
mov $55, %rcx
rep movsw
xor %r12, %r12

// Store
lea addresses_normal+0xec15, %rdi
nop
nop
add $47563, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_D+0x1555, %r11
nop
nop
cmp %rcx, %rcx
movb $0x51, (%r11)
dec %r12

// Store
lea addresses_A+0x1d615, %r12
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r12)
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_A+0xbb6e, %rcx
nop
xor $17492, %rsi
movb (%rcx), %r12b
nop
nop
nop
nop
nop
xor $14553, %rax

// Faulty Load
lea addresses_RW+0x15415, %rcx
nop
nop
nop
nop
and $51333, %rsi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
