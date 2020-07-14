.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3254, %rcx
nop
xor $60417, %r10
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
add $53598, %r8
lea addresses_A_ht+0x7bd4, %rsi
lea addresses_D_ht+0x15e49, %rdi
sub %rbp, %rbp
mov $52, %rcx
rep movsb
nop
nop
nop
nop
sub $43601, %r10
lea addresses_normal_ht+0x1a254, %r8
nop
nop
add %r11, %r11
mov (%r8), %rbp
nop
and $63322, %rcx
lea addresses_normal_ht+0xde54, %r11
nop
nop
nop
nop
nop
cmp $46675, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r11)
add $24545, %r10
lea addresses_UC_ht+0x95b4, %rsi
lea addresses_UC_ht+0x11254, %rdi
nop
sub $61969, %rbx
mov $53, %rcx
rep movsw
nop
nop
nop
nop
add $46064, %r11
lea addresses_D_ht+0x12798, %rsi
lea addresses_WC_ht+0x17950, %rdi
nop
cmp $62884, %r11
mov $19, %rcx
rep movsq
nop
nop
nop
nop
add $22939, %r10
lea addresses_D_ht+0x4554, %r10
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
xor $8167, %rsi
lea addresses_D_ht+0xbd54, %rsi
lea addresses_normal_ht+0x11154, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $43, %rcx
rep movsb
nop
sub $60947, %rcx
lea addresses_UC_ht+0x3064, %rbp
nop
nop
nop
nop
sub $50254, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x15e7d, %r8
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x16052, %rdi
nop
sub %rbp, %rbp
mov (%rdi), %si
xor $5092, %r8
lea addresses_normal_ht+0x1277c, %r8
add $63557, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
add %r10, %r10
lea addresses_D_ht+0x1d114, %rbx
nop
nop
nop
nop
dec %r8
movb (%rbx), %r11b
nop
nop
dec %rsi
lea addresses_UC_ht+0x3904, %rsi
lea addresses_WT_ht+0x8554, %rdi
nop
nop
nop
cmp $53735, %rbp
mov $112, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Store
lea addresses_normal+0xd574, %r15
nop
nop
nop
nop
nop
xor $40155, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
nop
nop
cmp $33301, %r11

// Store
lea addresses_normal+0x76d4, %r13
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, (%r13)
nop
sub $9070, %rbx

// Store
lea addresses_WT+0x1f554, %r15
nop
nop
nop
nop
cmp $42084, %r11
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_A+0x17d54, %r8
nop
nop
nop
and $8289, %rbx
vmovups (%r8), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
nop
nop
dec %r14

// Store
lea addresses_normal+0x1f254, %r11
nop
add %r13, %r13
movw $0x5152, (%r11)
nop
xor %r13, %r13

// Store
lea addresses_WT+0x19f54, %r8
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r8)

// Exception!!!
nop
nop
mov (0), %r11
nop
nop
nop
nop
sub $50382, %rbx

// Store
lea addresses_WC+0x13454, %r15
nop
nop
and %r14, %r14
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
sub %r14, %r14

// Store
lea addresses_UC+0x7d54, %rbx
nop
nop
nop
nop
nop
add %r15, %r15
movl $0x51525354, (%rbx)
nop
nop
nop
nop
cmp %rbx, %rbx

// Faulty Load
lea addresses_WT+0x3554, %rsi
nop
nop
nop
and $57169, %rbx
movb (%rsi), %r13b
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'39': 17}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
