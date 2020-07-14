.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15a07, %rdx
nop
nop
xor %rsi, %rsi
movb (%rdx), %r12b
nop
add $12129, %r14
lea addresses_normal_ht+0x13731, %rsi
lea addresses_WC_ht+0x17931, %rdi
nop
nop
nop
nop
add $10196, %rdx
mov $36, %rcx
rep movsw
nop
xor %r12, %r12
lea addresses_WT_ht+0x1b6a1, %rsi
nop
nop
nop
nop
add %r11, %r11
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
and %r14, %r14
lea addresses_WT_ht+0x1eee1, %rsi
lea addresses_WC_ht+0x6431, %rdi
nop
nop
nop
nop
nop
sub $37932, %r9
mov $44, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x14a01, %rsi
nop
nop
nop
nop
nop
xor $37726, %r9
mov (%rsi), %r14d
nop
nop
nop
xor $28178, %rsi
lea addresses_WC_ht+0x9d09, %rsi
lea addresses_D_ht+0xa731, %rdi
nop
nop
add $14481, %r12
mov $32, %rcx
rep movsb
nop
nop
nop
nop
cmp $51954, %r9
lea addresses_WT_ht+0x18531, %r11
nop
nop
nop
nop
sub $65313, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
and $0xffffffffffffffc0, %r11
movaps %xmm0, (%r11)
nop
nop
nop
nop
nop
add $42503, %rcx
lea addresses_normal_ht+0x1e831, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_UC_ht+0x15331, %r12
nop
sub $54619, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r12)
cmp %rcx, %rcx
lea addresses_WC_ht+0x2f31, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rdi)
nop
sub %rdi, %rdi
lea addresses_A_ht+0x1c992, %rsi
nop
xor %r14, %r14
movb (%rsi), %r9b
nop
nop
nop
nop
xor $11996, %r12
lea addresses_WC_ht+0x6431, %rsi
lea addresses_WT_ht+0x9e21, %rdi
nop
nop
nop
nop
dec %r14
mov $13, %rcx
rep movsb
nop
inc %r11
lea addresses_UC_ht+0x299, %r9
nop
lfence
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x1acc1, %rsi
lea addresses_WT_ht+0x147b1, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r11, %r11
mov $99, %rcx
rep movsb
nop
sub $38038, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Store
lea addresses_WT+0x1b59f, %rbx
nop
nop
nop
nop
xor $60799, %r9
movl $0x51525354, (%rbx)
nop
nop
sub %r15, %r15

// Load
lea addresses_WT+0x16561, %rcx
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rcx), %eax
nop
nop
lfence

// Load
lea addresses_UC+0x3e2d, %rax
nop
nop
nop
nop
inc %r12
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm3
vpextrq $1, %xmm3, %rbx
inc %r15

// Store
lea addresses_normal+0x14b31, %rcx
clflush (%rcx)
xor %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_WT+0xcb31, %r12
nop
nop
nop
xor %rcx, %rcx
vmovaps (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %r9
and $0xff, %rbx
shlq $12, %rbx
mov (%r9,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'00': 21697, '49': 90, '44': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
