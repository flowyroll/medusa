.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16a4c, %rsi
lea addresses_D_ht+0x2d44, %rdi
nop
xor %r8, %r8
mov $74, %rcx
rep movsw
nop
sub $33780, %r12
lea addresses_A_ht+0x7480, %r8
nop
nop
nop
add $61142, %r15
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x122ec, %rsi
nop
xor $60314, %r11
mov (%rsi), %rdi
nop
nop
nop
nop
nop
and $29941, %r11
lea addresses_WT_ht+0x112cc, %r12
nop
nop
nop
sub $21110, %rsi
mov (%r12), %r8w
nop
nop
nop
sub $65325, %rdi
lea addresses_D_ht+0x1a824, %rsi
lea addresses_WT_ht+0xc4cc, %rdi
nop
nop
nop
nop
add $65260, %r11
mov $78, %rcx
rep movsb
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x984c, %rsi
lea addresses_WC_ht+0x10720, %rdi
nop
sub %r13, %r13
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
add $8771, %r11
lea addresses_WT_ht+0xfec2, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
xor $2012, %r11
lea addresses_A_ht+0x1c2cc, %rsi
lea addresses_A_ht+0x6acc, %rdi
nop
add %r13, %r13
mov $72, %rcx
rep movsl
nop
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x17bcc, %rsi
lea addresses_WC_ht+0x3378, %rdi
clflush (%rdi)
nop
nop
and $8009, %r12
mov $45, %rcx
rep movsb
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0x114ec, %r14
nop
nop
nop
cmp %r10, %r10
movl $0x51525354, (%r14)
add %r9, %r9

// Store
lea addresses_WT+0x1114c, %rdx
nop
cmp $20062, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
xor $29375, %rdx

// Store
lea addresses_UC+0x1c2cc, %rbx
and $24823, %r11
movw $0x5152, (%rbx)
nop
nop
nop
cmp $58781, %r11

// Load
lea addresses_A+0xd4f4, %rbx
nop
nop
nop
nop
nop
dec %r14
mov (%rbx), %rdx
nop
nop
nop
xor $6035, %r9

// Store
lea addresses_RW+0x1554c, %rdx
nop
nop
dec %r10
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_A+0xde0c, %rdx
clflush (%rdx)
dec %rbx
vmovups (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r10

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1dcc, %rsi
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
cmp %r9, %r9

// Faulty Load
lea addresses_UC+0x1c2cc, %r14
nop
nop
nop
add $48818, %rbx
mov (%r14), %r11d
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'52': 12487}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
