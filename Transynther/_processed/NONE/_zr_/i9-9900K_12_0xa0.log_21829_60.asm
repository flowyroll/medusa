.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14b5c, %r11
clflush (%r11)
nop
nop
xor $7968, %r13
movw $0x6162, (%r11)
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xea5c, %rsi
lea addresses_normal_ht+0x14bdc, %rdi
nop
nop
xor $10043, %rbp
mov $75, %rcx
rep movsq
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x4afc, %rcx
nop
add $7962, %r14
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rcx)
add %rcx, %rcx
lea addresses_WC_ht+0x12e5c, %rcx
xor $8738, %r14
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1045c, %rsi
lea addresses_UC_ht+0x66dc, %rdi
nop
nop
nop
nop
sub $51155, %rbx
mov $114, %rcx
rep movsl
nop
nop
cmp $28778, %rcx
lea addresses_WT_ht+0x1eeb8, %r11
nop
nop
nop
nop
add $57789, %r14
movb $0x61, (%r11)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x1e5dc, %rcx
nop
nop
nop
cmp %rbp, %rbp
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0xe05c, %r11
nop
nop
dec %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm5
and $0xffffffffffffffc0, %r11
vmovntdq %ymm5, (%r11)
nop
nop
nop
xor $8253, %r14
lea addresses_WT_ht+0xd05c, %rsi
lea addresses_UC_ht+0xcc5c, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $26289, %rsi
lea addresses_normal_ht+0xab0c, %r11
nop
add $62000, %rbp
movups (%r11), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0xf05c, %rsi
lea addresses_UC_ht+0x15c5c, %rdi
nop
nop
and %r11, %r11
mov $65, %rcx
rep movsb
nop
nop
nop
xor $4058, %rcx
lea addresses_WT_ht+0x985c, %r13
nop
nop
and %rsi, %rsi
mov (%r13), %rbx
nop
nop
nop
sub $49862, %rbx
lea addresses_WC_ht+0x1a85c, %rcx
and %r11, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x19a5c, %rbx
nop
nop
xor $19008, %rcx
movb $0x61, (%rbx)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1935c, %rbp
nop
nop
nop
nop
nop
sub $4108, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %rbp
push %rsi

// Store
lea addresses_A+0x19d5c, %rsi
sub $24845, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm2
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm2, (%rsi)
nop
nop
nop
xor $4252, %rbp

// Store
lea addresses_WT+0x16c5c, %r14
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r14)
nop
nop
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_UC+0xf65c, %r10
clflush (%r10)
nop
nop
nop
nop
nop
sub $2475, %r14
mov (%r10), %si
nop
nop
xor %r13, %r13

// Store
lea addresses_RW+0x17240, %r14
nop
nop
nop
nop
nop
cmp $41888, %r8
movl $0x51525354, (%r14)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_PSE+0x1cd1c, %r14
nop
nop
nop
nop
nop
cmp $51033, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
nop
sub $5008, %r8

// Faulty Load
lea addresses_WT+0x1585c, %rsi
nop
nop
nop
nop
nop
add $14028, %r14
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r10
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
