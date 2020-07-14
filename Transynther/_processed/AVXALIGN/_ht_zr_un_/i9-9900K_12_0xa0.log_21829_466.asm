.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1713a, %rsi
lea addresses_D_ht+0x17673, %rdi
nop
add %r13, %r13
mov $100, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1a73, %r8
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x124f3, %rsi
nop
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%rsi)
nop
add %r8, %r8
lea addresses_UC_ht+0x15173, %rcx
nop
nop
nop
nop
nop
cmp $63481, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x1ea09, %rbp
nop
nop
nop
nop
sub $51619, %rcx
movb (%rbp), %r8b
nop
nop
nop
sub $19748, %rdi
lea addresses_normal_ht+0x18893, %r13
nop
nop
inc %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
vmovups %ymm2, (%r13)
inc %r8
lea addresses_normal_ht+0x9373, %r13
clflush (%r13)
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r13)
inc %rcx
lea addresses_normal_ht+0x75bd, %rsi
xor %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x7473, %r13
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
nop
nop
sub $26841, %rbp
lea addresses_UC_ht+0x1a773, %rsi
lea addresses_A_ht+0x168e3, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $120, %rcx
rep movsw
nop
nop
add $56906, %rbp
lea addresses_UC_ht+0x111cb, %r11
nop
nop
nop
nop
nop
cmp $55422, %r15
mov (%r11), %r13d
nop
and $31136, %rsi
lea addresses_WC_ht+0x36f3, %rcx
clflush (%rcx)
nop
and $23022, %r8
movb (%rcx), %r15b
nop
nop
nop
nop
nop
sub $23335, %rsi
lea addresses_D_ht+0xc10b, %r13
nop
nop
nop
nop
dec %rcx
movups (%r13), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
sub $927, %r8
lea addresses_A_ht+0x19a73, %r15
nop
nop
nop
and $52540, %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
xor $21030, %rdi
lea addresses_D_ht+0x1b473, %rsi
lea addresses_A_ht+0x58f3, %rdi
clflush (%rdi)
nop
nop
and %r15, %r15
mov $19, %rcx
rep movsb
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rdi
push %rdx

// Store
lea addresses_A+0x4f3, %rax
xor $15711, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rax)
nop
nop
sub %r13, %r13

// Store
lea addresses_normal+0x16b73, %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
dec %r13

// Load
lea addresses_WC+0xbe73, %r13
nop
nop
nop
nop
cmp $23406, %rdx
movntdqa (%r13), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
sub %r8, %r8

// Store
mov $0x2d46d0000000183, %r13
nop
add %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r13)
nop
add $23233, %rdi

// Faulty Load
lea addresses_normal+0xd273, %rdx
sub $21268, %rdi
vmovntdqa (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'46': 3311, '8f': 1, 'ff': 3, '00': 4125, '69': 3, '45': 14381, '08': 5}
00 45 45 45 45 45 46 45 00 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 00 45 45 45 45 45 45 46 45 45 45 45 00 45 45 45 46 45 45 45 45 00 45 45 45 46 45 45 45 45 45 00 45 00 46 45 45 45 00 45 45 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 00 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 00 46 45 45 45 00 45 45 46 45 45 00 45 45 45 46 45 45 45 45 45 45 46 45 45 00 45 45 45 00 45 45 45 46 45 45 45 45 00 45 46 45 45 45 45 45 45 46 45 45 45 45 45 00 45 45 46 45 45 00 45 45 45 45 00 45 45 46 45 00 45 45 45 45 45 45 46 45 45 45 00 45 00 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 45 45 00 45 00 46 45 45 00 45 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 00 45 45 46 45 45 45 45 00 00 46 45 45 45 45 45 45 46 45 46 00 45 45 45 45 00 46 45 45 45 45 45 00 46 45 45 45 45 00 00 46 45 45 45 45 45 45 46 45 45 45 00 00 45 46 45 46 00 45 45 00 45 45 46 45 45 45 00 45 00 45 45 45 45 45 45 00 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 46 00 46 45 00 45 45 45 00 45 45 46 45 45 45 00 00 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 00 45 00 45 00 00 00 46 45 45 45 00 00 00 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 46 45 45 45 45 45 45 46 45 45 45 45 00 45 46 45 46 45 45 45 00 45 45 45 45 00 46 00 00 46 00 45 45 45 45 46 45 45 45 46 45 45 00 46 45 00 00 45 45 45 00 45 46 45 46 45 45 45 45 00 00 45 45 45 46 45 46 45 46 45 46 45 45 45 46 45 45 00 45 45 45 46 45 00 00 00 45 45 45 45 46 45 45 45 45 00 00 46 45 45 45 45 00 00 46 45 45 45 46 45 45 45 45 45 00 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 46 00 45 45 45 45 45 45 45 46 45 45 45 45 45 45 45 45 46 45 46 00 00 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 46 00 00 45 45 45 45 45 45 45 45 46 45 46 00 45 45 00 46 45 45 45 45 00 00 45 45 46 45 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 46 00 45 45 45 45 45 46 45 46 45 45 45 45 45 00 46 45 45 45 45 00 45 45 45 46 45 45 45 00 45 45 46 45 45 00 45 45 45 46 45 45 45 45 00 45 46 45 00 45 45 45 00 45 45 46 45 45 45 00 45 45 46 45 46 45 45 00 45 45 45 46 45 45 45 45 45 45 45 45 45 45 46 45 45 45 00 46 45 45 45 45 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 45 00 45 45 45 46 45 45 45 45 45 00 46 45 45 00 45 00 00 46 45 46 45 45 45 45 45 45 46 45 45 45 00 45 00 46 45 00 00 45 45 45 45 00 45 45 46 45 46 00 45 45 00 45 45 45 00 00 45 00 45 00 45 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 46 00 00 45 45 45 45 00 00 46 45 45 45 45 00 45 46 45 45 45 45 45 00 46 45 45 45 00 45 45 46 45 45 45 45 00 45 46 45 45 45 00 45 00 46 45 45 00 45 45 00 45 00 46 45 00 45 45 45 00 45 45 46 45 45 45 45 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 46 00 00 00 45 45 45 45 45 46 45 45 00 45 45 45 45 45 46 45 00 45 45 45 45 45 46 00 46 00 45 45 46 45 46 00 45 45 45 45 00 46 45 45 45 00 45 45 46 45 45 45 45 45 45 46 45 45 45 00 45 45 46 45 45 45 45 00 00 46 45 45 45 46 45 45 00 45 45 45 46 45 45 45 00 45 45 46 45
*/
