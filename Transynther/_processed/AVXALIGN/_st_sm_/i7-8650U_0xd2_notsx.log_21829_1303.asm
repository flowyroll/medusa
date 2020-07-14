.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x4cf5, %rcx
nop
nop
nop
add %r15, %r15
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $38682, %r11
lea addresses_UC_ht+0x14f01, %rsi
lea addresses_A_ht+0xdd1a, %rdi
nop
nop
sub %r9, %r9
mov $39, %rcx
rep movsq
nop
nop
and $31845, %rdi
lea addresses_WT_ht+0xbdcf, %rsi
lea addresses_WT_ht+0x12b75, %rdi
inc %rdx
mov $11, %rcx
rep movsq
nop
cmp %r15, %r15
lea addresses_normal_ht+0x1b175, %rdx
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
cmp $33567, %r15
lea addresses_normal_ht+0x7bf5, %rdi
nop
nop
nop
inc %r13
mov (%rdi), %r11
nop
nop
nop
nop
add $61164, %rdx
lea addresses_D_ht+0x1b475, %rsi
lea addresses_UC_ht+0x8775, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $39, %rcx
rep movsw
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x65fc, %r13
nop
nop
nop
xor $38963, %r15
and $0xffffffffffffffc0, %r13
movaps (%r13), %xmm0
vpextrq $1, %xmm0, %r9
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x37b5, %rsi
lea addresses_D_ht+0x53d, %rdi
clflush (%rdi)
nop
nop
cmp $49668, %r9
mov $43, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_D_ht+0x5b75, %rdi
nop
nop
nop
nop
inc %rdx
movb (%rdi), %r9b
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xe875, %r15
nop
and $19963, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r15)
nop
and $11259, %rdx
lea addresses_A_ht+0xeeb5, %rdx
add %rsi, %rsi
mov (%rdx), %di
nop
and %r11, %r11
lea addresses_D_ht+0x51f5, %r9
clflush (%r9)
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r9)
nop
nop
add $59610, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rsi

// Load
lea addresses_PSE+0x1a25d, %r13
nop
nop
nop
and %r15, %r15
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
inc %r13

// Load
lea addresses_normal+0x1b69b, %r13
nop
nop
nop
nop
and %rbp, %rbp
mov (%r13), %ax
nop
nop
nop
add %rax, %rax

// Store
lea addresses_A+0x1c26d, %rax
nop
and %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rax)
nop
nop
nop
nop
cmp $50978, %r12

// Store
lea addresses_A+0x14b81, %rbp
nop
nop
nop
xor $9373, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
sub $26239, %rsi

// Store
lea addresses_D+0x6315, %r14
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm1
movups %xmm1, (%r14)
nop
nop
xor $48433, %r14

// Store
lea addresses_PSE+0x6245, %r14
nop
nop
inc %r13
movw $0x5152, (%r14)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WT+0xda99, %rax
clflush (%rax)
inc %r14
movl $0x51525354, (%rax)
nop
nop
xor $33062, %r12

// Store
lea addresses_PSE+0x17475, %rbp
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%rbp)
nop
nop
nop
add %r14, %r14

// Faulty Load
lea addresses_PSE+0x17475, %r15
nop
nop
sub $4638, %rax
mov (%r15), %ebp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
