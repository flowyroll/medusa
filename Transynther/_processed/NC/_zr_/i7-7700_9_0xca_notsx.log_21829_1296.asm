.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6cc9, %r14
and %r9, %r9
mov $0x6162636465666768, %r13
movq %r13, (%r14)
nop
nop
nop
add $19237, %r10
lea addresses_UC_ht+0x1315d, %r14
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r14)
nop
nop
nop
nop
nop
inc %r13
lea addresses_UC_ht+0x16b69, %rsi
lea addresses_normal_ht+0x15489, %rdi
nop
nop
add $50643, %rdx
mov $3, %rcx
rep movsb
nop
add $15236, %r10
lea addresses_UC_ht+0x12d5f, %rsi
lea addresses_WT_ht+0xe1c9, %rdi
nop
nop
nop
nop
and %r10, %r10
mov $7, %rcx
rep movsb
nop
and $15248, %r14
lea addresses_A_ht+0x18859, %rsi
lea addresses_normal_ht+0x6f59, %rdi
cmp %r9, %r9
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $4211, %r9
lea addresses_WT_ht+0x7f9d, %r13
mfence
mov $0x6162636465666768, %r9
movq %r9, (%r13)
nop
sub $58370, %r13
lea addresses_D_ht+0x84c9, %r9
nop
nop
nop
and $5650, %r14
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x3ac9, %rsi
nop
nop
nop
nop
cmp $53677, %rdi
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
and %r13, %r13
lea addresses_D_ht+0x7289, %rsi
lea addresses_A_ht+0x14b09, %rdi
nop
nop
and $27099, %r10
mov $109, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x36e5, %rsi
lea addresses_A_ht+0xbdc9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $35813, %rdx
mov $127, %rcx
rep movsw
nop
nop
nop
nop
sub $22279, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x15089, %rsi
lea addresses_PSE+0x30c9, %rdi
nop
xor $52916, %r14
mov $102, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi

// Store
mov $0xc9, %rcx
add $30240, %r11
movw $0x5152, (%rcx)
nop
nop
nop
dec %rsi

// Store
lea addresses_A+0x146c9, %rdi
nop
nop
nop
sub %rsi, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_D+0x1ffb9, %r14
inc %r8
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
inc %rsi

// Faulty Load
mov $0xef77a0000000cc9, %rcx
clflush (%rcx)
nop
nop
nop
xor %r14, %r14
movb (%rcx), %r8b
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
