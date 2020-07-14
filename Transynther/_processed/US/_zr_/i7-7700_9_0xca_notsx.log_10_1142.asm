.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd128, %rcx
nop
nop
sub %rdx, %rdx
movb $0x61, (%rcx)
sub %rax, %rax
lea addresses_normal_ht+0x1d566, %rsi
lea addresses_D_ht+0x122e6, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $96, %rcx
rep movsb
nop
inc %rbp
lea addresses_UC_ht+0xf5e6, %rbp
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x1e566, %rsi
lea addresses_D_ht+0x19ea6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r13, %r13
mov $75, %rcx
rep movsb
xor $15278, %rax
lea addresses_WT_ht+0x18ce6, %rcx
nop
nop
and %rsi, %rsi
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
nop
lfence
lea addresses_D_ht+0xcc66, %rsi
lea addresses_normal_ht+0x18c8e, %rdi
clflush (%rsi)
cmp %rdx, %rdx
mov $37, %rcx
rep movsq
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x87e2, %rsi
lea addresses_WT_ht+0x159e6, %rdi
nop
nop
nop
nop
nop
cmp $31343, %rbp
mov $54, %rcx
rep movsw
nop
nop
nop
and $42493, %r13
lea addresses_A_ht+0x14e66, %rax
nop
nop
nop
inc %rbp
vmovups (%rax), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1b26, %rbp
nop
nop
nop
nop
add $57120, %r13
movb $0x61, (%rbp)
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x8416, %rcx
nop
nop
nop
and %rax, %rax
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0xda66, %rsi
lea addresses_A_ht+0x838e, %rdi
nop
nop
nop
nop
nop
and $23009, %rdx
mov $70, %rcx
rep movsl
nop
nop
nop
nop
sub $57249, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rbp
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0xb866, %r8
nop
sub $37649, %rbx
movups (%r8), %xmm1
vpextrq $0, %xmm1, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
