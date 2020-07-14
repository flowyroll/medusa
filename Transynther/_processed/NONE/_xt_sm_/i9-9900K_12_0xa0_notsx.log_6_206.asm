.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b278, %r10
nop
and %rbx, %rbx
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
nop
nop
dec %r9
lea addresses_D_ht+0x2748, %r13
nop
nop
nop
add $43774, %r15
mov $0x6162636465666768, %r11
movq %r11, %xmm6
vmovups %ymm6, (%r13)
cmp $56919, %rbx
lea addresses_A_ht+0x1dcf8, %rsi
lea addresses_WC_ht+0x180f8, %rdi
nop
nop
nop
nop
cmp $31308, %r13
mov $103, %rcx
rep movsq
inc %r9
lea addresses_WT_ht+0x38f8, %rsi
lea addresses_normal_ht+0x12f8, %rdi
nop
sub %r13, %r13
mov $74, %rcx
rep movsw
nop
sub %rsi, %rsi
lea addresses_D_ht+0xaf16, %r9
nop
nop
nop
nop
nop
sub %rdi, %rdi
movl $0x61626364, (%r9)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x7bc7, %rsi
lea addresses_WC_ht+0x1b6f8, %rdi
nop
nop
nop
nop
inc %rbx
mov $53, %rcx
rep movsl
nop
nop
dec %rbx
lea addresses_D_ht+0xf3d0, %r13
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
and $50992, %rbx
lea addresses_WT_ht+0xb0f8, %rsi
lea addresses_normal_ht+0x19838, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $7, %rcx
rep movsw
nop
nop
xor $52388, %rsi
lea addresses_D_ht+0x54f8, %r11
nop
nop
nop
sub $53539, %rdi
mov (%r11), %r10d
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x95ef, %rdi
nop
nop
nop
nop
cmp $64464, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%rdi)
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9
push %rdi

// Store
lea addresses_RW+0x1a6f8, %r12
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r12)
nop
xor $42615, %r14

// Store
lea addresses_RW+0x2cf8, %rdi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rdi)
nop
nop
sub %r14, %r14

// Store
lea addresses_PSE+0x18df8, %r12
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
xor %r13, %r13

// Store
lea addresses_normal+0x196fe, %r9
clflush (%r9)
nop
nop
inc %r13
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_A+0x14330, %r12
clflush (%r12)
nop
xor $19059, %r15
mov $0x5152535455565758, %r14
movq %r14, (%r12)
dec %r13

// Store
mov $0x398, %r9
nop
nop
nop
nop
add $40704, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
and $62661, %r13

// Faulty Load
lea addresses_RW+0x1a6f8, %r11
clflush (%r11)
nop
nop
inc %r14
movb (%r11), %r13b
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'58': 6}
58 58 58 58 58 58
*/
