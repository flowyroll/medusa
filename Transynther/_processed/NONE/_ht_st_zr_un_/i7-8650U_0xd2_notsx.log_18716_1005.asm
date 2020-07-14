.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1197b, %r8
cmp $45619, %r11
movb (%r8), %r12b
nop
xor $56473, %rcx
lea addresses_WT_ht+0x1a17b, %rsi
nop
nop
nop
nop
add %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
cmp $37631, %rsi
lea addresses_WT_ht+0x1a97b, %rsi
lea addresses_A_ht+0x19f23, %rdi
nop
cmp $46144, %rdx
mov $87, %rcx
rep movsl
nop
nop
cmp $42458, %rcx
lea addresses_WC_ht+0x15841, %rdi
nop
nop
nop
nop
nop
mfence
mov (%rdi), %dx
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x108d3, %r8
nop
sub %rcx, %rcx
movb (%r8), %r12b
nop
cmp %r12, %r12
lea addresses_D_ht+0x1990f, %r11
inc %rsi
movb $0x61, (%r11)
nop
nop
cmp $29306, %rdi
lea addresses_WT_ht+0x143d5, %rbx
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rbx)
and %r11, %r11
lea addresses_WC_ht+0x1c57b, %rcx
nop
nop
nop
nop
nop
add $13480, %rbx
mov (%rcx), %r8
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x116bb, %rsi
nop
and $21982, %rbx
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x12c0b, %r11
cmp $58457, %rsi
movb (%r11), %cl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0xd77b, %rsi
lea addresses_WT_ht+0x1a37b, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $32121, %rdx
mov $123, %rcx
rep movsq
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xd85b, %rbx
nop
nop
nop
nop
nop
xor $26904, %rdx
mov (%rbx), %esi
nop
add %rdx, %rdx
lea addresses_A_ht+0x1107b, %rsi
lea addresses_A_ht+0x1bc4b, %rdi
nop
nop
nop
nop
nop
add %rbx, %rbx
mov $41, %rcx
rep movsw
sub $39434, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rdi

// Load
lea addresses_normal+0x677b, %rdi
nop
nop
nop
dec %rbp
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r13
nop
sub %rbp, %rbp

// Load
lea addresses_UC+0xfafb, %r10
nop
nop
nop
nop
nop
and %r12, %r12
movb (%r10), %r13b
sub %r12, %r12

// Store
lea addresses_UC+0x14d9f, %rdi
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rdi)
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x1c8af, %r10
nop
nop
nop
nop
and $3560, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// Store
mov $0x34a883000000097b, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rdi)
sub %r12, %r12

// Store
lea addresses_D+0x1a7fb, %r13
nop
and $1885, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r13)
nop
nop
add %r13, %r13

// Faulty Load
lea addresses_A+0x1577b, %r13
nop
add $43758, %r15
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'00': 16378, '45': 1305, '34': 591, '49': 201, '02': 72, '48': 49, '30': 10, '47': 26, '78': 10, '08': 33, '44': 11, 'b8': 3, '46': 17, 'c0': 4, '60': 4, '31': 1, '50': 1}
00 00 00 00 00 45 00 00 34 45 45 00 00 00 00 00 45 00 49 02 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 45 00 00 00 00 45 00 45 34 45 00 45 00 00 34 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 02 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 34 49 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 34 00 00 45 00 45 00 00 48 00 00 00 00 00 00 45 00 00 00 30 00 00 49 45 45 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 02 00 00 00 00 47 78 00 00 34 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 34 00 00 00 00 00 34 00 00 49 34 08 00 00 00 00 02 49 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 34 47 48 00 00 00 00 00 00 00 00 45 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 34 00 00 00 08 00 00 34 00 00 00 00 49 00 00 00 45 00 34 00 00 00 00 45 45 49 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 34 00 00 49 00 00 45 00 00 45 00 00 00 00 00 45 34 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 34 45 00 00 34 00 00 00 00 45 00 00 34 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 34 00 00 00 08 00 00 00 00 00 00 00 45 00 44 00 00 00 34 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 34 00 49 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 08 00 00 00 45 45 00 34 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 34 00 00 00 45 00 00 00 45 00 34 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
