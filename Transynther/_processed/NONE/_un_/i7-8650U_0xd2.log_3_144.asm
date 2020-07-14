.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1dc3b, %rsi
lea addresses_WT_ht+0x14fd1, %rdi
nop
nop
add $51274, %r8
mov $25, %rcx
rep movsb
dec %rdi
lea addresses_normal_ht+0x1bb9b, %r9
nop
nop
nop
and $1059, %r13
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xf8b2, %rsi
lea addresses_A_ht+0x903b, %rdi
xor %r12, %r12
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_UC_ht+0x5a3b, %rsi
lea addresses_A_ht+0x30ed, %rdi
nop
nop
nop
nop
nop
sub $7879, %r12
mov $27, %rcx
rep movsw
cmp %r9, %r9
lea addresses_normal_ht+0x2cb, %rbp
and $19815, %rdi
mov (%rbp), %r13
nop
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x16c3b, %r9
nop
nop
nop
sub $45193, %rbp
mov (%r9), %r13w
nop
nop
nop
nop
nop
and $18986, %r13
lea addresses_D_ht+0x14c1b, %rsi
lea addresses_WT_ht+0x597b, %rdi
nop
xor $33730, %r13
mov $89, %rcx
rep movsw
nop
nop
nop
and $27723, %rcx
lea addresses_WC_ht+0x16a3b, %rsi
lea addresses_A_ht+0xfd35, %rdi
clflush (%rsi)
nop
nop
cmp %rbp, %rbp
mov $108, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_normal_ht+0x10a9b, %r9
clflush (%r9)
nop
nop
nop
and $13146, %rbp
movb (%r9), %r13b
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rsi

// Store
lea addresses_UC+0xa23b, %r9
nop
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r9)
nop
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_WT+0x1a43b, %r9
nop
nop
nop
nop
nop
and %r14, %r14
mov (%r9), %rbp
nop
nop
nop
nop
cmp $15463, %r14

// Store
lea addresses_PSE+0x1561b, %r13
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%r13)
nop
nop
nop
add $61588, %rsi

// Store
mov $0x31fd3f00000000bb, %rbp
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
nop
nop
cmp $63383, %r11

// Load
lea addresses_RW+0x1503b, %r9
nop
nop
nop
nop
add $26530, %rbp
mov (%r9), %r14w
nop
nop
sub $14967, %rbp

// Store
lea addresses_A+0x13b3b, %r11
nop
nop
nop
nop
dec %r8
movw $0x5152, (%r11)
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_A+0x703b, %r9
nop
nop
nop
inc %r13
mov (%r9), %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'ff': 3}
ff ff ff
*/
