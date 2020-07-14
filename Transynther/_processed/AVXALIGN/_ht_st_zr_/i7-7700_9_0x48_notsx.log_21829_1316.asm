.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x6540, %rsi
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
sub $31483, %rbx
lea addresses_normal_ht+0x14a0, %rbx
xor %r15, %r15
movw $0x6162, (%rbx)
cmp %rdi, %rdi
lea addresses_normal_ht+0x1f40, %r9
nop
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r9)
nop
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0xd678, %rsi
lea addresses_UC_ht+0x1ba34, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r9
mov $95, %rcx
rep movsl
nop
nop
sub $40818, %rdi
lea addresses_UC_ht+0x5b1e, %r15
nop
nop
cmp %r10, %r10
mov (%r15), %r9d
nop
sub %rdi, %rdi
lea addresses_A_ht+0x154c0, %rsi
lea addresses_UC_ht+0x1d100, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $23, %rcx
rep movsb
nop
nop
inc %r15
lea addresses_normal_ht+0xde60, %rsi
lea addresses_UC_ht+0xe540, %rdi
nop
nop
nop
inc %r9
mov $28, %rcx
rep movsb
nop
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x13040, %r9
nop
nop
nop
nop
nop
and $15832, %rcx
mov (%r9), %bx
nop
nop
nop
nop
nop
xor $24907, %rdi
lea addresses_D_ht+0x2140, %r15
nop
nop
nop
nop
sub $17954, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm6
and $0xffffffffffffffc0, %r15
vmovaps %ymm6, (%r15)
nop
nop
sub $34774, %r10
lea addresses_WC_ht+0x10420, %rsi
nop
nop
nop
nop
add %rbx, %rbx
movw $0x6162, (%rsi)
nop
nop
nop
xor $28331, %r14
lea addresses_normal_ht+0xeb48, %r10
xor $21436, %rsi
movw $0x6162, (%r10)
nop
nop
nop
nop
add $61709, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x11ed8, %rdx
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
xor $5270, %r9

// Store
lea addresses_D+0x19b8c, %r12
nop
nop
nop
nop
xor %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, (%r12)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_WT+0x19274, %r9
nop
nop
nop
and $29336, %rax
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
add $3442, %r12

// Store
lea addresses_D+0xb508, %r12
nop
nop
nop
nop
nop
add $58588, %r8
movb $0x51, (%r12)
nop
inc %r9

// REPMOV
lea addresses_A+0xae0, %rsi
lea addresses_normal+0x2428, %rdi
nop
nop
nop
cmp $50033, %r9
mov $103, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $35709, %rsi

// Store
lea addresses_normal+0x1d640, %r8
nop
nop
nop
nop
dec %r12
movb $0x51, (%r8)
nop
nop
inc %rcx

// REPMOV
lea addresses_RW+0xc40, %rsi
lea addresses_WT+0x4e7c, %rdi
nop
dec %r10
mov $7, %rcx
rep movsw
and %r10, %r10

// REPMOV
lea addresses_UC+0x17400, %rsi
lea addresses_WT+0x1540, %rdi
nop
nop
nop
nop
mfence
mov $83, %rcx
rep movsb
nop
nop
nop
nop
cmp %r8, %r8

// Store
lea addresses_WC+0x15540, %rsi
inc %r10
movw $0x5152, (%rsi)
nop
nop
sub $3260, %r15

// Store
lea addresses_RW+0xaf17, %rdx
nop
nop
cmp $23002, %r12
movw $0x5152, (%rdx)
dec %r12

// Store
mov $0x45d47f0000000540, %r8
nop
nop
nop
nop
xor $56779, %rdi
movb $0x51, (%r8)
nop
add $624, %r8

// Store
lea addresses_RW+0x1a540, %rax
nop
nop
xor $64554, %rcx
movl $0x51525354, (%rax)
nop
nop
nop
inc %r12

// Store
lea addresses_WC+0x1e0d8, %r10
nop
nop
xor $50641, %r12
movw $0x5152, (%r10)
nop
cmp $8830, %rdx

// Faulty Load
mov $0x45d47f0000000540, %rdi
clflush (%rdi)
nop
nop
nop
xor $26895, %r15
movntdqa (%rdi), %xmm6
vpextrq $1, %xmm6, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_RW'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'32': 4, '44': 17, '35': 450, '46': 341, '00': 21017}
00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 35 00 00 00 00 00 00 46 00 00 00 00 00 35 00 00 00 35 00 00 35 00 00 00 00 00 00 00 00 46 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
