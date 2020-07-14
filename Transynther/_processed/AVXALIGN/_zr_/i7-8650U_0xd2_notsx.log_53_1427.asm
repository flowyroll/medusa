.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rdx
push %rsi
lea addresses_UC_ht+0x1027f, %r8
nop
nop
dec %r10
movups (%r8), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
sub $39738, %rsi
lea addresses_normal_ht+0x8faf, %rdx
nop
inc %r14
movl $0x61626364, (%rdx)
nop
nop
nop
nop
and $60143, %rsi
lea addresses_WC_ht+0xd4ff, %r10
nop
nop
nop
cmp $45346, %r15
movw $0x6162, (%r10)
inc %rsi
lea addresses_UC_ht+0x1b6f7, %r15
nop
nop
nop
nop
cmp $5848, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%r15)
nop
nop
nop
nop
nop
add %r8, %r8
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_WT+0x1c39b, %r11
and %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r11)
xor $55221, %r11

// Store
lea addresses_UC+0x5e7b, %r13
nop
nop
nop
nop
nop
inc %r11
movl $0x51525354, (%r13)
nop
nop
nop
nop
xor $33278, %r12

// Store
lea addresses_WT+0xe1ff, %r11
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, (%r11)
inc %r12

// Store
mov $0x3234710000000f9a, %r13
nop
sub $7464, %r9
movl $0x51525354, (%r13)
cmp $56985, %r9

// Store
lea addresses_normal+0x474f, %r8
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movups %xmm5, (%r8)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0xb27f, %r12
and %r13, %r13
movw $0x5152, (%r12)
nop
nop
and %r12, %r12

// Store
lea addresses_UC+0xd27f, %r11
nop
nop
nop
nop
nop
sub $11296, %r12
movl $0x51525354, (%r11)
nop
nop
nop
inc %r9

// Store
lea addresses_WT+0x1ca7f, %rdx
sub $59413, %r11
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
nop
nop
nop
add $6037, %rdi

// Faulty Load
lea addresses_normal+0x1227f, %rdi
nop
nop
nop
nop
and $38410, %r12
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
