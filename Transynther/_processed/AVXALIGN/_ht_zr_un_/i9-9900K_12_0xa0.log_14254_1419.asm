.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x10f21, %rcx
nop
nop
nop
nop
nop
dec %r9
mov (%rcx), %r10d
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0xdf21, %r10
clflush (%r10)
nop
nop
nop
and $7945, %rsi
vmovups (%r10), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
sub %r9, %r9
lea addresses_A_ht+0x17273, %r13
nop
sub $19137, %r11
mov (%r13), %ecx
nop
nop
sub $54225, %rsi
lea addresses_A_ht+0x15b91, %r9
nop
add %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
xor $30766, %r10
lea addresses_WT_ht+0x1b221, %r10
nop
nop
nop
nop
xor $38534, %r13
mov (%r10), %cx
nop
nop
nop
add $800, %rcx
lea addresses_normal_ht+0x13309, %rbp
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rbp)
and %r13, %r13
lea addresses_D_ht+0xcbd1, %rsi
clflush (%rsi)
nop
nop
nop
and %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
cmp $41665, %r9
lea addresses_WT_ht+0x1bd21, %rsi
and %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
and $19583, %r13
lea addresses_A_ht+0xa141, %rsi
lea addresses_UC_ht+0xe1d3, %rdi
nop
nop
nop
nop
cmp $4131, %r9
mov $31, %rcx
rep movsq
nop
nop
dec %r10
lea addresses_D_ht+0x1a121, %rsi
lea addresses_UC_ht+0xc3c1, %rdi
nop
inc %r11
mov $2, %rcx
rep movsq
nop
nop
nop
nop
inc %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0xd21, %rsi
lea addresses_UC+0x5561, %rdi
add $36819, %rbp
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1da21, %rbp
nop
nop
nop
xor $24159, %r9
vmovaps (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'45': 3739, '49': 2683, '20': 3, '00': 7828, 'bc': 1}
45 49 00 00 49 00 00 45 45 00 00 49 45 00 49 45 00 45 00 45 00 00 00 49 45 00 00 00 00 00 00 00 00 49 49 49 00 45 00 00 00 00 00 49 45 45 00 00 00 45 00 49 00 00 49 49 00 00 45 00 00 00 45 00 45 49 00 00 00 45 00 00 45 49 00 00 00 00 00 00 00 45 49 00 45 00 45 45 45 00 00 00 49 00 45 00 45 45 00 45 00 00 49 00 00 45 00 49 00 00 00 00 00 00 00 45 00 45 00 49 45 45 49 00 00 49 49 00 45 49 45 00 49 49 00 00 00 49 45 00 45 00 00 49 45 00 00 00 00 00 49 49 45 45 00 00 00 00 00 00 49 00 00 45 45 49 00 00 49 49 00 45 45 00 00 49 00 00 45 00 00 45 00 00 49 00 00 49 45 49 00 00 49 49 45 00 45 45 00 49 00 45 45 49 00 45 00 00 00 00 45 49 45 00 49 45 49 00 49 00 00 00 45 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 45 00 49 49 00 00 00 00 00 00 00 45 00 45 00 00 45 00 45 00 00 00 45 00 00 49 49 45 00 00 00 00 00 00 00 00 45 00 49 00 00 00 45 00 00 45 45 49 45 45 00 00 49 49 49 00 49 45 45 00 00 45 49 45 49 00 49 00 00 49 00 00 00 00 00 00 00 45 45 00 45 45 49 00 49 00 00 45 00 45 00 00 49 00 49 00 45 00 45 45 00 49 00 00 00 00 00 49 00 45 45 00 00 45 00 45 00 00 45 49 00 00 00 45 45 00 45 45 49 00 49 00 00 00 00 45 45 45 45 49 00 00 00 00 49 45 45 00 45 45 00 45 49 00 00 45 00 00 49 45 49 49 00 45 49 45 49 00 00 00 45 49 00 49 45 00 00 00 49 00 00 45 00 00 49 00 00 00 00 45 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 45 00 49 49 00 00 45 45 00 00 00 45 49 49 00 45 00 45 45 00 45 00 00 00 49 00 00 49 00 45 00 00 00 49 00 49 45 00 45 00 00 00 49 49 00 49 49 00 49 00 00 00 00 00 00 00 00 45 00 00 45 45 49 45 00 00 49 00 45 49 00 00 00 00 00 00 45 00 00 45 00 00 45 49 49 00 45 49 45 00 49 00 45 49 49 00 49 00 00 00 00 00 00 00 49 49 00 00 00 00 45 49 45 45 00 45 00 49 00 45 49 00 49 00 00 45 00 00 00 00 00 00 00 00 00 45 49 45 00 00 00 49 45 00 49 00 49 00 49 45 00 00 45 00 49 00 00 00 45 49 00 00 00 00 00 49 00 00 00 45 49 45 49 00 00 00 00 45 45 00 00 00 45 00 49 00 49 45 00 45 49 00 45 49 49 45 45 45 49 45 49 00 00 00 00 45 45 00 00 00 00 49 49 00 00 00 45 45 45 45 00 00 00 45 00 49 00 00 49 00 49 49 45 45 45 00 45 00 00 45 00 00 45 45 45 00 45 49 45 45 00 00 00 00 00 00 00 00 00 45 00 49 00 00 00 00 45 45 00 00 45 00 00 49 45 00 45 00 00 00 00 45 00 00 45 00 00 49 00 00 00 00 00 45 45 49 45 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 45 00 45 00 00 49 00 00 45 00 49 45 00 49 49 00 00 49 45 49 00 45 00 00 00 49 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 49 00 45 45 49 00 49 49 49 00 00 45 45 00 45 00 45 49 00 00 00 00 45 00 00 45 45 49 00 45 45 45 00 00 00 49 00 45 45 00 00 00 49 00 45 00 00 49 49 00 49 45 00 45 00 49 00 00 00 49 49 00 45 00 00 45 00 49 00 45 49 00 49 45 49 45 49 00 00 45 49 00 00 00 00 00 45 45 45 45 00 45 00 00 45 00 49 00 45 45 00 45 00 49 00 00 45 00 00 00 00 00 00 49 00 49 00 00 49 45 00 00 45 49 45 00 00 00 45 45 49 45 45 49 00 49 45 00 49 00 45 00 45 45 00 45 45 45 45 00 49 00 45 45 00 00 00 45 00 00 00 49 00 45 00 45 00 00 45 00 00 45 49 00 00 00 00 00 00 00 45 00
*/
