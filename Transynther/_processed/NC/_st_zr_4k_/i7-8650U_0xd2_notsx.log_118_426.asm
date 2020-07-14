.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x4d45, %rsi
lea addresses_normal_ht+0x12e2e, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $34524, %r8
mov $59, %rcx
rep movsl
xor $1159, %r8
lea addresses_normal_ht+0x29ce, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $2477, %rbp
mov (%r15), %r13
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x99ce, %r15
clflush (%r15)
nop
nop
inc %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
cmp $9557, %r8
lea addresses_WC_ht+0xe77e, %rcx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
nop
xor $41887, %r13
lea addresses_A_ht+0x8fce, %rbp
nop
nop
sub $20568, %r8
movw $0x6162, (%rbp)
nop
and %r15, %r15
lea addresses_WT_ht+0x175ce, %rsi
lea addresses_normal_ht+0x1c1ce, %rdi
nop
nop
sub %r8, %r8
mov $48, %rcx
rep movsw
nop
nop
nop
nop
and $63141, %r8
lea addresses_WT_ht+0xeb35, %rdi
nop
nop
nop
nop
nop
inc %r8
mov (%rdi), %r13d
nop
nop
nop
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0xd1ce, %rsi
lea addresses_WT_ht+0xf34e, %rdi
nop
inc %r13
mov $23, %rcx
rep movsb
nop
and %rdi, %rdi
lea addresses_D_ht+0xe5ce, %r15
and $17740, %r8
movb $0x61, (%r15)
sub $56722, %rdi
lea addresses_UC_ht+0xb729, %rsi
nop
nop
nop
nop
nop
dec %rcx
mov (%rsi), %r15w
add %rbp, %rbp
lea addresses_D_ht+0x1ce56, %rsi
nop
nop
nop
nop
nop
cmp $10292, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rsi)
add $8663, %rbp
lea addresses_D_ht+0xd6e, %r13
clflush (%r13)
nop
nop
nop
nop
cmp $60693, %r8
movb (%r13), %r15b
nop
add $6619, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx

// Store
lea addresses_WT+0x3bf6, %r11
nop
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm3
vmovups %ymm3, (%r11)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_PSE+0x4bce, %r9
nop
nop
nop
nop
nop
and %rbp, %rbp
movb $0x51, (%r9)
nop
sub %r11, %r11

// Store
lea addresses_WC+0xc9ce, %r14
nop
nop
nop
nop
nop
add %rax, %rax
movb $0x51, (%r14)
nop
nop
nop
and $16592, %r15

// Store
lea addresses_RW+0x181ce, %r15
nop
nop
nop
dec %rcx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x7bd7, %rbp
nop
nop
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
sub %rax, %rax

// Store
lea addresses_A+0x1dc0e, %r15
nop
nop
nop
cmp $7556, %r14
movw $0x5152, (%r15)
nop
nop
nop
nop
and $7882, %rcx

// Store
mov $0xec32b000000070e, %r14
nop
cmp $58886, %rax
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
nop
xor $27438, %rcx

// Store
lea addresses_WT+0x11dce, %rax
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%rax)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x159ce, %r11
nop
inc %rax
movw $0x5152, (%r11)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x1f1ce, %r11
nop
nop
nop
nop
nop
dec %r9
movw $0x5152, (%r11)
add %rbp, %rbp

// Load
lea addresses_UC+0x1164e, %r9
clflush (%r9)
nop
xor %rax, %rax
mov (%r9), %cx
nop
nop
nop
nop
nop
xor $16504, %r15

// Faulty Load
mov $0x73beb000000001ce, %rcx
inc %r11
mov (%rcx), %eax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 30, '52': 88}
00 52 00 52 52 52 52 52 00 52 52 52 52 00 52 52 52 00 00 52 00 52 52 52 52 52 52 00 00 52 00 52 00 00 00 52 00 00 00 00 52 00 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52
*/
