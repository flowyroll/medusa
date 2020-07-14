.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x14d7a, %rbp
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rbp), %r9b
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0x1eea, %r11
nop
xor %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm1
and $0xffffffffffffffc0, %r11
movaps %xmm1, (%r11)
nop
nop
cmp $50665, %r13
lea addresses_normal_ht+0x1c710, %r9
and $42530, %r14
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
cmp $5248, %r13
lea addresses_A_ht+0x196ea, %rsi
lea addresses_WC_ht+0x6eea, %rdi
nop
nop
add $41797, %r9
mov $19, %rcx
rep movsl
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x2ea, %r11
nop
nop
nop
nop
nop
xor $36315, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
nop
nop
xor $6373, %r15
lea addresses_WT_ht+0xeea, %r9
nop
cmp $33364, %r13
mov (%r9), %r11w
nop
nop
nop
nop
nop
cmp $3990, %r13
lea addresses_UC_ht+0x177aa, %r15
cmp $61032, %r14
movb (%r15), %r13b
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x182a, %rsi
nop
nop
nop
cmp $45596, %r11
mov $0x6162636465666768, %r14
movq %r14, %xmm0
and $0xffffffffffffffc0, %rsi
movntdq %xmm0, (%rsi)
xor $14272, %r11
lea addresses_normal_ht+0x1532a, %rbp
nop
nop
nop
xor $59557, %rsi
mov (%rbp), %rdi
sub %rsi, %rsi
lea addresses_A_ht+0xf6ee, %r15
nop
nop
nop
nop
add $23528, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r15)
nop
nop
sub $44817, %rsi
lea addresses_normal_ht+0x29f6, %rsi
nop
nop
add %rbp, %rbp
movb (%rsi), %r9b
nop
inc %rdi
lea addresses_D_ht+0x118ea, %rbp
nop
nop
sub $57482, %r13
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x748a, %r11
nop
nop
and $28404, %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
cmp $35474, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0xedf4, %rbp
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
xor %rbp, %rbp

// Store
lea addresses_WT+0x1442a, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x51, (%r9)
dec %rbp

// Store
lea addresses_UC+0xc0ea, %r12
nop
nop
nop
nop
nop
inc %rdi
movl $0x51525354, (%r12)
nop
nop
nop
nop
xor $33604, %rdi

// Store
lea addresses_RW+0x882a, %rbx
xor $3983, %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and $27325, %rdx

// Faulty Load
lea addresses_RW+0x1beea, %rbp
nop
nop
nop
nop
and %r12, %r12
movb (%rbp), %r9b
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
