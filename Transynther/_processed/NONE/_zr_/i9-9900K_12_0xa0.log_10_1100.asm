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
lea addresses_WT_ht+0x1ee1e, %rsi
lea addresses_normal_ht+0x1621e, %rdi
nop
nop
nop
nop
nop
add $61105, %r12
mov $28, %rcx
rep movsw
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x16d1e, %r10
nop
nop
nop
nop
xor $6278, %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x549e, %rcx
nop
nop
nop
and %r12, %r12
mov (%rcx), %r14d
nop
and $44446, %rcx
lea addresses_A_ht+0x349e, %rsi
lea addresses_A_ht+0x13e1e, %rdi
clflush (%rdi)
inc %rdx
mov $126, %rcx
rep movsb
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0xdb9e, %rdx
nop
nop
nop
nop
nop
add %r12, %r12
mov (%rdx), %cx
nop
nop
dec %r12
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
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x1ab7e, %r11
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
xor $48926, %rbp

// REPMOV
lea addresses_D+0x1df9e, %rsi
lea addresses_RW+0x1b416, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $62, %rcx
rep movsb
nop
nop
add %rcx, %rcx

// Load
lea addresses_RW+0x115ae, %r9
nop
add %rsi, %rsi
vmovaps (%r9), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
add $36409, %r8

// Faulty Load
lea addresses_WC+0x139e, %r9
nop
nop
nop
and %r12, %r12
movb (%r9), %r11b
lea oracles, %rbp
and $0xff, %r11
shlq $12, %r11
mov (%rbp,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': True, 'size': 8}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_RW'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': True, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
