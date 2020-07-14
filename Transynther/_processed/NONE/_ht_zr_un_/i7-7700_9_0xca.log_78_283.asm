.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x874, %rsi
nop
nop
and $23932, %r15
mov (%rsi), %di
add %r10, %r10
lea addresses_UC_ht+0x14234, %rsi
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
nop
and $28970, %rax
lea addresses_D_ht+0xc904, %rbx
nop
nop
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, (%rbx)
nop
nop
nop
and $25484, %rbx
lea addresses_WT_ht+0x1e434, %rsi
lea addresses_D_ht+0x2434, %rdi
nop
cmp %r13, %r13
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0xe434, %rax
nop
cmp %rcx, %rcx
movups (%rax), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
nop
xor $1422, %r10
lea addresses_UC_ht+0x1ab34, %rsi
lea addresses_D_ht+0x10034, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $75, %rcx
rep movsb
nop
nop
cmp $64017, %rsi
lea addresses_WC_ht+0x1dc82, %rsi
cmp %rax, %rax
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
xor $35393, %rax
lea addresses_WT_ht+0x5bac, %r10
nop
nop
nop
nop
and $12703, %rax
mov (%r10), %di
nop
nop
nop
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x1efce60000000bf4, %rsi
lea addresses_US+0x9954, %rdi
nop
nop
nop
nop
and $49162, %r15
mov $3, %rcx
rep movsl
nop
add $39423, %rdi

// Faulty Load
lea addresses_UC+0xa434, %rsi
nop
nop
nop
cmp $60246, %r15
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'47': 3, '00': 44, 'ff': 23, 'e0': 8}
00 e0 ff 00 00 00 00 00 00 ff ff ff ff 47 00 ff e0 ff 00 ff ff 00 00 ff 00 ff 00 00 00 ff 00 00 47 00 00 ff 00 ff 00 00 e0 00 ff e0 00 00 e0 00 00 ff 47 ff ff 00 00 00 ff 00 e0 00 00 ff ff 00 00 e0 00 00 00 00 e0 00 ff 00 00 00 ff 00
*/
