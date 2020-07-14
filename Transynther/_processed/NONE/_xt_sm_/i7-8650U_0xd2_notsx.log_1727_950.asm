.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17c5b, %rsi
lea addresses_normal_ht+0x16deb, %rdi
nop
nop
sub $5904, %r12
mov $74, %rcx
rep movsw
nop
add %r8, %r8
lea addresses_normal_ht+0x1096f, %r12
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%r12)
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x152db, %r8
nop
nop
and $18773, %r15
movb $0x61, (%r8)
and %rsi, %rsi
lea addresses_normal_ht+0xddb3, %rsi
lea addresses_WC_ht+0x1e02b, %rdi
clflush (%rsi)
nop
nop
nop
cmp $5463, %r15
mov $67, %rcx
rep movsl
nop
nop
nop
nop
cmp $9205, %r15
lea addresses_normal_ht+0x116fb, %rdi
xor $12819, %r12
vmovups (%rdi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
add %r13, %r13
lea addresses_D_ht+0x13b0b, %rsi
nop
nop
nop
nop
sub %r12, %r12
movb $0x61, (%rsi)
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_WT+0x184fb, %r8
nop
nop
nop
sub $10578, %r13
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
sub %r10, %r10

// REPMOV
lea addresses_D+0x2fb, %rsi
lea addresses_WC+0x91fb, %rdi
nop
nop
add %r8, %r8
mov $122, %rcx
rep movsq
nop
nop
and %r9, %r9

// Store
lea addresses_WC+0xc7b, %r13
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, (%r13)
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x1eebb, %rsi
nop
nop
nop
sub $20071, %r8
movl $0x51525354, (%rsi)
nop
nop
add $2039, %r8

// Store
lea addresses_WC+0x14b3b, %r10
nop
nop
nop
nop
nop
xor $58101, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movaps %xmm2, (%r10)

// Exception!!!
mov (0), %rbx
nop
nop
dec %rdi

// Store
lea addresses_UC+0x1ae41, %r10
clflush (%r10)
nop
nop
nop
and %rbx, %rbx
movw $0x5152, (%r10)
sub $18927, %r9

// Store
lea addresses_UC+0x17afb, %r8
nop
nop
nop
nop
xor $62741, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%r8)
add %rsi, %rsi

// Store
lea addresses_RW+0x5a13, %rcx
sub $19032, %r9
movb $0x51, (%rcx)
nop
cmp %rdi, %rdi

// Store
lea addresses_D+0x2fb, %rsi
nop
nop
nop
nop
add $26975, %r9
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
and $8205, %rsi

// Faulty Load
lea addresses_D+0x2fb, %r10
nop
nop
inc %rbx
movb (%r10), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'58': 1727}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
