.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xa841, %rsi
lea addresses_WT_ht+0x8569, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $635, %r9
mov $39, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x14ac1, %r11
nop
nop
nop
dec %r8
mov (%r11), %r13d
nop
nop
nop
cmp $27233, %r9
lea addresses_A_ht+0x1953d, %r11
cmp %r8, %r8
mov (%r11), %r9
nop
nop
sub $13448, %rdi
lea addresses_WC_ht+0x16761, %rdi
nop
xor $3372, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
xor $45110, %r8
lea addresses_WT_ht+0x7641, %rdi
clflush (%rdi)
sub $20584, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
dec %r13
lea addresses_A_ht+0x123f1, %rsi
lea addresses_normal_ht+0x131c1, %rdi
nop
nop
nop
and $138, %r12
mov $63, %rcx
rep movsb
nop
nop
xor $51426, %r11
lea addresses_normal_ht+0x18c41, %rsi
lea addresses_A_ht+0x7cb1, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $13, %rcx
rep movsl
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x8541, %r11
nop
cmp $16824, %rdi
mov (%r11), %r8d
nop
nop
nop
nop
add $40220, %rcx
lea addresses_D_ht+0x1, %r12
xor $11320, %r11
mov (%r12), %r9
xor $21050, %rsi
lea addresses_D_ht+0x9fc1, %r9
nop
nop
nop
cmp $19722, %r12
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
and $36451, %r11
lea addresses_normal_ht+0xc261, %r8
nop
nop
nop
xor $54474, %rsi
movb (%r8), %r11b
nop
and %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rdx
push %rsi

// Load
mov $0x7e9, %r12
nop
nop
nop
nop
and $51489, %r14
vmovaps (%r12), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
nop
nop
nop
xor %r12, %r12

// Load
mov $0xf41, %r10
nop
and $17504, %r8
movb (%r10), %r15b
nop
nop
nop
nop
and $27301, %r14

// Faulty Load
lea addresses_US+0x18241, %rsi
cmp %r14, %r14
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'00': 5}
00 00 00 00 00
*/
