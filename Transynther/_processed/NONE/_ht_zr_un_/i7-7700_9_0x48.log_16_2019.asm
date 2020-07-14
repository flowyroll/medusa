.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19ee2, %rbx
nop
nop
nop
cmp $62386, %r11
movl $0x61626364, (%rbx)
xor $3007, %rbx
lea addresses_A_ht+0x547a, %r9
nop
nop
cmp $25439, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
nop
and $19253, %r12
lea addresses_UC_ht+0x7dfa, %rsi
lea addresses_normal_ht+0x1db0, %rdi
and %rax, %rax
mov $8, %rcx
rep movsl
nop
sub %r11, %r11
lea addresses_A_ht+0x15b7a, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0x626a, %rsi
lea addresses_WC_ht+0x18dfa, %rdi
nop
nop
inc %r9
mov $27, %rcx
rep movsw
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x141fa, %r9
clflush (%r9)
nop
nop
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
inc %rdi
lea addresses_D_ht+0x1894b, %r9
nop
nop
nop
nop
add $18512, %r12
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
xor $55578, %rbx
lea addresses_normal_ht+0xbc7a, %rdi
nop
nop
nop
nop
nop
and $48084, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm0
movups %xmm0, (%rdi)
nop
nop
nop
nop
nop
add $6003, %r12
lea addresses_normal_ht+0x183fa, %rbx
nop
nop
nop
nop
nop
sub $41505, %rsi
movb (%rbx), %r11b
nop
nop
add $9859, %r9
lea addresses_A_ht+0x12dfa, %rcx
inc %r12
movb (%rcx), %r11b
nop
nop
and $47095, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Load
lea addresses_PSE+0x1275e, %rcx
nop
sub %rax, %rax
movb (%rcx), %r10b
nop
nop
dec %rcx

// REPMOV
lea addresses_A+0x1ccd8, %rsi
lea addresses_US+0x46fa, %rdi
nop
nop
nop
nop
xor $8357, %rax
mov $79, %rcx
rep movsb
nop
nop
nop
nop
inc %r10

// Load
lea addresses_normal+0x1f4fa, %rax
nop
nop
nop
nop
nop
xor $4559, %rcx
mov (%rax), %edi
nop
sub $29637, %r15

// Faulty Load
lea addresses_UC+0x12dfa, %rax
nop
nop
nop
and $36387, %r13
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_US', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'08': 2, '72': 3, '46': 6, '00': 5}
46 46 08 46 08 46 72 00 46 46 00 72 00 72 00 00
*/
