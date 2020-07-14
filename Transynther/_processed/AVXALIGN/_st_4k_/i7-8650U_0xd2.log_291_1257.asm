.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13929, %r8
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r8)
nop
nop
xor $9627, %rcx
lea addresses_UC_ht+0x4ce3, %rsi
lea addresses_D_ht+0xeb2c, %rdi
nop
nop
dec %rbp
mov $50, %rcx
rep movsl
nop
dec %rdi
lea addresses_D_ht+0xf229, %rsi
lea addresses_normal_ht+0x1c1a9, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbx, %rbx
mov $39, %rcx
rep movsb
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x4e81, %rsi
lea addresses_WT_ht+0x13e9, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $106, %rcx
rep movsw
nop
nop
add $52055, %rsi
lea addresses_WT_ht+0x1ee29, %r15
nop
add %rsi, %rsi
movw $0x6162, (%r15)
and %rcx, %rcx
lea addresses_normal_ht+0x141c1, %r15
clflush (%r15)
nop
nop
nop
nop
nop
and %rbx, %rbx
vmovups (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
inc %r8
lea addresses_UC_ht+0x5229, %rsi
lea addresses_normal_ht+0xd529, %rdi
nop
nop
nop
xor %r13, %r13
mov $11, %rcx
rep movsq
nop
nop
nop
nop
sub $12268, %r8
lea addresses_WC_ht+0x1d3be, %rsi
lea addresses_WC_ht+0xa3d5, %rdi
nop
nop
xor $13334, %r15
mov $102, %rcx
rep movsw
nop
sub $2078, %rdi
lea addresses_WC_ht+0x19b71, %rsi
lea addresses_UC_ht+0xfa29, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $127, %rcx
rep movsb
nop
nop
xor $9269, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rdi
push %rsi

// Store
lea addresses_normal+0x1a229, %r10
nop
add $45894, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movntdq %xmm3, (%r10)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_D+0x19a29, %r11
nop
nop
nop
nop
inc %rdi
movb $0x51, (%r11)
nop
nop
inc %r14

// Store
lea addresses_WC+0x1505f, %r13
clflush (%r13)
nop
nop
nop
cmp $16728, %r14
movl $0x51525354, (%r13)
nop
add %r15, %r15

// Store
lea addresses_A+0x1029, %r14
clflush (%r14)
nop
add $45348, %r11
mov $0x5152535455565758, %r15
movq %r15, (%r14)
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_A+0x11229, %r13
nop
nop
xor %r14, %r14
mov (%r13), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'58': 291}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
