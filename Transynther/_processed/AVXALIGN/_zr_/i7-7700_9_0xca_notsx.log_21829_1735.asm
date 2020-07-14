.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xd3c1, %rbp
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %r9
movq %r9, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
xor $46541, %r12
lea addresses_normal_ht+0x9c1, %r9
add %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r9)
dec %rax
lea addresses_UC_ht+0xf925, %r10
nop
xor %r15, %r15
movb (%r10), %al
nop
nop
nop
nop
nop
dec %r10
lea addresses_normal_ht+0xe9d1, %r15
nop
cmp %rbx, %rbx
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x13fc1, %r10
clflush (%r10)
nop
nop
nop
and $44430, %rax
mov (%r10), %bp
nop
xor $49887, %r9
lea addresses_D_ht+0x5bc1, %rbp
nop
cmp $65398, %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x104c1, %rbp
nop
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rbp)
nop
inc %rax
lea addresses_normal_ht+0x3053, %rsi
lea addresses_A_ht+0xbbc1, %rdi
nop
nop
nop
nop
nop
and $13189, %r10
mov $11, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_WC_ht+0xc9c1, %r15
nop
nop
dec %rsi
movl $0x61626364, (%r15)
nop
xor $49732, %rax
lea addresses_A_ht+0x1000d, %rsi
lea addresses_WC_ht+0x4601, %rdi
nop
nop
nop
nop
nop
and $64199, %rax
mov $86, %rcx
rep movsb
nop
nop
and %r12, %r12
lea addresses_D_ht+0x1edb9, %rsi
lea addresses_WC_ht+0x4ac1, %rdi
nop
nop
nop
nop
inc %r10
mov $38, %rcx
rep movsw
nop
nop
xor $52338, %rcx
lea addresses_UC_ht+0x7cd1, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor $37557, %r10
movw $0x6162, (%rbx)
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x93c1, %rsi
lea addresses_UC_ht+0xb1c1, %rdi
clflush (%rsi)
nop
nop
nop
inc %rbp
mov $27, %rcx
rep movsb
nop
nop
nop
cmp $19269, %r9
lea addresses_WC_ht+0xf5b7, %r15
nop
nop
nop
nop
and %rax, %rax
movb $0x61, (%r15)
nop
nop
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0xd7c1, %rdx
nop
nop
nop
nop
sub $8960, %r12
movb $0x51, (%rdx)
dec %rdi

// Store
lea addresses_normal+0xd1c1, %rsi
nop
nop
nop
nop
nop
add %r15, %r15
movw $0x5152, (%rsi)
nop
inc %r12

// Store
mov $0xa1, %rcx
cmp $15955, %r12
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
inc %rdx

// Store
lea addresses_WT+0x3241, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $18610, %rbx
movw $0x5152, (%rsi)
nop
nop
add $19508, %rsi

// Store
lea addresses_D+0xba5e, %r15
nop
nop
nop
nop
xor %rbx, %rbx
movw $0x5152, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
sub %r15, %r15

// Faulty Load
lea addresses_UC+0x1dbc1, %rcx
sub $34868, %rdx
vmovaps (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
