.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x52bc, %r13
add %rdx, %rdx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
movups %xmm6, (%r13)
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x1c6f0, %rcx
nop
nop
nop
nop
xor $24696, %rax
mov (%rcx), %rbp
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1bccc, %rsi
lea addresses_normal_ht+0x11d9e, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $70, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x17abc, %rcx
nop
nop
nop
dec %rbx
mov (%rcx), %bp
nop
nop
nop
nop
xor $28866, %rcx
lea addresses_A_ht+0xacf2, %rdx
nop
nop
nop
add %rbp, %rbp
mov (%rdx), %rax
lfence
lea addresses_UC_ht+0x1ecc4, %rsi
lea addresses_WT_ht+0x1ebc, %rdi
sub %r13, %r13
mov $2, %rcx
rep movsw
nop
add %rax, %rax
lea addresses_A_ht+0x74b0, %rax
nop
nop
cmp %rcx, %rcx
movups (%rax), %xmm3
vpextrq $0, %xmm3, %r8
add %rax, %rax
lea addresses_normal_ht+0x123bc, %rcx
nop
nop
nop
nop
nop
xor $57144, %rax
mov (%rcx), %ebx
add $1901, %rbp
lea addresses_normal_ht+0x847c, %rsi
lea addresses_WT_ht+0x22bc, %rdi
nop
dec %rbp
mov $95, %rcx
rep movsq
nop
nop
nop
nop
sub $15787, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_RW+0x1b788, %rsi
lea addresses_normal+0x19abc, %rdi
nop
dec %r12
mov $55, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x7ac, %rdi
nop
nop
dec %r13
movb $0x51, (%rdi)
nop
dec %r13

// Faulty Load
lea addresses_US+0x1aabc, %rdi
nop
inc %r13
mov (%rdi), %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'02': 1, '00': 3896, '44': 44, '70': 7, '67': 124, '60': 58, '80': 5, 'd0': 7322, '23': 1, '47': 1, 'b2': 1, '32': 10369}
80 32 d0 32 d0 32 d0 32 00 32 d0 32 d0 32 d0 32 d0 32 32 d0 32 00 00 d0 32 32 d0 32 d0 32 d0 32 d0 32 d0 32 d0 32 32 00 d0 32 32 d0 32 00 00 d0 32 00 d0 32 00 32 00 60 32 32 d0 32 d0 32 00 d0 32 00 d0 32 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 d0 32 00 00 d0 32 32 32 d0 32 d0 32 00 d0 32 d0 32 00 00 d0 32 d0 32 32 60 32 d0 32 d0 32 32 d0 32 00 00 d0 d0 00 d0 32 d0 32 d0 32 d0 32 d0 32 32 00 00 d0 32 d0 32 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 32 00 d0 32 32 00 32 32 32 32 d0 32 32 00 d0 32 d0 32 d0 00 d0 32 d0 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 00 67 00 d0 32 d0 32 60 32 00 d0 32 00 67 32 32 d0 32 d0 32 d0 32 00 d0 32 00 00 32 00 d0 32 d0 32 32 00 67 32 32 00 d0 32 d0 32 d0 32 00 d0 32 00 d0 67 32 67 32 d0 32 d0 32 d0 32 32 d0 32 00 00 67 32 d0 32 00 d0 32 32 00 d0 32 d0 32 00 d0 32 00 32 d0 32 00 d0 32 32 d0 32 00 00 d0 32 32 d0 32 32 32 d0 32 d0 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 00 00 d0 32 00 00 d0 32 00 60 00 d0 32 d0 32 d0 32 00 d0 32 32 00 d0 00 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 d0 32 d0 32 32 00 32 d0 32 d0 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 32 00 32 00 d0 32 32 d0 32 00 d0 32 00 00 00 d0 32 00 d0 32 32 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 00 00 d0 32 d0 32 d0 32 00 d0 32 00 d0 32 32 d0 32 d0 32 32 d0 32 00 d0 32 d0 32 00 32 d0 32 d0 32 d0 32 d0 32 32 00 32 00 32 d0 32 00 00 d0 32 00 d0 32 d0 32 d0 32 44 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 00 00 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 d0 32 d0 32 32 d0 32 00 d0 32 00 d0 32 32 d0 32 00 00 00 d0 32 d0 32 00 d0 00 d0 32 d0 32 d0 32 d0 00 d0 32 32 d0 32 d0 32 32 d0 32 00 32 00 00 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 32 32 32 d0 32 00 00 d0 32 00 00 32 d0 32 d0 32 00 00 00 d0 32 d0 32 d0 32 60 32 d0 32 d0 32 32 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 00 00 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 d0 32 32 00 d0 32 32 d0 32 32 00 d0 32 32 d0 32 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 32 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 00 d0 32 00 d0 32 32 d0 32 d0 32 32 d0 32 00 d0 32 00 67 32 32 d0 32 d0 32 d0 32 32 00 d0 32 00 32 d0 32 d0 32 d0 32 32 d0 32 67 32 d0 32 00 d0 32 00 d0 d0 32 32 d0 32 d0 32 32 d0 32 00 00 44 32 d0 32 d0 32 d0 32 32 00 d0 32 32 d0 32 32 00 00 00 d0 32 32 d0 32 d0 32 32 44 32 d0 d0 32 32 00 d0 32 00 00 67 32 d0 32 d0 32 00 32 d0 32 00 32 67 32 32 00 d0 32 32 32 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 00 00 d0 32 32 d0 32 00 d0 32 d0 32 00 d0 32 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 d0 32 32 d0 32 d0 32 d0 32 00 d0 32 00 00 00 d0 32 32 00 00 00 00 32 d0 32 32 d0 32 d0 32 00 00 d0 32 00 d0 32 d0 32 00 d0 32 32 00 00 d0 32 00 00 32 32 32 d0 32 d0 32 32 32 d0 32 32 00 d0 32 32 d0 32 32 d0 32 d0 32 60 32 32 d0 32 d0 32 d0 32 32 d0 32 00 d0 32 00 d0 32 d0 32 32 d0 32 d0 32 00 d0 32 d0 32 d0 32 d0 32 32 d0 32
*/
