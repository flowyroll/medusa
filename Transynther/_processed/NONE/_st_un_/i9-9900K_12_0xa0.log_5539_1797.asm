.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d324, %rsi
lea addresses_A_ht+0xab44, %rdi
nop
nop
nop
nop
nop
and $53043, %r15
mov $16, %rcx
rep movsl
nop
and $53745, %r10
lea addresses_WT_ht+0x6924, %rsi
lea addresses_A_ht+0xa6e4, %rdi
cmp $22001, %r13
mov $23, %rcx
rep movsl
nop
nop
nop
nop
cmp $50539, %rdi
lea addresses_A_ht+0x118d4, %rsi
lea addresses_D_ht+0x2764, %rdi
nop
nop
nop
nop
cmp %rbx, %rbx
mov $103, %rcx
rep movsl
nop
nop
dec %rdi
lea addresses_normal_ht+0x1c164, %rdi
nop
nop
and $11675, %rbx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rcx
nop
dec %r15
lea addresses_D_ht+0x19d24, %r15
dec %rbx
movups (%r15), %xmm2
vpextrq $0, %xmm2, %rcx
cmp %r13, %r13
lea addresses_D_ht+0x1ce24, %rsi
lea addresses_WT_ht+0x6f04, %rdi
nop
nop
dec %r10
mov $56, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_normal_ht+0xe524, %r10
nop
nop
nop
nop
sub %r15, %r15
mov (%r10), %rsi
and %rbx, %rbx
lea addresses_UC_ht+0x1324, %rsi
lea addresses_D_ht+0x8d24, %rdi
nop
sub %rbx, %rbx
mov $56, %rcx
rep movsw
xor $3322, %r10
lea addresses_A_ht+0x1ed24, %rsi
nop
nop
sub $62111, %rcx
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_WC_ht+0xe7a4, %rsi
lea addresses_WT_ht+0x106a4, %rdi
nop
nop
cmp %r11, %r11
mov $61, %rcx
rep movsl
nop
nop
nop
and $22142, %r10
lea addresses_D_ht+0x1a43d, %r15
clflush (%r15)
nop
nop
nop
cmp $28024, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r15)
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x1024, %rcx
nop
nop
xor %r13, %r13
movb $0x61, (%rcx)
nop
nop
add $58831, %rsi
lea addresses_normal_ht+0xeda4, %r11
nop
nop
nop
nop
nop
dec %rcx
mov (%r11), %r15
nop
sub %r10, %r10
lea addresses_WT_ht+0x4f24, %rcx
nop
nop
nop
nop
nop
add %r13, %r13
mov $0x6162636465666768, %r15
movq %r15, (%rcx)
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x8324, %rsi
lea addresses_UC+0xbd24, %rdi
nop
nop
nop
xor %r13, %r13
mov $30, %rcx
rep movsw
nop
nop
and %rdi, %rdi

// Faulty Load
lea addresses_UC+0xbd24, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %r15, %r15
mov (%rbx), %ecx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'5f': 89, '34': 5450}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 5f 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 5f 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
