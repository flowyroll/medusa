.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x33a8, %rsi
lea addresses_D_ht+0x139a8, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbx
mov $51, %rcx
rep movsq
nop
inc %rsi
lea addresses_WC_ht+0x4344, %rax
add $39209, %rdi
mov (%rax), %r14d
nop
nop
nop
nop
and $55445, %rcx
lea addresses_D_ht+0x1bd2, %rsi
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
cmp $9741, %rdi
lea addresses_A_ht+0xcb82, %rax
xor %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rax)
nop
nop
sub $22759, %r14
lea addresses_D_ht+0x5de8, %rsi
nop
nop
nop
nop
nop
xor $42239, %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r15
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x23c8, %rsi
lea addresses_WT_ht+0x19768, %rdi
nop
nop
inc %r8
mov $73, %rcx
rep movsw
sub $64426, %rbx
lea addresses_D_ht+0x89e8, %rcx
nop
dec %r15
mov (%rcx), %di
nop
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x5f28, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
movw $0x6162, (%r8)
nop
nop
dec %r8
lea addresses_WC_ht+0xb2e8, %rsi
lea addresses_A_ht+0x2ef4, %rdi
clflush (%rsi)
nop
cmp $21148, %r14
mov $12, %rcx
rep movsb
add %r14, %r14
lea addresses_WT_ht+0x5ee8, %rsi
lea addresses_WT_ht+0x4568, %rdi
nop
nop
nop
inc %rax
mov $109, %rcx
rep movsb
mfence
lea addresses_normal_ht+0x11ae8, %rsi
cmp %r14, %r14
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_D+0x10be8, %r15
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r15), %r11w
nop
nop
nop
nop
nop
cmp $56495, %rdx

// Store
lea addresses_PSE+0x76e8, %r11
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r11)
cmp $40305, %r15

// Store
lea addresses_PSE+0x1f1e8, %r11
nop
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%r11)
cmp %rcx, %rcx

// REPMOV
lea addresses_PSE+0x1e168, %rsi
lea addresses_PSE+0x1f1e8, %rdi
clflush (%rdi)
nop
cmp %r8, %r8
mov $74, %rcx
rep movsw
nop
nop
xor $19087, %rbp

// Load
lea addresses_WT+0x1d7f2, %rdx
cmp %rbp, %rbp
vmovntdqa (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r8
and $43388, %rcx

// Store
lea addresses_RW+0xcd70, %rdi
sub $40889, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%rdi)
xor $49203, %r15

// Store
lea addresses_PSE+0x4b78, %rcx
nop
nop
nop
nop
nop
add %r8, %r8
movw $0x5152, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
nop
nop
nop
and $48158, %rbp

// Load
lea addresses_A+0x7fd0, %rdi
nop
nop
add %rdx, %rdx
movb (%rdi), %cl
nop
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WC+0x4bd8, %rbp
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Load
mov $0x1d512c00000004e8, %rdi
and %rcx, %rcx
mov (%rdi), %r15
nop
nop
nop
nop
cmp $63712, %r8

// Store
lea addresses_WC+0x9ce8, %rdi
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_US+0x39c8, %r8
nop
and %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, (%r8)
xor $45742, %rcx

// Faulty Load
lea addresses_PSE+0x1f1e8, %rbp
nop
nop
nop
inc %r11
movb (%rbp), %r15b
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': True, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 101}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
