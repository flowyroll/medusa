.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x17d89, %r9
nop
nop
nop
nop
cmp $56959, %r8
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r9)
sub %rax, %rax
lea addresses_UC_ht+0xf87c, %rsi
lea addresses_normal_ht+0x6419, %rdi
nop
nop
nop
add %rbx, %rbx
mov $115, %rcx
rep movsb
nop
dec %rdx
lea addresses_D_ht+0xd10f, %rdx
nop
nop
sub $31728, %rax
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
sub $37971, %r8
lea addresses_D_ht+0x12819, %rsi
lea addresses_WT_ht+0x5c19, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $11997, %r8
mov $84, %rcx
rep movsq
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1e199, %rsi
lea addresses_UC_ht+0x2d99, %rdi
nop
cmp %rbx, %rbx
mov $113, %rcx
rep movsw
nop
nop
dec %rdx
lea addresses_WT_ht+0x1d619, %rdi
nop
nop
nop
nop
xor $33993, %rdx
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rbx
and $53648, %rcx
lea addresses_A_ht+0x10819, %rbx
nop
dec %rsi
mov (%rbx), %rcx
xor %r9, %r9
lea addresses_WT_ht+0xafb9, %r9
nop
nop
nop
nop
nop
xor $49006, %rdi
mov (%r9), %bx
nop
and $37888, %rcx
lea addresses_D_ht+0x2a19, %rsi
lea addresses_UC_ht+0x8c19, %rdi
nop
nop
and %r9, %r9
mov $7, %rcx
rep movsq
add $49273, %rbx
lea addresses_UC_ht+0x39a9, %rsi
lea addresses_A_ht+0x7459, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $108, %rcx
rep movsb
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0xfe19, %rax
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rax), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdi
add %r8, %r8
lea addresses_WC_ht+0xbf59, %rsi
nop
nop
nop
nop
add $44075, %rdi
vmovups (%rsi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
nop
cmp $38906, %r9
lea addresses_WT_ht+0x41b9, %rbx
dec %rdx
movw $0x6162, (%rbx)
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xc3d, %rsi
lea addresses_normal_ht+0x1a1d9, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $64, %rcx
rep movsw
nop
nop
nop
nop
xor $63448, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rsi

// Store
mov $0x2d861c0000000c19, %r10
clflush (%r10)
dec %r12
mov $0x5152535455565758, %rsi
movq %rsi, (%r10)
nop
inc %r10

// Store
lea addresses_A+0x12592, %rbp
nop
and %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
add $30259, %r12

// Load
lea addresses_A+0xf3d9, %r14
nop
add $7125, %rsi
movb (%r14), %r10b
nop
add %r15, %r15

// Faulty Load
lea addresses_normal+0x3419, %r10
nop
nop
nop
nop
xor $13794, %rbp
mov (%r10), %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'34': 45}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
