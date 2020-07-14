.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c952, %rsi
lea addresses_WT_ht+0xc667, %rdi
nop
nop
xor %r15, %r15
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x11b67, %rsi
lea addresses_UC_ht+0x6647, %rdi
add $9739, %r13
mov $5, %rcx
rep movsl
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x5667, %r15
nop
nop
sub %r13, %r13
movb $0x61, (%r15)
nop
nop
nop
xor $17453, %rbp
lea addresses_A_ht+0xf5af, %rcx
nop
nop
xor $19494, %r11
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
add $35435, %rcx
lea addresses_normal_ht+0x3e67, %rsi
lea addresses_A_ht+0x7667, %rdi
inc %r15
mov $127, %rcx
rep movsw
nop
sub $43095, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x2067, %rax
cmp $4858, %rdi
vmovups (%rax), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdx
nop
nop
nop
nop
nop
add $20229, %r9

// REPMOV
lea addresses_UC+0x7867, %rsi
lea addresses_normal+0xa427, %rdi
nop
sub %rdx, %rdx
mov $93, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_normal+0x1e667, %rsi
lea addresses_WT+0x11267, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbx
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// REPMOV
lea addresses_D+0x177a7, %rsi
lea addresses_D+0x1dea4, %rdi
clflush (%rsi)
nop
add $30451, %r14
mov $17, %rcx
rep movsq
nop
cmp $9866, %rax

// Store
lea addresses_UC+0xfe67, %r9
clflush (%r9)
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovntdq %ymm2, (%r9)
nop
nop
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_normal+0x1e667, %r14
nop
nop
and $34284, %r9
mov (%r14), %eax
nop
nop
inc %r9

// Faulty Load
lea addresses_normal+0x1e667, %r14
nop
nop
xor %rcx, %rcx
mov (%r14), %r9w
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'34': 134}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
