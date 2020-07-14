.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5780, %r15
nop
nop
nop
nop
nop
cmp $21752, %r9
movups (%r15), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0x5a30, %r14
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xfd40, %rsi
lea addresses_A_ht+0x5540, %rdi
nop
and $5535, %rbx
mov $3, %rcx
rep movsw
nop
nop
nop
nop
nop
add $39851, %rbx
lea addresses_WC_ht+0x15a80, %rbx
add $2803, %rcx
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x17580, %rbx
sub %rdi, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x2240, %rdi
nop
xor $30438, %rsi
movl $0x61626364, (%rdi)
nop
xor $44880, %r9
lea addresses_WT_ht+0x5540, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %rbx, %rbx
movw $0x6162, (%r9)
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x4966, %rsi
lea addresses_WC_ht+0x12c40, %rdi
nop
nop
sub %r9, %r9
mov $105, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xc140, %rsi
lea addresses_WT_ht+0xe240, %rdi
clflush (%rsi)
nop
nop
nop
dec %rdx
mov $52, %rcx
rep movsq
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0xb74c, %r15
nop
nop
cmp $21162, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_D_ht+0x2160, %rbx
nop
nop
nop
dec %rsi
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
nop
cmp $19223, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1c740, %rsi
lea addresses_WT+0x8940, %rdi
cmp $54420, %r14
mov $35, %rcx
rep movsb
nop
nop
nop
nop
sub $31789, %rax

// Faulty Load
mov $0x14475c0000000540, %rcx
inc %rbx
movb (%rcx), %r14b
lea oracles, %rsi
and $0xff, %r14
shlq $12, %r14
mov (%rsi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'00': 628}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
