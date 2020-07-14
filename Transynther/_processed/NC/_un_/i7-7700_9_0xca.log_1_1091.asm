.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x41e0, %rsi
lea addresses_WT_ht+0x8478, %rdi
xor $20623, %r12
mov $55, %rcx
rep movsl
nop
nop
cmp $50224, %rsi
lea addresses_D_ht+0x20c7, %rbx
nop
xor $35543, %r10
mov (%rbx), %r15w
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x13674, %r10
nop
nop
xor %rbx, %rbx
mov (%r10), %r15w
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x14220, %rbx
nop
cmp $51646, %r10
movb (%rbx), %cl
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x15bc4, %rsi
lea addresses_WT_ht+0x4e64, %rdi
clflush (%rsi)
dec %r15
mov $33, %rcx
rep movsw
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x18879, %rsi
lea addresses_UC_ht+0xa130, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
add $7606, %r15
lea addresses_normal_ht+0x172a0, %rsi
lea addresses_A_ht+0x12eac, %rdi
nop
nop
sub $13561, %r10
mov $88, %rcx
rep movsl
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x5bd0, %r10
nop
nop
nop
xor %rdi, %rdi
mov (%r10), %rsi
nop
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1a4e0, %r15
nop
nop
and %rcx, %rcx
movb (%r15), %r12b
nop
add $57550, %r14
lea addresses_WT_ht+0xf108, %rbx
nop
nop
nop
nop
nop
cmp $10464, %rcx
vmovups (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
add %r10, %r10
lea addresses_WT_ht+0xa584, %r10
nop
inc %rbx
movb (%r10), %r14b
nop
nop
nop
nop
nop
and $63983, %rdi
lea addresses_WC_ht+0xfee0, %r14
nop
nop
xor %rbx, %rbx
movb $0x61, (%r14)
add %r12, %r12
lea addresses_WT_ht+0x5100, %rsi
lea addresses_WC_ht+0x4c60, %rdi
clflush (%rdi)
nop
cmp $63471, %r10
mov $95, %rcx
rep movsq
sub %rdi, %rdi
lea addresses_A_ht+0x1c0e0, %r12
nop
nop
nop
nop
xor $50079, %rbx
movups (%r12), %xmm1
vpextrq $1, %xmm1, %r10
cmp %r10, %r10
lea addresses_A_ht+0x33a0, %rsi
lea addresses_normal_ht+0x78e0, %rdi
nop
inc %r15
mov $66, %rcx
rep movsl
nop
nop
nop
nop
and $16057, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_US+0x113a0, %rsi
mov $0x72265e00000008e0, %rdi
nop
nop
nop
nop
nop
cmp $27650, %rdx
mov $32, %rcx
rep movsl
nop
xor %rsi, %rsi

// Store
mov $0xe0, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%rdi)
xor %rsi, %rsi

// Faulty Load
mov $0x72265e00000008e0, %rdi
nop
nop
nop
nop
and %r14, %r14
mov (%rdi), %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'0e': 1}
0e
*/
