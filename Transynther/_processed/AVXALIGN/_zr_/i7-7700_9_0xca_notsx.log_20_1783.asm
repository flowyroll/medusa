.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xdb58, %rsi
lea addresses_WC_ht+0x15696, %rdi
nop
nop
and $27451, %r8
mov $54, %rcx
rep movsw
and %rbp, %rbp
lea addresses_D_ht+0x18306, %rsi
lea addresses_WC_ht+0x122d8, %rdi
cmp $16625, %r10
mov $44, %rcx
rep movsq
nop
dec %rbp
lea addresses_UC_ht+0x14fd8, %rsi
lea addresses_WT_ht+0xa5b8, %rdi
dec %r12
mov $99, %rcx
rep movsl
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xa19f, %r8
nop
nop
nop
nop
nop
and $38055, %rbp
movw $0x6162, (%r8)
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rax
push %rdi
push %rsi

// Store
mov $0x65b459000000006f, %rax
nop
cmp $47804, %r13
movb $0x51, (%rax)
nop
nop
nop
nop
nop
cmp $25438, %rax

// Store
mov $0xb358c0000000f28, %r15
nop
nop
nop
xor %rdi, %rdi
movl $0x51525354, (%r15)
nop
sub %r12, %r12

// Store
lea addresses_UC+0x13ad8, %rdi
clflush (%rdi)
nop
nop
nop
and $47618, %rsi
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
and $18214, %rsi

// Faulty Load
lea addresses_RW+0x10ed8, %r15
nop
nop
xor %r12, %r12
vmovaps (%r15), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
