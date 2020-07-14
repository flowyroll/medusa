.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6f5f, %rsi
lea addresses_WC_ht+0xaaff, %rdi
nop
sub $25226, %r12
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x8aff, %r11
nop
nop
nop
nop
inc %r13
mov (%r11), %ecx
inc %r12
lea addresses_WC_ht+0x1e0ff, %rsi
clflush (%rsi)
nop
cmp $42196, %r11
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x168a3, %rsi
lea addresses_D_ht+0xed3f, %rdi
clflush (%rsi)
xor %rax, %rax
mov $88, %rcx
rep movsw
inc %rsi
lea addresses_WC_ht+0xdbb, %r14
nop
nop
nop
nop
add $12071, %r11
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
and $12398, %r14
lea addresses_D_ht+0x17d69, %rdi
nop
nop
nop
sub $47862, %rcx
mov (%rdi), %esi
nop
nop
xor $10292, %rax
lea addresses_A_ht+0x1eef, %rsi
lea addresses_A_ht+0x15b8f, %rdi
clflush (%rdi)
nop
nop
sub $6010, %r14
mov $22, %rcx
rep movsl
nop
nop
nop
add $18121, %rcx
lea addresses_WC_ht+0x1dcff, %rsi
nop
nop
nop
nop
nop
xor $20090, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x14ffb, %rsi
nop
nop
nop
nop
nop
dec %r11
mov (%rsi), %r14
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x19eaf, %rsi
lea addresses_WT_ht+0x18aff, %rdi
clflush (%rsi)
nop
nop
and %r14, %r14
mov $89, %rcx
rep movsl
inc %r12
lea addresses_WC_ht+0x69e8, %rsi
lea addresses_A_ht+0xf8df, %rdi
nop
nop
nop
xor %r13, %r13
mov $94, %rcx
rep movsb
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x10e57, %r13
nop
nop
add %r11, %r11
movl $0x61626364, (%r13)
dec %r14
lea addresses_A_ht+0x158ff, %r13
and $23278, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WC_ht+0x1e9bf, %rsi
lea addresses_WT_ht+0x1c51f, %rdi
nop
sub %r12, %r12
mov $95, %rcx
rep movsb
and $22054, %r11
lea addresses_normal_ht+0xced7, %r13
nop
add %rdi, %rdi
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm0
vpextrq $0, %xmm0, %r11
add $52430, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rcx

// Store
lea addresses_A+0x1eeff, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $41498, %r13
mov $0x5152535455565758, %rbp
movq %rbp, (%rcx)
nop
nop
nop
nop
cmp %r13, %r13

// Store
mov $0x39fc7100000006ff, %rcx
dec %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rcx)
add %rcx, %rcx

// Store
lea addresses_US+0x102d2, %r10
cmp %rbp, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
dec %r9

// Faulty Load
lea addresses_US+0x1c2ff, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 8513, '45': 111, '44': 1531, '48': 532}
00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 45 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 48 44 44 00 00 00 00 00 00 00 00 44 48 00 48 00 00 00 00 00 44 44 00 44 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 48 00 44 00 00 48 44 00 00 00 44 44 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 45 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 48 00 00 00 00 44 00 48 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 44 00 48 00 00 00 00 00 44 44 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 48 00 48 00 00 45 00 00 44 44 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 48 00 00 48 00 44 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 45 00 00 44 00 00 00 00 00 00 00 48 44 00 00 00 00 44 44 00 00 00 00 00 44 00 00 44 48 00 44 00 00 00 00 00 00 44 00 48 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 48 44 00 00 00 00 00 44 00 48 00 00 00 00 00 00 00 44 00 48 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 44 44 00 00 00 48 00 00 00 48 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 48 00 00 44 44 00 00 00 00 48 00 00 00 44 00 00 00 00 00 00 48 00 00 00 00 44 00 44 00 00 00 00 44 44 44 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 48 00 00 00 00 00 00 44 00 00 00 00 00 45 00 00 45 44 44 00 00 48 00 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 00 00 44 44 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 44 44 00 48 48 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 48 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 48 00 44 00 44 00 00 00 00 48 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 48 44 44 00 00 44 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 44 44 00 00 00 00 00 48 00 00 00 48 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 48 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 44 00 00 00 00 48 00 00 00 44 44 00 00 00 00 00 00 00 48 00 00 00 00 44 00 00 00 44 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 44 00 44 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 44 00 44 48 00 00 44 00 44 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 48 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00
*/
