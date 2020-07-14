.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11fd9, %rsi
lea addresses_A_ht+0x107c1, %rdi
clflush (%rdi)
and %r9, %r9
mov $19, %rcx
rep movsb
add $298, %r13
lea addresses_WC_ht+0x1c49, %rsi
lea addresses_UC_ht+0x7e, %rdi
nop
and $65311, %r9
mov $77, %rcx
rep movsq
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x10019, %rsi
lea addresses_normal_ht+0x19c99, %rdi
nop
cmp %r11, %r11
mov $69, %rcx
rep movsq
nop
nop
and $63855, %r9
lea addresses_UC_ht+0x1199, %r9
nop
nop
and $49061, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
cmp $64812, %r11
lea addresses_UC_ht+0x13c59, %r11
nop
nop
nop
nop
and $42482, %rsi
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
nop
nop
nop
and $24771, %r11
lea addresses_A_ht+0x12d99, %rsi
lea addresses_normal_ht+0x1c199, %rdi
nop
nop
nop
nop
sub %r11, %r11
mov $26, %rcx
rep movsb
nop
nop
nop
nop
cmp $44683, %r11
lea addresses_normal_ht+0x14d99, %rax
nop
nop
nop
nop
nop
xor %rsi, %rsi
mov (%rax), %ecx
dec %r9
lea addresses_A_ht+0x6079, %r9
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r9)
nop
nop
nop
nop
sub $29447, %r9
lea addresses_WT_ht+0xa279, %rsi
lea addresses_UC_ht+0x89f9, %rdi
clflush (%rdi)
nop
nop
nop
and $4521, %rbp
mov $95, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r13
lea addresses_A_ht+0x17bad, %rcx
nop
inc %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rcx
movntdq %xmm3, (%rcx)
nop
and %r11, %r11
lea addresses_normal_ht+0xe891, %r11
and $38481, %r13
movw $0x6162, (%r11)
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x2319, %rax
dec %r9
movw $0x6162, (%rax)
nop
nop
nop
nop
cmp %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x17019, %rbp
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rbp)
nop
xor %rcx, %rcx

// Store
lea addresses_normal+0x6739, %r8
nop
nop
nop
sub $64831, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
nop
cmp $21306, %rbp

// Store
lea addresses_PSE+0xd6b1, %rcx
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movntdq %xmm1, (%rcx)
nop
nop
nop
and $17955, %rcx

// Store
lea addresses_WT+0x17d19, %rcx
nop
nop
nop
nop
nop
dec %rbp
movl $0x51525354, (%rcx)
nop
sub %r14, %r14

// Faulty Load
lea addresses_D+0x1d999, %r12
clflush (%r12)
nop
nop
nop
nop
nop
inc %rbp
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': True, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 73}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
