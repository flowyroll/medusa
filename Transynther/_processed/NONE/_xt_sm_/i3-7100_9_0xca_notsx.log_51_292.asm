.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rdx
push %rsi
lea addresses_WT_ht+0x70a3, %r13
nop
nop
nop
and %r11, %r11
movb $0x61, (%r13)
nop
nop
xor $36497, %r10
lea addresses_D_ht+0x137b3, %r9
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm4
and $0xffffffffffffffc0, %r9
movntdq %xmm4, (%r9)
nop
nop
nop
nop
nop
add $4865, %r9
lea addresses_normal_ht+0x14dd3, %rdx
nop
nop
xor %r8, %r8
movb (%rdx), %r10b
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x104e3, %r11
nop
nop
nop
nop
nop
sub $11151, %r9
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_US+0x4ee3, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %r8, %r8
movb $0x51, (%rsi)
nop
nop
nop
add $11215, %rdx

// Store
lea addresses_WC+0x5ee3, %r12
nop
nop
and $22018, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x7d6e, %rsi
nop
nop
nop
nop
sub $5547, %r9
movl $0x51525354, (%rsi)
nop
add $31110, %r10

// Store
mov $0x2e3, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp $38656, %r10
movb $0x51, (%r12)
nop
nop
nop
nop
nop
dec %rdx

// Store
lea addresses_A+0x1c6e3, %r12
nop
nop
nop
nop
add $18760, %rdx
movl $0x51525354, (%r12)
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_A+0x1c6e3, %r10
nop
nop
cmp %r12, %r12
movb (%r10), %dl
lea oracles, %r9
and $0xff, %rdx
shlq $12, %rdx
mov (%r9,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': True, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}}
{'54': 51}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
