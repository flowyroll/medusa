.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e4ba, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%rdi), %r10b
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x15aba, %r9
nop
nop
and %rbp, %rbp
mov (%r9), %r14w
nop
nop
nop
and $3353, %rbp
lea addresses_normal_ht+0x34ba, %r9
nop
nop
nop
sub %rcx, %rcx
mov (%r9), %r10
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0x146ba, %rsi
lea addresses_WC_ht+0xe93b, %rdi
nop
nop
add %r14, %r14
mov $68, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x1d6ba, %rbp
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
nop
cmp $56980, %rdi
lea addresses_A_ht+0x1dc7a, %rbp
add %rcx, %rcx
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
mfence
lea addresses_WC_ht+0xcdba, %rcx
nop
nop
nop
nop
and $10940, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rcx)
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x17ffa, %r14
nop
dec %rdi
movw $0x6162, (%r14)
nop
nop
nop
inc %r14
lea addresses_WC_ht+0x35ba, %r9
nop
nop
nop
nop
nop
and $37875, %r10
movups (%r9), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
xor %rbx, %rbx
lea addresses_A_ht+0x13752, %rsi
lea addresses_D_ht+0x439a, %rdi
sub %r10, %r10
mov $115, %rcx
rep movsw
inc %r10
lea addresses_UC_ht+0x19018, %rsi
lea addresses_D_ht+0x1d4fa, %rdi
cmp $38982, %r9
mov $16, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0xc8ba, %rsi
lea addresses_normal_ht+0x50f0, %rdi
nop
nop
nop
cmp $25623, %rbx
mov $57, %rcx
rep movsl
nop
add $27123, %rcx
lea addresses_UC_ht+0x106ba, %rcx
nop
inc %r9
movb (%rcx), %r10b
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %rax
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x146ba, %rcx
add $27643, %rax
movups (%rcx), %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %rbp
and $0xff, %r12
shlq $12, %r12
mov (%rbp,%r12,1), %r12
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'45': 707, '48': 9920, '00': 6824, '49': 4378}
48 49 00 00 00 49 48 48 00 49 48 48 48 49 48 48 00 49 48 48 00 49 00 48 00 45 48 48 49 00 48 48 49 00 48 49 48 48 49 00 00 48 49 00 48 00 49 00 48 49 48 48 49 49 48 48 48 48 49 48 48 49 48 48 48 48 00 48 48 00 00 48 00 49 48 48 00 49 48 48 00 49 48 48 00 49 48 48 48 49 00 48 48 00 48 48 49 00 48 00 49 00 48 00 49 48 48 48 00 00 48 48 49 48 48 48 48 00 48 48 00 49 48 48 49 48 48 00 45 00 00 45 48 00 48 48 48 00 00 48 00 49 48 48 48 49 00 00 49 00 48 00 49 00 48 49 48 00 49 48 48 48 00 48 48 49 00 48 49 48 48 48 49 48 48 48 00 00 48 00 49 48 48 48 49 48 48 00 49 45 00 48 00 45 48 48 00 00 48 48 00 00 00 48 49 48 48 48 48 00 00 00 00 00 49 00 48 48 48 00 00 48 49 48 48 48 49 00 48 49 49 00 48 49 00 00 00 00 48 48 49 48 48 48 48 49 48 48 00 00 00 00 48 48 00 00 48 00 48 49 48 48 48 00 48 48 48 00 48 00 00 48 48 00 49 00 48 00 45 48 00 49 48 48 48 48 48 49 45 48 48 49 48 49 45 00 48 00 00 48 00 48 00 00 48 48 49 48 48 49 00 48 49 00 48 00 48 00 49 48 48 00 00 48 48 48 48 49 48 48 48 49 48 48 49 00 48 48 49 48 48 49 48 48 49 45 00 48 49 00 48 48 00 48 00 49 48 00 00 00 48 00 49 00 48 48 48 48 48 48 48 00 49 48 48 49 48 48 49 00 48 00 49 00 48 49 48 48 48 00 48 00 49 00 48 00 49 48 00 49 45 48 48 49 48 48 48 00 00 00 49 48 48 00 00 49 00 48 00 49 00 48 00 45 00 00 49 48 48 00 49 48 48 00 49 48 48 49 00 00 48 45 00 48 49 49 00 48 48 49 48 00 48 00 49 48 00 49 00 48 48 49 00 48 00 48 48 49 00 48 00 49 48 48 49 00 48 49 49 00 00 48 49 48 48 00 45 00 48 45 48 48 48 49 48 48 48 49 00 48 00 48 00 48 48 00 48 48 49 48 48 49 48 48 00 00 48 48 00 49 48 48 49 48 48 00 49 00 48 00 49 48 00 48 49 00 48 00 49 00 48 00 45 48 48 49 00 48 00 45 00 00 48 48 48 00 48 48 48 49 48 48 49 48 48 00 49 48 00 49 00 48 49 49 48 48 49 45 00 48 49 48 00 48 48 49 00 48 48 49 00 48 00 48 00 49 00 48 49 48 48 48 00 00 49 00 48 49 48 48 00 49 00 48 49 48 48 00 48 48 48 00 48 48 48 49 48 48 49 48 00 48 49 45 00 00 49 00 48 00 00 48 48 48 49 48 48 48 49 48 48 00 49 48 48 49 00 00 48 48 48 00 00 48 00 49 49 00 48 00 48 48 00 45 48 48 48 49 00 48 00 45 48 00 49 48 48 48 48 45 48 48 49 48 00 49 00 48 00 45 48 00 48 48 49 48 48 48 49 48 00 49 45 00 48 45 48 48 00 49 48 48 00 00 48 48 00 45 48 48 49 48 48 00 45 00 48 49 00 48 49 48 00 49 00 48 48 49 00 00 00 45 00 48 00 48 00 49 48 48 49 48 00 49 45 48 00 00 48 48 49 00 48 48 00 49 48 48 48 49 48 00 49 00 48 48 49 00 00 49 48 00 49 49 00 48 00 49 48 00 49 00 48 49 48 48 00 00 48 48 00 45 48 48 49 00 00 49 00 00 49 48 00 00 48 48 49 48 00 48 49 48 48 48 49 48 48 00 49 00 00 48 00 49 00 48 49 48 00 49 48 48 00 49 00 48 00 00 45 48 48 48 00 48 00 00 48 48 48 49 48 48 48 00 48 00 49 00 48 48 00 00 48 48 49 48 00 48 49 00 48 00 00 48 00 49 00 00 49 00 48 48 49 48 48 49 00 48 48 00 49 00 48 49 48 48 00 48 48 48 48 49 48 48 00 45 48 00 49 48 00 49 00 00 00 48 48 00 49 45 00 00 00 48 48 48 49 00 48 49 48 48 00 00 00 48 48 48 49 48 00 00 00 48 48 00 48 48 49 49 00 48 48 49 48 48 48 49 48 48 49 48 00 48 48 48 49 00 48 48 49 00 00 49 00 48 49 00 48 48
*/
