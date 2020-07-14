.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa17c, %r14
clflush (%r14)
and $43448, %rsi
vmovups (%r14), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
sub %rbp, %rbp
lea addresses_D_ht+0x11924, %rsi
lea addresses_WT_ht+0x1507c, %rdi
nop
nop
add $32568, %rbp
mov $34, %rcx
rep movsw
nop
nop
sub $52356, %rsi
lea addresses_UC_ht+0x9b7c, %rcx
clflush (%rcx)
dec %r10
mov (%rcx), %rdi
nop
nop
sub $21845, %r13
lea addresses_normal_ht+0x1dd7c, %rsi
dec %rbp
mov (%rsi), %r13w
nop
xor $57977, %r14
lea addresses_D_ht+0xf17c, %r10
nop
nop
nop
nop
nop
xor $26034, %rcx
mov (%r10), %si
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xa77c, %r13
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x5b7c, %rsi
lea addresses_UC_ht+0x1795c, %rdi
sub %r8, %r8
mov $19, %rcx
rep movsl
cmp $61402, %r10
lea addresses_WC_ht+0x4efc, %rsi
lea addresses_A_ht+0xff8, %rdi
and %r10, %r10
mov $40, %rcx
rep movsw
cmp %r14, %r14
lea addresses_D_ht+0x1df54, %rsi
clflush (%rsi)
nop
nop
cmp %r8, %r8
movb $0x61, (%rsi)
nop
lfence
lea addresses_WT_ht+0x433c, %r13
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%r13)
nop
nop
cmp $5981, %rcx
lea addresses_UC_ht+0xdba, %rsi
lea addresses_UC_ht+0x1a665, %rdi
cmp %r13, %r13
mov $63, %rcx
rep movsw
nop
nop
nop
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0xdff4, %r10
xor %rbx, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%r10)
add $14249, %rax

// REPMOV
lea addresses_A+0x159bc, %rsi
lea addresses_normal+0xbc5c, %rdi
nop
cmp %rax, %rax
mov $40, %rcx
rep movsq
nop
add $63372, %rbx

// REPMOV
lea addresses_RW+0x77bc, %rsi
lea addresses_PSE+0x1163c, %rdi
xor $15552, %r10
mov $111, %rcx
rep movsl
nop
nop
nop
nop
dec %r14

// Store
mov $0x97c, %rbp
nop
nop
sub %rax, %rax
movl $0x51525354, (%rbp)
nop
dec %rdi

// Store
lea addresses_UC+0xc644, %r14
inc %rbp
movb $0x51, (%r14)
sub %rdi, %rdi

// Faulty Load
mov $0x97c, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
movntdqa (%r10), %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_RW'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'00': 4520, '54': 16028, '35': 1281}
00 00 54 35 35 54 00 54 00 54 54 54 35 54 00 54 00 54 00 54 00 54 54 35 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 00 54 00 35 54 54 00 54 54 00 54 54 00 54 00 54 00 54 00 54 35 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 00 54 54 35 00 54 54 54 00 54 54 54 54 54 00 54 00 35 54 54 00 54 00 35 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 00 35 54 54 54 54 00 54 54 35 54 35 00 54 00 54 00 54 54 54 00 00 54 54 54 54 54 54 35 54 00 54 54 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 35 54 54 00 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 54 00 54 54 54 54 54 00 54 54 54 35 54 35 54 54 54 00 54 54 54 54 54 00 54 54 54 35 54 54 54 00 54 54 54 00 54 00 54 00 54 00 54 00 54 54 54 00 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 35 54 54 54 54 54 54 00 54 00 54 00 54 00 54 00 54 54 00 54 54 54 54 54 54 00 35 54 00 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 00 54 54 54 54 54 54 00 54 35 00 00 54 54 54 00 00 54 54 54 00 54 54 54 35 00 54 54 54 35 54 00 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 00 54 54 54 00 54 00 54 54 54 00 54 00 54 00 54 00 54 00 54 00 54 54 54 54 54 54 35 54 54 00 35 54 54 00 54 54 54 54 54 54 54 54 35 54 54 54 54 00 54 54 54 00 54 00 54 54 00 54 54 00 54 54 54 00 00 00 54 54 54 00 54 00 35 54 54 54 54 54 54 00 00 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 35 54 54 35 35 54 54 00 54 54 54 00 54 00 54 54 54 54 00 00 00 00 54 00 00 00 35 54 00 54 54 54 35 54 00 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 35 54 54 54 00 54 54 54 35 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 35 54 54 54 54 54 54 54 35 54 54 00 54 00 54 54 54 54 54 35 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 35 00 54 54 54 54 00 00 54 00 54 54 54 00 54 54 54 54 00 00 54 00 54 00 00 54 54 54 35 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 00 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 00 54 54 54 35 54 00 54 54 54 54 54 54 00 00 54 00 54 00 54 54 54 00 54 54 35 00 00 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 00 54 35 00 54 54 54 54 54 54 54 00 54 54 54 00 35 54 54 00 54 00 54 00 54 54 54 35 54 54 35 54 54 35 54 00 54 00 54 54 54 54 54 54 35 54 35 35 54 54 54 00 54 00 54 00 54 54 54 00 35 54 54 00 54 54 54 54 54 54 54 54 54 35 54 54 35 00 54 54 54 54 35 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 35 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 35 35 00 54 54 54 54 54 54 54 00 54 00 54 54 35 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 35 00 54 54 54 54 54 54 54 35 54 00 54 00
*/
