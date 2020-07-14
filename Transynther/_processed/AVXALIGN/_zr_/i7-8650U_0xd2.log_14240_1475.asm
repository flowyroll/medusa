.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x15f71, %r14
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x10f71, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
sub $25594, %r14
lea addresses_D_ht+0x1c66c, %rsi
lea addresses_normal_ht+0x6781, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $41, %rcx
rep movsq
nop
nop
nop
sub $8000, %r11
lea addresses_UC_ht+0x4231, %rcx
nop
nop
nop
nop
nop
add $48104, %r12
movl $0x61626364, (%rcx)
nop
sub %rbx, %rbx
lea addresses_D_ht+0x5271, %rdi
sub %r12, %r12
movw $0x6162, (%rdi)
nop
nop
nop
xor $53940, %r12
lea addresses_D_ht+0x171, %rsi
lea addresses_WT_ht+0xef71, %rdi
nop
nop
nop
nop
cmp $14636, %rax
mov $125, %rcx
rep movsw
nop
cmp $47306, %r14
lea addresses_WT_ht+0x1eb71, %rax
nop
nop
sub $11071, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
xor $19863, %r14
lea addresses_normal_ht+0x1a371, %r12
nop
nop
nop
nop
and %rax, %rax
movw $0x6162, (%r12)
and %r14, %r14
lea addresses_normal_ht+0x1db71, %rdi
xor $63092, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
add $52974, %rsi
lea addresses_normal_ht+0x16771, %r14
nop
xor $34443, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
nop
cmp $62497, %rax
lea addresses_A_ht+0x1cbf1, %rbx
dec %rdi
movb (%rbx), %r14b
nop
nop
nop
add $27316, %r12
lea addresses_D_ht+0x513d, %r14
and $30603, %rsi
movw $0x6162, (%r14)
add %rdi, %rdi
lea addresses_UC_ht+0x184b1, %rsi
lea addresses_D_ht+0x10971, %rdi
add $44754, %r12
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $22084, %r14
lea addresses_D_ht+0x10f71, %r12
add $58382, %rbx
movups (%r12), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_US+0x19809, %rdi
xor %r15, %r15
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
inc %rdi

// Faulty Load
lea addresses_US+0x10371, %rbp
nop
nop
nop
nop
xor %rax, %rax
mov (%rbp), %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 14240}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
