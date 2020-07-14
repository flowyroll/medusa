.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3118, %r12
clflush (%r12)
nop
xor %r14, %r14
mov (%r12), %rbp
nop
dec %r8
lea addresses_UC_ht+0x127bc, %rsi
lea addresses_WC_ht+0x3d18, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $27865, %rbp
mov $56, %rcx
rep movsb
nop
nop
nop
sub $15499, %rbp
lea addresses_A_ht+0x1c1e0, %rsi
lea addresses_normal_ht+0x1ca52, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $18433, %r13
mov $31, %rcx
rep movsl
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x13118, %rcx
add %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
and $48929, %r14
lea addresses_WT_ht+0x1cd18, %r14
nop
xor %r12, %r12
mov (%r14), %r13
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x258, %r8
nop
nop
add $30371, %rsi
and $0xffffffffffffffc0, %r8
vmovntdqa (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x1f98, %rsi
lea addresses_WC_ht+0x18a28, %rdi
nop
nop
and $52141, %r14
mov $53, %rcx
rep movsw
nop
nop
nop
cmp $3681, %r14
lea addresses_D_ht+0x1a348, %rbp
nop
nop
add %r13, %r13
movups (%rbp), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0xe8b0, %rcx
lfence
movb (%rcx), %r12b
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x16518, %r14
nop
nop
nop
nop
and $24220, %rsi
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x13ed8, %rsi
lea addresses_normal_ht+0x15918, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $2984, %r8
mov $73, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x2918, %r14
nop
dec %rcx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x1518, %rsi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
sub $30662, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x3fd8, %rsi
lea addresses_WC+0xe318, %rdi
nop
nop
nop
sub $20521, %r10
mov $26, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r11, %r11

// Store
mov $0x58319b0000000418, %rcx
nop
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rcx)
nop
nop
and $16574, %r11

// Store
lea addresses_WC+0x17618, %r11
nop
cmp %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r11)
nop
nop
nop
nop
cmp $61319, %rcx

// Store
lea addresses_RW+0x1bd98, %r11
nop
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r11)

// Exception!!!
nop
nop
nop
nop
mov (0), %r11
xor $5991, %rbp

// Store
lea addresses_A+0xd918, %rsi
nop
nop
inc %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
add %rsi, %rsi

// Faulty Load
lea addresses_A+0xd918, %rbp
add $37768, %r11
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_US'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'45': 75, '00': 62}
45 45 45 45 45 00 45 00 00 00 45 00 45 00 00 00 45 00 00 45 45 00 45 00 45 45 00 45 45 45 00 00 00 00 45 00 45 00 45 00 00 00 45 45 45 00 45 45 00 00 00 45 45 00 45 45 45 00 00 00 00 45 45 00 00 00 45 45 45 00 45 45 45 00 45 00 00 00 00 45 45 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 45 45 45 00 00 45 45 00 45 00 45 00 45 45 45 45 45 45 45 00 00 00 45 45 00 45 45 45 00 45 45 00 00 45 45 00 45 45 45 00 45
*/
