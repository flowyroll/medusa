.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xcb4f, %r14
nop
nop
nop
nop
nop
lfence
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
and $18796, %r9
lea addresses_D_ht+0x724f, %rbp
nop
nop
xor $7225, %rdx
movb $0x61, (%rbp)
xor $167, %r9
lea addresses_A_ht+0xcacf, %r15
nop
add %r13, %r13
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0x797, %r15
nop
nop
xor $56393, %rbp
movb (%r15), %r13b
nop
inc %r13
lea addresses_D_ht+0xd6cf, %rsi
lea addresses_WT_ht+0x651f, %rdi
clflush (%rsi)
dec %r14
mov $92, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0x5ff, %rsi
lea addresses_WT_ht+0x4f0f, %rdi
xor $26695, %rdx
mov $29, %rcx
rep movsb
and %rdi, %rdi
lea addresses_WC_ht+0x41d9, %r13
clflush (%r13)
sub $53931, %rbp
and $0xffffffffffffffc0, %r13
vmovaps (%r13), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0xe97, %rsi
lea addresses_A_ht+0x18d0f, %rdi
sub %r15, %r15
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $514, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rdi

// Store
lea addresses_RW+0x7ecf, %r12
nop
nop
cmp %r10, %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%r12)
nop
nop
sub $59598, %rdi

// Store
lea addresses_normal+0x16e37, %r10
add %rbx, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
xor $18439, %r14

// Store
lea addresses_UC+0x27cd, %rbx
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movntdq %xmm3, (%rbx)
nop
sub %rdi, %rdi

// Store
mov $0x7c5b700000000e6f, %r11
nop
dec %r9
movb $0x51, (%r11)
nop
add $48370, %rdi

// Faulty Load
lea addresses_RW+0x7ecf, %r9
nop
nop
nop
xor %r10, %r10
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'58': 408}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
