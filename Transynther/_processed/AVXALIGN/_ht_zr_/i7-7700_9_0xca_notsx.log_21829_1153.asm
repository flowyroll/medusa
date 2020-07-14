.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa3, %r12
nop
inc %rax
mov (%r12), %r13w
nop
nop
nop
nop
nop
and $64870, %r10
lea addresses_normal_ht+0xaca3, %rax
nop
nop
nop
nop
nop
dec %r8
movb (%rax), %bl
nop
nop
add %r8, %r8
lea addresses_D_ht+0xc643, %rsi
lea addresses_UC_ht+0x1d193, %rdi
nop
dec %r8
mov $19, %rcx
rep movsw
nop
nop
and $8816, %r13
lea addresses_WC_ht+0x19023, %rax
nop
nop
nop
cmp %r12, %r12
mov (%rax), %bx
nop
dec %rbx
lea addresses_WC_ht+0x12023, %rdi
nop
nop
nop
nop
dec %r10
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
xor $63290, %r10
lea addresses_WT_ht+0x1e163, %rsi
lea addresses_UC_ht+0x9323, %rdi
nop
sub %r10, %r10
mov $75, %rcx
rep movsw
nop
add %r12, %r12
lea addresses_WC_ht+0x1cfc3, %r12
and $1037, %r13
mov (%r12), %ax
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax

// Faulty Load
lea addresses_WC+0x1e823, %r12
and %r15, %r15
movaps (%r12), %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'48': 8593, '49': 11653, '00': 1, '46': 1582}
49 48 49 49 49 49 49 48 49 48 46 49 49 46 49 48 49 48 49 48 49 46 49 49 48 49 49 48 48 49 48 48 49 48 48 49 49 49 48 49 49 49 49 49 48 49 49 49 48 48 48 48 46 49 48 49 48 48 48 49 49 48 49 49 49 46 48 46 49 49 49 49 49 49 48 48 49 49 48 49 49 49 49 49 48 49 48 48 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 48 48 49 49 48 48 49 46 46 49 48 48 49 49 49 48 46 48 46 49 49 49 49 48 49 49 49 49 48 49 49 49 48 46 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 49 49 49 49 49 49 48 49 48 49 49 49 48 49 48 48 49 49 49 49 49 49 49 49 49 48 49 48 49 49 46 48 49 49 49 48 49 48 49 49 49 46 49 49 48 49 48 49 49 49 49 48 48 48 48 48 49 48 46 49 48 48 49 49 48 49 49 49 48 48 48 49 49 49 46 48 49 48 48 48 48 48 46 49 49 46 49 48 49 48 48 48 46 48 46 49 48 48 49 49 49 48 49 48 49 49 48 48 48 49 49 46 48 49 49 49 48 48 49 49 48 48 49 48 46 49 49 49 49 48 49 48 48 49 48 48 49 48 48 49 48 46 48 49 48 49 48 46 48 48 49 48 49 49 49 49 48 49 48 49 48 46 48 49 49 49 48 49 49 49 48 49 49 48 49 49 48 48 49 48 48 46 48 49 48 48 48 49 49 49 49 49 48 49 49 48 49 48 49 48 49 49 49 49 48 49 48 48 48 48 46 49 48 46 48 49 46 48 49 48 49 48 49 48 48 49 48 49 46 49 49 48 48 49 48 49 48 49 49 49 46 49 49 49 48 48 49 48 49 49 49 48 49 49 48 49 48 49 48 49 48 49 49 49 48 48 49 48 49 49 49 48 46 48 49 49 49 49 49 48 49 49 49 49 48 49 49 49 49 48 49 48 49 49 48 46 48 46 48 49 46 49 48 48 46 49 49 49 48 49 46 49 48 49 48 49 49 49 49 46 48 48 49 48 49 48 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 48 46 46 49 49 48 49 48 49 49 48 49 49 48 49 49 48 49 49 49 49 49 49 49 48 49 49 48 49 49 48 49 48 49 48 49 49 49 48 49 49 49 49 49 48 49 49 49 48 46 48 49 49 48 49 49 48 49 48 49 48 49 48 49 48 49 48 49 48 48 49 49 49 49 49 48 48 49 48 48 46 49 49 49 49 48 48 49 48 49 48 49 48 49 46 48 49 48 48 49 49 46 49 48 49 49 48 48 48 48 49 48 49 48 48 48 48 48 48 48 49 49 48 48 48 48 49 46 48 46 49 48 48 49 49 49 49 49 48 49 48 48 49 49 49 49 48 49 48 49 49 48 49 48 49 48 48 48 48 49 49 49 49 49 48 48 49 48 49 48 49 49 49 48 48 49 49 49 48 48 49 48 48 49 49 49 48 49 49 49 48 48 49 49 49 49 48 46 48 49 48 48 49 49 49 48 49 48 49 48 46 49 48 46 49 48 49 49 49 48 46 49 49 48 49 49 48 48 49 48 46 49 49 48 49 49 49 48 49 49 49 48 49 49 49 46 48 46 48 49 48 46 49 48 49 49 49 49 49 48 49 46 49 49 49 48 49 49 48 46 49 48 48 49 48 48 49 46 49 48 46 48 49 48 46 49 49 49 49 49 49 49 49 49 48 48 49 48 49 48 46 49 48 48 48 48 49 49 49 48 48 49 49 49 49 49 48 49 49 49 49 49 49 48 48 49 49 48 48 48 48 49 48 48 49 48 46 48 48 48 48 46 48 49 48 48 49 46 49 49 48 49 48 49 46 49 49 48 49 49 49 48 49 49 48 49 48 49 49 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 49 49 49 48 49 49 49 49 49 49 49 48 49 48 49 49 49 48 49 46 49 48 48 49 48 49 49 48 48 46 49 48 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 49 49 49 49 48 49 48 49 49 46 49 46 49 48 49 49 49 49 49 49 49 48 49 49 48 48 49 49 46 49 49 49 48 49 48 49 48 49 49 49 48 48 49 49 48 49 49 49 48 46 49 49 48 46 49 49 49 49 46 46 49 48 49 48 49 48 49 48
*/
