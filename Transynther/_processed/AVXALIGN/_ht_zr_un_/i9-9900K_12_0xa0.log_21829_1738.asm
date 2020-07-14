.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1e4d0, %r12
sub %r8, %r8
movb $0x61, (%r12)
nop
nop
nop
nop
and $13228, %r9
lea addresses_D_ht+0x1b680, %rsi
lea addresses_UC_ht+0x16d90, %rdi
nop
nop
and $5375, %r8
mov $70, %rcx
rep movsb
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x11dd6, %rsi
lea addresses_A_ht+0x1bb0, %rdi
cmp %rbx, %rbx
mov $21, %rcx
rep movsl
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x2a10, %r9
mfence
movw $0x6162, (%r9)
nop
xor $60248, %rsi
lea addresses_WC_ht+0x1c568, %rsi
lea addresses_D_ht+0x40d0, %rdi
nop
inc %r15
mov $21, %rcx
rep movsq
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x12ef0, %r8
nop
nop
nop
nop
nop
xor $55000, %rdi
movl $0x61626364, (%r8)
nop
xor $1292, %r12
lea addresses_D_ht+0x88d0, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%rbx), %r8b
nop
nop
nop
xor %r15, %r15
lea addresses_D_ht+0xa50, %r8
dec %rbx
movb $0x61, (%r8)
nop
nop
xor $23512, %r9
lea addresses_WC_ht+0x1a8d0, %rbx
nop
nop
xor %r12, %r12
movups (%rbx), %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
nop
xor $51863, %rdi
lea addresses_WC_ht+0x54d0, %r15
nop
nop
nop
nop
sub %r9, %r9
mov (%r15), %rcx
inc %rbx
lea addresses_A_ht+0xa290, %rsi
lea addresses_WC_ht+0x7f6c, %rdi
nop
inc %r15
mov $79, %rcx
rep movsb
nop
nop
inc %rdi
lea addresses_normal_ht+0xdc30, %rdi
add %r8, %r8
mov (%rdi), %esi
nop
nop
nop
inc %r12
lea addresses_UC_ht+0x1cb30, %rsi
lea addresses_UC_ht+0x1a050, %rdi
nop
inc %r15
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x1a5bc, %rcx
clflush (%rcx)
add %rbx, %rbx
vmovups (%rcx), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
dec %rsi
lea addresses_WC_ht+0x1ea04, %rsi
lea addresses_UC_ht+0x11ad0, %rdi
nop
nop
and $53297, %rbx
mov $54, %rcx
rep movsq
nop
nop
sub $14376, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rdi

// Store
lea addresses_D+0x13970, %rdi
nop
nop
add %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
sub $23913, %r8

// Store
lea addresses_WC+0xe798, %r12
nop
nop
nop
sub $42849, %r15
movb $0x51, (%r12)
nop
add $40980, %rdi

// Faulty Load
lea addresses_WC+0xc4d0, %r12
nop
nop
and $40500, %r14
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'de': 1, '46': 4, '49': 1616, 'cc': 6, '00': 17818, '48': 1464, 'ff': 1, '45': 916, '08': 3}
00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 49 00 00 00 00 00 48 00 00 00 00 49 48 00 45 00 49 00 00 00 48 00 49 48 00 48 00 00 00 00 45 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 45 00 48 00 00 00 49 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 45 00 00 00 45 00 00 48 00 00 00 00 00 49 00 00 00 48 00 00 00 00 00 49 00 00 00 00 00 49 48 00 00 00 00 49 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 49 00 00 00 48 00 49 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 45 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 45 00 00 00 00 48 00 00 00 00 45 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 49 00 00 00 00 00 49 00 00 48 00 49 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 48 00 49 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 49 00 00 45 00 49 00 00 00 00 00 49 00 45 48 00 00 00 45 00 00 00 00 00 00 48 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 45 00 48 00 49 00 00 00 00 00 49 00 45 00 00 00 00 00 45 00 49 00 00 00 00 00 45 00 00 00 49 00 00 48 00 00 00 00 45 00 00 00 00 48 00 00 00 00 00 48 00 00 49 00 00 48 00 00 00 00 00 00 49 45 00 00 00 00 00 00 00 48 00 00 49 00 00 48 00 00 00 45 00 00 00 00 00 00 00 49 00 00 45 00 00 00 00 45 00 49 00 00 00 00 00 49 00 00 45 00 49 00 00 00 45 00 00 45 00 00 00 48 48 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 00 49 00 00 48 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 49 00 45 00 00 00 00 00 00 00 49 00 00 00 00 00 00 48 00 49 48 00 48 00 49 00 00 00 48 00 49 00 00 45 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 49 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 45 00 00 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 46 00 00 00 48 00 00 48 00 00 45 00 00 00 00 00 48 00 00 48 00 00 48 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 48 45 48 00 00 00 00 00 00 49 00 00 45 00 00 00 00 48 00 49 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 49 00 08 00 00 49 00 00 48 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 48 48 00 00 48 00 00 48 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 45 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 48 00 49 00 00 00 00 00 48 00 00 48 00 49 48 00 00 00 00 48 45 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 48 00 00 48 00 00 45 00 00
*/
