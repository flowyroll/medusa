.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x12760, %rsi
lea addresses_A_ht+0x831c, %rdi
nop
nop
nop
nop
add $17631, %r12
mov $102, %rcx
rep movsl
and $62275, %rdx
lea addresses_A_ht+0x10b38, %rsi
lea addresses_WT_ht+0xc100, %rdi
nop
nop
nop
dec %r14
mov $67, %rcx
rep movsl
nop
nop
dec %r14
lea addresses_normal_ht+0xe77b, %rdi
nop
nop
nop
nop
nop
and $14823, %r12
mov (%rdi), %r14
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x14e76, %rsi
nop
nop
cmp $32500, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
add $6932, %r12
lea addresses_UC_ht+0x6006, %r9
nop
nop
nop
nop
inc %rsi
movb (%r9), %r12b
nop
xor %r12, %r12
lea addresses_D_ht+0x17300, %r9
nop
nop
dec %rdx
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
sub $5222, %rdi
lea addresses_UC_ht+0xbc00, %rsi
lea addresses_D_ht+0x15f00, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $126, %rcx
rep movsq
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x18248, %r9
nop
add $8466, %rdx
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_D_ht+0x17300, %rsi
lea addresses_WC_ht+0x6c58, %rdi
nop
and $17313, %rbp
mov $100, %rcx
rep movsb
nop
nop
nop
nop
xor $56843, %rdx
lea addresses_D_ht+0x72c8, %r9
sub %rdx, %rdx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x183ac, %rdi
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, (%rdi)
nop
sub $56031, %rcx
lea addresses_normal_ht+0x1d800, %r14
nop
cmp $53831, %rdi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
cmp $18076, %rdi
lea addresses_normal_ht+0xddbc, %rcx
inc %rbp
movb $0x61, (%rcx)
nop
nop
dec %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1d5e6, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
inc %r12

// Faulty Load
lea addresses_WC+0x16b00, %rcx
nop
nop
nop
nop
nop
xor $9947, %rdx
movntdqa (%rcx), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'44': 12, '46': 2458, '49': 59, 'a3': 3, '59': 1, '00': 14315, 'ff': 2, '45': 4975, '08': 4}
00 46 46 00 00 00 45 00 00 00 45 00 00 44 45 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 45 45 00 00 00 46 00 00 46 45 00 00 46 45 00 00 00 45 00 00 45 00 00 00 45 46 00 00 46 45 00 00 00 46 00 00 45 00 00 00 45 46 00 00 45 45 00 00 45 45 00 00 45 45 00 00 45 00 00 00 45 45 00 00 45 45 00 00 45 00 00 00 45 45 00 00 49 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 46 00 00 00 00 00 00 45 46 00 00 45 45 00 00 46 46 00 00 45 45 00 00 46 45 00 00 00 46 00 00 00 45 00 00 45 00 00 00 46 46 00 00 00 45 45 00 00 46 00 00 00 45 45 00 00 45 45 00 00 45 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 46 46 00 00 45 00 00 00 45 45 00 00 45 46 00 00 46 46 00 00 45 46 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 45 00 00 45 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 00 00 00 00 45 00 00 00 46 00 00 00 00 45 46 00 00 45 46 00 00 00 46 00 00 00 45 00 00 46 45 00 00 45 00 00 00 45 45 00 00 45 45 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 00 00 00 46 45 00 00 00 49 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 46 00 00 00 45 46 00 00 45 45 00 00 46 45 00 00 00 49 00 00 00 49 00 00 00 45 00 00 00 45 00 00 00 46 00 00 00 45 46 00 00 00 45 00 00 00 46 00 00 46 46 00 00 46 45 00 00 46 00 00 00 46 00 00 00 45 00 00 00 46 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 46 00 00 45 46 00 00 46 46 00 00 45 45 00 00 45 45 00 00 00 45 00 00 45 45 00 00 00 45 00 00 46 00 00 00 00 45 00 00 00 45 00 00 44 45 46 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 00 45 00 00 45 45 00 00 00 45 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 46 00 00 45 00 00 00 46 46 00 00 46 45 00 00 00 45 00 00 45 00 00 00 46 00 00 00 00 45 00 00 00 45 00 00 08 46 46 00 00 00 45 00 00 00 46 00 00 46 45 00 00 00 00 00 00 46 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 00 46 00 00 00 45 46 00 00 45 45 00 00 45 45 00 00 45 45 00 00 46 45 00 00 00 46 00 00 45 45 00 00 45 46 00 00 45 00 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 00 00 00 45 00 00 00 45 46 00 00 46 45 00 00 00 46 00 00 46 46 00 00 00 45 45 00 00 00 00 00 00 45 45 00 00 45 45 00 00 00 00 00 00 45 45 00 00 45 46 00 00 45 45 00 00 46 45 00 00 45 46 00 00 46 46 00 00 46 45 00 00 46 00 00 00 46 46 00 00 46 46 00 00 46 46 00 00 49 00 00 00 46 46 00 00 00 45 00 00 00 46 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 46 00 00 46 45 00 00 00 45 00 00 00 45 46 00 00 00 45 00 00 45 00 00 00 46 46 00 00 46 00 00 00 45 00 00 00 45 45 00 00 46 45 00 00 00 46 46 00 00 45 00 00 00 45 45 00 00 46 46 00 00 00 45 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 46 46 00 00 46 46 00 00 46 00 00 00 45 00 00 00 45 45 00 00 45 45 00 00 00 46 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00 00
*/
