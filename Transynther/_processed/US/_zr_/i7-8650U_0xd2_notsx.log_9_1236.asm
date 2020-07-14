.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa11c, %rcx
nop
nop
nop
nop
nop
sub $56306, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1101c, %rsi
lea addresses_UC_ht+0x11d4c, %rdi
nop
nop
nop
nop
cmp $57254, %r9
mov $54, %rcx
rep movsq
and $4773, %rdi
lea addresses_WC_ht+0x16d3c, %rdi
nop
nop
add $47904, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm4, (%rdi)
sub %rdi, %rdi
lea addresses_WT_ht+0x1b4fc, %r9
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r9)
inc %rax
lea addresses_UC_ht+0x1d2dc, %rax
clflush (%rax)
nop
nop
nop
add $57782, %rbp
mov (%rax), %edi
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x231c, %rsi
lea addresses_WT_ht+0x8b1c, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $77, %rcx
rep movsl
nop
nop
cmp $64767, %rsi
lea addresses_D_ht+0x1811c, %rax
nop
nop
and %rdi, %rdi
mov (%rax), %si
nop
nop
nop
nop
add $35781, %rdi
lea addresses_D_ht+0x149b6, %rbp
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%rbp)
nop
cmp %r8, %r8
lea addresses_A_ht+0xbb1c, %rdi
nop
nop
inc %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdi)
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x1adc2, %rsi
lea addresses_WT_ht+0x12b1c, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0xc41c, %rsi
lea addresses_WT_ht+0x1d71c, %rdi
cmp %rax, %rax
mov $26, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r9
lea addresses_WT_ht+0x6a64, %rsi
lea addresses_UC_ht+0xd43c, %rdi
nop
nop
nop
add %r9, %r9
mov $110, %rcx
rep movsw
nop
nop
nop
nop
and $29853, %rsi
lea addresses_normal_ht+0x168dc, %rax
nop
xor $19427, %r8
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
sub %rsi, %rsi
lea addresses_WC_ht+0x15b1c, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
mov (%rsi), %rcx
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_WC+0x30c2, %rdx
nop
nop
xor $52965, %r10
movb (%rdx), %r13b
nop
nop
xor $39450, %r10

// Load
lea addresses_normal+0xe1ac, %r9
nop
nop
nop
nop
nop
add %r10, %r10
mov (%r9), %rdx
cmp $31427, %r13

// Store
lea addresses_D+0x1af2c, %rdx
nop
nop
nop
nop
nop
sub %r12, %r12
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
inc %rax

// REPMOV
lea addresses_D+0x1831c, %rsi
lea addresses_UC+0xb1c, %rdi
dec %rax
mov $13, %rcx
rep movsb
nop
add %rdx, %rdx

// Load
lea addresses_WT+0x14f1c, %r8
nop
nop
nop
nop
add %rdx, %rdx
mov (%r8), %r9d
and %r9, %r9

// Store
lea addresses_US+0x1031c, %r8
clflush (%r8)
nop
nop
nop
nop
xor %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r8)
sub $16046, %r8

// Faulty Load
lea addresses_US+0x1031c, %r12
dec %r9
movups (%r12), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
