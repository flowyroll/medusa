.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa576, %rdi
nop
nop
nop
sub %r12, %r12
mov (%rdi), %r10d
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_A_ht+0x1b006, %rdx
nop
and %r14, %r14
movw $0x6162, (%rdx)
dec %r10
lea addresses_WT_ht+0x1372, %rsi
lea addresses_normal_ht+0xa86, %rdi
sub %r14, %r14
mov $104, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_D_ht+0x1127c, %rsi
lea addresses_normal_ht+0x87a6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r8
mov $56, %rcx
rep movsl
cmp $17234, %rdi
lea addresses_WT_ht+0x1340a, %rcx
nop
sub $42057, %r8
mov (%rcx), %rdx
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1bc06, %rsi
lea addresses_UC_ht+0x1640a, %rdi
cmp %r14, %r14
mov $31, %rcx
rep movsb
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x4806, %r14
sub $23442, %r12
movb (%r14), %r8b
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x5806, %rdi
nop
nop
nop
nop
cmp %r14, %r14
movb (%rdi), %r8b
nop
add $61533, %r14
lea addresses_normal_ht+0x1f6e, %rsi
lea addresses_WC_ht+0x2e06, %rdi
nop
nop
add %r8, %r8
mov $118, %rcx
rep movsw
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1006, %rsi
lea addresses_UC_ht+0xe006, %rdi
nop
xor %r10, %r10
mov $4, %rcx
rep movsb
inc %rcx
lea addresses_WC_ht+0x1b886, %rsi
lea addresses_WT_ht+0x12006, %rdi
nop
nop
sub %r10, %r10
mov $2, %rcx
rep movsq
nop
nop
nop
and %r12, %r12
lea addresses_normal_ht+0x1bcfe, %rsi
lea addresses_UC_ht+0x7806, %rdi
nop
nop
and $10478, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rdx

// Store
lea addresses_UC+0x12506, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovntdq %ymm2, (%r11)
inc %r12

// Store
lea addresses_WT+0x206, %r10
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r10)
nop
add $63846, %r11

// Faulty Load
lea addresses_RW+0x9006, %r11
nop
nop
nop
nop
and $8849, %r10
mov (%r11), %rdx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'32': 46}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
