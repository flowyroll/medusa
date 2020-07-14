.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x16f31, %rbp
and %rbx, %rbx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
xor $51203, %rbp
lea addresses_WT_ht+0xee95, %r10
dec %rbx
mov (%r10), %r14d
nop
nop
xor $54469, %r10
lea addresses_WC_ht+0x14f95, %r12
clflush (%r12)
nop
nop
nop
nop
cmp %r11, %r11
movl $0x61626364, (%r12)
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1ad9a, %r11
nop
add %r9, %r9
movb (%r11), %bl
nop
nop
nop
add $27085, %rbx
lea addresses_A_ht+0x8d95, %rsi
lea addresses_WC_ht+0xc615, %rdi
nop
nop
nop
nop
and $10692, %r11
mov $80, %rcx
rep movsq
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x1c2b5, %rsi
lea addresses_WC_ht+0x12a6d, %rdi
xor $8022, %r14
mov $82, %rcx
rep movsq
nop
nop
nop
xor $34777, %r9
lea addresses_D_ht+0x1995, %r14
nop
nop
nop
nop
and %r10, %r10
movb (%r14), %bl
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x13795, %r12
nop
dec %rcx
mov $0x6162636465666768, %r14
movq %r14, (%r12)
nop
nop
nop
nop
nop
inc %r14
lea addresses_A_ht+0x17de7, %rsi
lea addresses_WT_ht+0x3a9d, %rdi
nop
nop
nop
xor $31287, %r9
mov $61, %rcx
rep movsq
nop
nop
nop
sub $51141, %r10
lea addresses_A_ht+0x17bb5, %rbp
nop
nop
xor $16600, %r10
mov (%rbp), %cx
nop
and %r12, %r12
lea addresses_D_ht+0x176f, %r12
nop
add $56204, %r14
mov (%r12), %r9d
nop
nop
nop
nop
nop
sub $52445, %r10
lea addresses_normal_ht+0x165dd, %r10
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
xor $49037, %rsi
lea addresses_WT_ht+0x1cfb5, %rsi
lea addresses_WT_ht+0x5975, %rdi
nop
nop
nop
xor $38346, %r10
mov $127, %rcx
rep movsl
nop
and $54815, %rsi
lea addresses_D_ht+0x18195, %r10
nop
nop
nop
nop
cmp %rbx, %rbx
movw $0x6162, (%r10)
nop
nop
nop
xor $44242, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x182b5, %r10
nop
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %r10
movntdq %xmm7, (%r10)
nop
nop
and $57193, %r9

// Store
lea addresses_A+0x17995, %rbx
nop
and %r13, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbx)
nop
xor $40121, %r13

// Store
lea addresses_A+0x897d, %r10
add $64440, %r13
movb $0x51, (%r10)
nop
nop
add %rbx, %rbx

// Store
lea addresses_PSE+0x1f995, %r9
nop
nop
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_normal+0x1c751, %rdx
add $5616, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
and %r13, %r13

// Store
mov $0x11b25c0000000e45, %r15
nop
nop
sub %rdx, %rdx
movb $0x51, (%r15)
nop
and $49194, %rbx

// Store
mov $0x595, %rbx
nop
nop
nop
cmp %r15, %r15
movb $0x51, (%rbx)
nop
nop
nop
nop
and %rsi, %rsi

// Store
mov $0x43bed20000000095, %rbx
nop
nop
nop
inc %r15
movw $0x5152, (%rbx)
nop
nop
and %r9, %r9

// Faulty Load
lea addresses_A+0x17995, %r15
nop
nop
nop
cmp %r13, %r13
movb (%r15), %dl
lea oracles, %rsi
and $0xff, %rdx
shlq $12, %rdx
mov (%rsi,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'58': 1}
58
*/
