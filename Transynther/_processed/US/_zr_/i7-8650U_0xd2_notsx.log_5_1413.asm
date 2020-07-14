.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xaa8b, %rsi
lea addresses_normal_ht+0x5a8b, %rdi
clflush (%rdi)
nop
nop
add %rdx, %rdx
mov $87, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x1774b, %r8
nop
nop
nop
nop
xor $32906, %r9
mov (%r8), %rcx
nop
nop
nop
nop
nop
and $32584, %rdx
lea addresses_UC_ht+0x6a8b, %r8
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x1d28b, %rdx
nop
nop
xor %rcx, %rcx
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
cmp $62639, %rbx
lea addresses_WC_ht+0x338b, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rbx), %r9
nop
nop
nop
nop
nop
add $52611, %r9
lea addresses_UC_ht+0x1278b, %rdx
nop
nop
add $43384, %r9
movb (%rdx), %r8b
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x3a8b, %rbx
nop
nop
nop
xor $45734, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rbx)
sub $44303, %r8
lea addresses_WC_ht+0x520b, %r8
xor $57469, %rbx
movl $0x61626364, (%r8)
nop
add $17624, %r8
lea addresses_WC_ht+0x1748b, %r9
nop
inc %rdx
mov (%r9), %cx
nop
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1cb0d, %rsi
lea addresses_WT_ht+0x16c8b, %rdi
nop
xor %r14, %r14
mov $32, %rcx
rep movsb
nop
nop
nop
nop
cmp $39808, %rbx
lea addresses_UC_ht+0x105b, %rsi
lea addresses_WT_ht+0xb2b, %rdi
nop
nop
cmp %r9, %r9
mov $74, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_WT_ht+0xe16b, %rsi
lea addresses_D_ht+0x1da8b, %rdi
nop
nop
nop
add %r14, %r14
mov $114, %rcx
rep movsq
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xb28b, %rsi
lea addresses_normal_ht+0x13d5b, %rdi
nop
mfence
mov $91, %rcx
rep movsb
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x18bcb, %rsi
nop
dec %rdx
mov (%rsi), %r9
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xc28b, %r11
clflush (%r11)
nop
nop
nop
and $31710, %r8
movl $0x51525354, (%r11)
xor $13886, %r10

// Store
lea addresses_A+0x1ed4b, %r14
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%r14)
add %r11, %r11

// REPMOV
lea addresses_WT+0x1498b, %rsi
lea addresses_PSE+0x2c0b, %rdi
nop
inc %r8
mov $101, %rcx
rep movsq
nop
nop
nop
and $8520, %rcx

// Store
lea addresses_WT+0x6912, %r8
nop
cmp %r14, %r14
movw $0x5152, (%r8)
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0x9e8b, %rsi
nop
nop
nop
nop
xor $45829, %r11
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub %rax, %rax

// REPMOV
lea addresses_A+0x68b, %rsi
lea addresses_PSE+0x228b, %rdi
nop
nop
nop
and %r11, %r11
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
add $12742, %r10

// Store
lea addresses_WC+0x228b, %rax
nop
nop
nop
nop
nop
xor $38944, %rdi
movb $0x51, (%rax)
nop
cmp $40153, %r8

// Store
lea addresses_normal+0x7204, %rdi
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdi)
nop
and $10339, %r8

// Faulty Load
lea addresses_US+0x3a8b, %rax
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%rax), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 5}
00 00 00 00 00
*/
