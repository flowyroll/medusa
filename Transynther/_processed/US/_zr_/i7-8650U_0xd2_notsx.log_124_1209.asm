.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xb69b, %rcx
nop
inc %r12
mov (%rcx), %r11d
add $51348, %rcx
lea addresses_normal_ht+0x2c93, %rbp
nop
and $3078, %r11
mov (%rbp), %r13w
nop
nop
dec %rcx
lea addresses_WC_ht+0xad13, %r15
clflush (%r15)
nop
nop
nop
add $38287, %rdi
movl $0x61626364, (%r15)
nop
nop
and $11576, %r15
lea addresses_UC_ht+0x14fee, %rsi
lea addresses_A_ht+0xc593, %rdi
xor %r13, %r13
mov $95, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1eb87, %r15
clflush (%r15)
nop
nop
nop
nop
cmp %rsi, %rsi
and $0xffffffffffffffc0, %r15
vmovaps (%r15), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
dec %rbp
lea addresses_UC_ht+0x1b193, %r12
nop
nop
add $30524, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
nop
nop
nop
xor $34036, %rbp
lea addresses_WC_ht+0x8a1, %rsi
nop
nop
sub $44204, %rcx
vmovups (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
cmp $27639, %rcx
lea addresses_WT_ht+0x1d193, %r13
nop
nop
nop
nop
inc %rbp
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x124ef, %rsi
lea addresses_D_ht+0xe2d3, %rdi
nop
cmp $1931, %r13
mov $84, %rcx
rep movsb
nop
xor %r11, %r11
lea addresses_A_ht+0x12601, %rcx
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
nop
cmp %r13, %r13
lea addresses_D_ht+0x180f0, %rsi
lea addresses_D_ht+0x195d3, %rdi
nop
nop
and %r11, %r11
mov $1, %rcx
rep movsq
nop
cmp %r11, %r11
lea addresses_A_ht+0x9093, %r12
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r12
movntdq %xmm6, (%r12)
nop
and $50091, %r15
lea addresses_WT_ht+0xdf82, %r11
nop
nop
nop
add $34422, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
nop
inc %r15
lea addresses_UC_ht+0x14993, %rsi
lea addresses_WT_ht+0x7f13, %rdi
nop
nop
nop
add %r15, %r15
mov $9, %rcx
rep movsq
nop
nop
nop
nop
nop
add $20637, %rbp
lea addresses_WC_ht+0x19193, %rsi
nop
nop
nop
nop
dec %r13
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x10063, %rcx
add $61818, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rcx)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x15897, %r11
inc %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
nop
nop
nop
nop
dec %r11

// Load
lea addresses_A+0x11653, %r13
nop
xor $3165, %r11
mov (%r13), %ecx
nop
nop
cmp %r13, %r13

// Load
lea addresses_RW+0xc393, %rbx
add $42147, %rdi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_US+0x17993, %r11
xor %rdi, %rdi
movups (%r11), %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 124}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
