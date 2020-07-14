.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1dffd, %r10
nop
add %r13, %r13
mov (%r10), %bx
nop
xor %r8, %r8
lea addresses_A_ht+0x667d, %r14
nop
nop
nop
nop
dec %r8
movl $0x61626364, (%r14)
add %rbx, %rbx
lea addresses_A_ht+0x257d, %r15
xor $57594, %rbp
movw $0x6162, (%r15)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x16c45, %r10
nop
nop
nop
xor %r13, %r13
vmovups (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x1adbd, %r14
nop
nop
xor %rbx, %rbx
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rbp
nop
nop
nop
nop
sub $5781, %rbp
lea addresses_WC_ht+0x147bd, %rsi
lea addresses_D_ht+0x245d, %rdi
xor $1278, %r8
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $14658, %r13
lea addresses_WT_ht+0xb53d, %r10
nop
nop
nop
and $26123, %rbp
mov (%r10), %esi
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0xca05, %r14
nop
nop
dec %rsi
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1b421, %rsi
nop
nop
dec %r10
mov (%rsi), %r14w
nop
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1b6bd, %rcx
nop
nop
add $31332, %r8
mov $0x6162636465666768, %r13
movq %r13, (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x10f05, %r15
nop
nop
nop
nop
nop
add %rbx, %rbx
mov (%r15), %cx
nop
and %rdi, %rdi
lea addresses_WC_ht+0x184bd, %rsi
mfence
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x166b9, %rsi
lea addresses_WT_ht+0x19dbd, %rdi
nop
nop
nop
cmp %r10, %r10
mov $81, %rcx
rep movsq
nop
nop
sub $56229, %r10
lea addresses_UC_ht+0x6dbd, %r10
nop
nop
nop
nop
cmp $53392, %rsi
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
dec %r14
lea addresses_WT_ht+0xf7bb, %rsi
lea addresses_WT_ht+0x1068d, %rdi
and $23728, %r8
mov $93, %rcx
rep movsb
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x95bd, %rbp
add $11296, %rax
movb $0x51, (%rbp)
nop
nop
nop
nop
cmp %rbp, %rbp

// Faulty Load
lea addresses_US+0x55bd, %rbp
nop
nop
nop
nop
nop
and $18130, %rsi
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'48': 9554, '49': 1999, '13': 1, 'ff': 6, '00': 10253, '47': 10, '14': 1, '04': 1, '08': 3, '72': 1}
04 48 48 48 00 00 00 48 00 00 48 48 00 48 48 00 00 00 48 49 48 48 49 00 49 48 00 48 00 00 00 48 48 00 48 49 00 48 48 00 00 00 48 00 48 48 49 48 00 00 48 00 00 49 49 00 00 48 49 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 49 48 00 00 00 48 48 48 48 48 48 48 49 00 48 49 00 00 48 48 00 00 00 00 48 00 49 00 48 48 00 48 48 48 48 48 48 00 00 48 00 49 00 48 00 48 48 48 49 00 00 49 48 00 00 00 48 00 48 49 00 49 48 00 00 48 00 00 00 48 00 48 49 48 00 00 00 48 00 48 00 00 00 49 48 00 48 00 00 49 48 48 00 48 48 48 48 00 00 48 00 49 00 00 00 49 48 48 00 48 49 48 48 00 48 48 00 48 00 00 49 00 48 49 00 00 48 00 00 48 48 48 00 48 48 00 48 00 00 00 48 00 00 48 48 48 00 00 00 00 00 49 48 00 00 48 00 49 48 00 48 48 00 48 00 00 00 48 48 00 00 48 00 00 00 00 48 48 48 00 49 49 00 00 00 00 49 00 49 00 00 48 48 49 48 48 00 48 00 48 00 00 48 48 00 48 48 48 48 00 00 00 49 48 48 48 48 00 00 48 00 48 00 00 00 00 00 00 48 00 00 49 49 00 48 00 00 48 48 48 48 49 48 49 48 48 00 00 00 48 00 49 00 00 48 48 00 00 48 00 00 00 48 00 00 49 48 48 00 00 48 00 48 49 49 49 48 00 48 00 00 48 48 48 48 48 00 48 48 48 00 00 00 00 48 48 49 48 49 48 48 48 00 00 48 00 48 00 48 48 00 00 00 48 48 48 48 00 48 48 48 00 48 48 00 00 48 00 48 00 48 49 00 00 00 48 48 00 00 48 00 48 00 00 00 48 49 00 48 00 48 48 00 00 48 48 48 48 48 48 48 48 00 00 00 49 48 48 00 00 48 00 00 00 00 49 00 48 49 48 48 49 48 00 00 00 48 00 00 00 48 49 48 49 48 00 00 48 48 48 00 48 48 48 00 48 48 00 48 49 48 48 00 48 00 00 48 48 00 00 48 00 00 00 48 48 00 48 48 00 48 00 48 49 49 49 00 00 00 49 48 00 00 00 00 00 00 49 00 48 00 00 00 00 00 48 48 48 48 48 48 00 00 48 48 00 48 48 48 00 00 48 00 48 48 00 00 48 00 48 00 00 00 00 48 00 00 00 48 48 00 00 48 49 00 00 00 48 48 49 00 00 00 49 00 49 00 48 48 00 00 48 48 49 00 48 48 49 00 00 00 49 49 00 49 49 00 48 00 48 48 00 48 48 48 48 00 00 48 00 48 00 00 49 49 48 48 48 00 48 00 00 00 00 00 48 00 48 00 00 49 48 48 00 48 00 00 48 48 49 00 49 00 00 00 49 48 00 48 00 49 49 00 49 00 00 00 00 48 00 48 49 00 00 48 48 00 48 00 48 48 00 00 48 48 48 48 48 00 48 00 49 00 48 00 48 48 00 00 00 00 00 48 48 49 48 00 48 48 48 48 49 48 00 48 48 48 48 48 49 48 48 00 49 00 00 48 48 49 00 00 00 49 48 48 48 00 48 00 48 00 00 48 00 00 48 48 48 48 00 00 00 48 00 48 49 49 00 49 49 00 48 48 00 00 00 48 00 00 48 00 48 00 48 48 49 48 00 49 00 00 48 00 48 48 49 00 00 00 49 48 48 00 49 00 00 48 00 48 00 00 49 00 00 00 00 00 00 49 48 00 48 00 48 00 48 48 00 49 00 00 48 48 48 00 00 00 49 00 00 48 48 00 48 00 00 00 48 00 00 48 48 48 48 48 00 00 00 00 49 00 00 48 00 00 48 48 00 00 00 48 00 48 48 00 00 48 48 00 00 48 00 48 00 00 00 00 49 00 48 48 00 48 48 00 48 48 48 48 48 48 49 48 49 48 00 00 00 00 48 00 00 48 00 00 49 48 00 00 48 00 00 49 48 48 48 48 48 00 48 00 48 00 48 48 00 48 48 48 48 00 00 49 00 48 00 00 48 49 00 48 00 00 49 00 00 48 00 00 00 00 49 49 49 48 00 00 49 00 48 48 00 49 00 00 48 00 00 48 49 48 00 48 48 00 48 48 00 00 00 00 48 00 48 48 00 48 00 48 00 48 49
*/
