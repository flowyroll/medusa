.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9c88, %rbp
nop
nop
nop
nop
nop
sub $39732, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp $21215, %r10
lea addresses_A_ht+0x13a88, %r14
sub $27460, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
cmp $54807, %r10
lea addresses_UC_ht+0xd110, %rbx
xor %r12, %r12
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
add $18972, %r10
lea addresses_WC_ht+0xd4a8, %r14
nop
nop
nop
nop
nop
xor $11093, %rbx
movups (%r14), %xmm5
vpextrq $1, %xmm5, %r15
nop
inc %rbx
lea addresses_UC_ht+0x1b368, %r15
sub %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r15)
xor %r10, %r10
lea addresses_D_ht+0xf894, %r14
nop
nop
and %rbp, %rbp
mov (%r14), %bx
cmp %r15, %r15
lea addresses_D_ht+0x116c0, %r14
nop
nop
nop
nop
dec %r15
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
inc %r10
lea addresses_A_ht+0x11a03, %r13
nop
nop
inc %r14
movb $0x61, (%r13)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0xba88, %rsi
lea addresses_A_ht+0x7708, %rdi
nop
nop
nop
nop
nop
xor $35305, %r15
mov $111, %rcx
rep movsl
nop
nop
nop
dec %r13
lea addresses_D_ht+0x13288, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov (%rdi), %si
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xf2b8, %rbx
nop
nop
cmp %r13, %r13
mov (%rbx), %r12
cmp %rdi, %rdi
lea addresses_A_ht+0x10d9c, %rsi
lea addresses_UC_ht+0x474b, %rdi
nop
sub %r13, %r13
mov $15, %rcx
rep movsw
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x10a88, %r13
nop
nop
nop
nop
dec %r14
mov (%r13), %bp
nop
cmp $10059, %rbx
lea addresses_D_ht+0x18288, %r15
nop
nop
nop
nop
sub %rbp, %rbp
mov (%r15), %r12
nop
nop
nop
nop
cmp $39824, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_WC+0x3a88, %r14
nop
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%r14)
nop
nop
xor $38933, %r9

// Load
lea addresses_PSE+0x12d08, %rax
nop
cmp $48649, %r8
mov (%rax), %r9w
nop
nop
sub $27494, %r14

// Load
lea addresses_D+0x1c388, %rax
and $29829, %rsi
movb (%rax), %r14b
and $23099, %rax

// Store
lea addresses_UC+0x1ca88, %r8
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_WC+0x1c368, %r8
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x51525354, (%r8)
cmp $43034, %rsi

// Store
lea addresses_A+0x15b88, %r15
xor %rax, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_D+0x4288, %r9
nop
inc %rsi
mov (%r9), %r10d
dec %r8

// Store
lea addresses_D+0x4288, %r15
cmp %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
dec %r8

// Store
mov $0xa1f, %r8
nop
nop
nop
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%r8)
cmp $31686, %rsi

// Faulty Load
lea addresses_D+0x4288, %r9
nop
nop
cmp $29318, %rsi
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 8, 'same': True, 'NT': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
