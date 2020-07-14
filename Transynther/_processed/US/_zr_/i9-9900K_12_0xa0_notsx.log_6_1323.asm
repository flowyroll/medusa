.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1439a, %r8
nop
nop
nop
nop
nop
xor $17009, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r8)
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0x1153a, %r8
clflush (%r8)
nop
xor $43807, %rbx
movw $0x6162, (%r8)
nop
nop
nop
nop
and $36136, %r10
lea addresses_normal_ht+0x70e2, %rsi
lea addresses_D_ht+0x8d3a, %rdi
nop
xor %r14, %r14
mov $82, %rcx
rep movsb
nop
add %r12, %r12
lea addresses_UC_ht+0x1e07d, %r14
nop
nop
nop
nop
inc %r12
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
and $6346, %rdi
lea addresses_UC_ht+0x8582, %r13
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r13)
cmp $5106, %rcx
lea addresses_normal_ht+0x79ba, %rsi
nop
nop
cmp $53636, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rsi)
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1d83a, %rcx
nop
cmp $61869, %rsi
mov (%rcx), %edi
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x11eda, %rsi
lea addresses_UC_ht+0x4492, %rdi
clflush (%rsi)
nop
nop
cmp %r8, %r8
mov $120, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $3394, %r14
lea addresses_D_ht+0x9f6a, %rsi
dec %rcx
mov (%rsi), %r12w
nop
nop
nop
nop
nop
xor $31096, %r8
lea addresses_WT_ht+0x1be3a, %r8
nop
nop
nop
nop
nop
cmp %r13, %r13
movb (%r8), %r14b
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0xf07a, %r10
clflush (%r10)
nop
inc %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
cmp $6079, %r10
lea addresses_UC_ht+0x106da, %rsi
lea addresses_WC_ht+0x1dbba, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $34790, %r10
mov $51, %rcx
rep movsl
nop
nop
inc %r10
lea addresses_UC_ht+0x1d63a, %rsi
lea addresses_A_ht+0x177e2, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $93, %rcx
rep movsb
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0x587a, %rcx
xor %rbp, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rcx)
nop
nop
add $10873, %r8

// Store
lea addresses_WT+0xc13a, %r11
and $43926, %r15
movl $0x51525354, (%r11)
nop
nop
sub $35152, %r11

// Store
lea addresses_A+0xe23a, %rcx
nop
nop
nop
nop
xor $25057, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rcx)
nop
and %rsi, %rsi

// Faulty Load
lea addresses_US+0x1f63a, %r8
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r8), %rcx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
