.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1bfb5, %rsi
nop
add $5961, %r11
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x120b5, %rbx
inc %rax
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x7b5, %rax
cmp $34369, %rsi
movb (%rax), %r11b
nop
nop
nop
and $37965, %rax
lea addresses_normal_ht+0xad5d, %rsi
lea addresses_A_ht+0x1abb5, %rdi
clflush (%rsi)
and $60866, %r14
mov $41, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_normal_ht+0x114f6, %rdi
nop
nop
nop
cmp $15512, %r14
movb (%rdi), %r15b
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_D_ht+0x9b5, %r15
nop
nop
nop
nop
xor %r11, %r11
mov (%r15), %eax
sub %rsi, %rsi
lea addresses_WT_ht+0x1e835, %rsi
lea addresses_WT_ht+0x1b175, %rdi
nop
xor $24685, %r11
mov $108, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x117b5, %rsi
lea addresses_WC_ht+0x6fb5, %rdi
nop
nop
nop
cmp %r11, %r11
mov $20, %rcx
rep movsq
add $65318, %rdi
lea addresses_WT_ht+0xbb5, %rax
nop
cmp $17793, %r11
mov $0x6162636465666768, %rbx
movq %rbx, (%rax)
sub $42598, %rax
lea addresses_WC_ht+0xddb5, %rcx
nop
nop
xor $61421, %rsi
movl $0x61626364, (%rcx)
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1cfb5, %r11
clflush (%r11)
and %rsi, %rsi
movw $0x6162, (%r11)
nop
nop
nop
nop
sub $32729, %rax
lea addresses_normal_ht+0x138f5, %r12
nop
cmp $53934, %r11
movb (%r12), %r15b
xor $22227, %rcx
lea addresses_UC_ht+0x1ead5, %rsi
lea addresses_WC_ht+0x9749, %rdi
xor %r12, %r12
mov $116, %rcx
rep movsw
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x97b5, %rsi
lea addresses_A_ht+0x6db5, %rdi
nop
nop
add $13456, %r12
mov $97, %rcx
rep movsw
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x86b5, %rsi
lea addresses_WT+0x1b7c2, %rdi
nop
cmp $27561, %r12
mov $19, %rcx
rep movsb
nop
nop
nop
dec %r8

// REPMOV
lea addresses_RW+0x27b5, %rsi
lea addresses_A+0x1c86d, %rdi
nop
sub %rdx, %rdx
mov $62, %rcx
rep movsw
nop
nop
add $60351, %r8

// Load
lea addresses_RW+0xb375, %rdx
clflush (%rdx)
nop
nop
nop
nop
and %r8, %r8
mov (%rdx), %rdi
and $34986, %rdx

// Store
lea addresses_D+0x151b5, %rcx
nop
and $65380, %r13
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
and $25980, %rdx

// Faulty Load
lea addresses_RW+0x27b5, %rdx
nop
nop
nop
nop
nop
xor $47196, %r11
mov (%rdx), %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
