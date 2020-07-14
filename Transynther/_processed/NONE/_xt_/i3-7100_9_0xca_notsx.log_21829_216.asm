.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x86e7, %r11
xor $25655, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
and $58539, %rsi
lea addresses_WC_ht+0x1239f, %rsi
lea addresses_WC_ht+0x10b9f, %rdi
nop
nop
inc %r11
mov $17, %rcx
rep movsw
nop
nop
xor $37027, %r11
lea addresses_A_ht+0x919f, %rsi
lea addresses_A_ht+0x1739f, %rdi
nop
nop
sub %rbp, %rbp
mov $22, %rcx
rep movsq
nop
xor $36148, %rsi
lea addresses_WC_ht+0x714f, %rsi
lea addresses_D_ht+0xfb9f, %rdi
nop
add %rax, %rax
mov $84, %rcx
rep movsw
nop
nop
nop
nop
nop
add $47244, %rcx
lea addresses_D_ht+0x1b129, %rsi
lea addresses_WC_ht+0x17b9f, %rdi
nop
nop
xor %rbx, %rbx
mov $3, %rcx
rep movsl
inc %rsi
lea addresses_WC_ht+0xc09b, %rsi
lea addresses_A_ht+0x1a21f, %rdi
nop
nop
nop
nop
xor $2335, %rdx
mov $112, %rcx
rep movsq
nop
nop
nop
nop
add $13723, %r11
lea addresses_WT_ht+0x1784f, %rax
nop
nop
nop
cmp %rcx, %rcx
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
sub $65034, %rcx
lea addresses_WC_ht+0x162a3, %rsi
lea addresses_A_ht+0x1bb27, %rdi
xor %rbx, %rbx
mov $13, %rcx
rep movsb
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x459f, %rbx
nop
nop
nop
cmp $42125, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x118ab, %rsi
lea addresses_WT_ht+0xb7f7, %rdi
nop
sub $45788, %rdx
mov $93, %rcx
rep movsq
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x679f, %rsi
lea addresses_WT_ht+0x19e9f, %rdi
nop
nop
cmp %rbx, %rbx
mov $72, %rcx
rep movsw
nop
nop
nop
sub $32478, %rsi
lea addresses_WC_ht+0xc2ef, %rax
nop
nop
cmp $44721, %rdi
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
nop
cmp $3681, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1ed9f, %rdx
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
dec %rcx

// REPMOV
lea addresses_A+0x1d39f, %rsi
lea addresses_normal+0x1469f, %rdi
nop
nop
nop
nop
nop
add $15645, %r13
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
and $56069, %r13

// Store
mov $0x49f, %rcx
and $8373, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rcx)
nop
sub %r8, %r8

// Store
lea addresses_RW+0xa1df, %r13
nop
nop
and $50386, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x1519f, %rcx
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
add %rdx, %rdx

// Load
lea addresses_UC+0x1d39f, %r9
nop
sub %rax, %rax
mov (%r9), %di
nop
nop
nop
sub $49003, %rdx

// Load
lea addresses_A+0x1d691, %rax
add $40584, %r9
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
add %rdx, %rdx

// Store
lea addresses_normal+0x1715f, %rsi
nop
nop
nop
xor $46361, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rsi)
and %r9, %r9

// Load
lea addresses_RW+0x139f, %r13
inc %rdx
mov (%r13), %si
nop
nop
sub %rdi, %rdi

// Store
lea addresses_normal+0x21df, %r13
nop
nop
and %rdi, %rdi
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
add $47699, %rdi

// Store
mov $0x1f67250000000bf3, %rdi
nop
nop
nop
sub $57412, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
cmp $59076, %rax

// Faulty Load
lea addresses_A+0x1d39f, %rcx
nop
nop
nop
nop
add %r8, %r8
mov (%rcx), %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_RW', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
