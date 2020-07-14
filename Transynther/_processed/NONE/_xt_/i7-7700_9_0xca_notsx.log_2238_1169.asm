.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xe108, %rsi
lea addresses_UC_ht+0x14d48, %rdi
xor $31404, %rbx
mov $94, %rcx
rep movsw
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x2948, %r11
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x16a88, %rsi
lea addresses_UC_ht+0x12348, %rdi
add $59267, %rbp
mov $106, %rcx
rep movsq
nop
xor $52491, %rbx
lea addresses_UC_ht+0xc748, %r11
nop
nop
nop
sub %rax, %rax
mov (%r11), %di
and %rsi, %rsi
lea addresses_WT_ht+0x1548, %rdi
inc %r14
vmovups (%rdi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x12648, %rdi
nop
nop
nop
nop
nop
inc %rcx
vmovups (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1d948, %rbp
nop
nop
sub $16519, %r14
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
add $19077, %rsi
lea addresses_normal_ht+0x1e068, %rsi
nop
nop
nop
add %r14, %r14
mov (%rsi), %cx
mfence
lea addresses_UC_ht+0x19748, %rax
inc %r14
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbp
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x105b8, %rsi
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm2
movups %xmm2, (%rsi)
inc %r14
lea addresses_UC_ht+0x1c728, %rsi
lea addresses_normal_ht+0x1ef70, %rdi
cmp $979, %rax
mov $127, %rcx
rep movsq
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0x31e8, %rcx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rcx), %esi
nop
and %rcx, %rcx
lea addresses_UC_ht+0xbba8, %rsi
lea addresses_normal_ht+0x147b8, %rdi
clflush (%rdi)
nop
nop
nop
and %rbp, %rbp
mov $54, %rcx
rep movsw
nop
and %rdi, %rdi
lea addresses_D_ht+0x3900, %rax
nop
nop
nop
add %rbp, %rbp
mov (%rax), %r14
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0x1d7c8, %rcx
nop
dec %r15
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movaps %xmm1, (%rcx)
nop
dec %r10

// Faulty Load
lea addresses_D+0xd548, %r14
nop
nop
xor %r13, %r13
mov (%r14), %ax
lea oracles, %rcx
and $0xff, %rax
shlq $12, %rax
mov (%rcx,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'36': 2238}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
