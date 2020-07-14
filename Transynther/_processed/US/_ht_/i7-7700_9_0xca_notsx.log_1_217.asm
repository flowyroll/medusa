.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xf6f0, %r15
nop
cmp %r8, %r8
mov (%r15), %r12w
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x61f0, %r8
nop
xor %r10, %r10
mov (%r8), %edx
nop
nop
nop
nop
sub $16089, %rdi
lea addresses_D_ht+0x16f90, %r12
nop
nop
nop
nop
nop
sub $60947, %rbx
movw $0x6162, (%r12)
nop
sub %r12, %r12
lea addresses_A_ht+0x1c630, %r12
nop
nop
nop
nop
nop
inc %r15
mov (%r12), %rbx
nop
nop
nop
nop
xor $7510, %rbx
lea addresses_normal_ht+0xa3b0, %rsi
lea addresses_A_ht+0x98b0, %rdi
nop
nop
add %r12, %r12
mov $61, %rcx
rep movsb
and %rdi, %rdi
lea addresses_D_ht+0x1bcb0, %rdx
nop
nop
nop
cmp %r12, %r12
mov (%rdx), %di
nop
nop
nop
nop
nop
xor $8940, %rdx
lea addresses_WC_ht+0x19cb0, %r12
nop
nop
nop
nop
nop
xor $33287, %rcx
movb $0x61, (%r12)
nop
nop
nop
nop
add $47383, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x15618, %rcx
nop
nop
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
nop
nop
and %r8, %r8

// Store
lea addresses_WC+0x6650, %rdx
clflush (%rdx)
nop
nop
and $59000, %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rdx)
nop
nop
xor $8897, %r12

// Store
lea addresses_D+0x146b0, %rcx
xor $885, %rdi
movb $0x51, (%rcx)
xor $22261, %rdx

// Faulty Load
lea addresses_US+0x1acb0, %r8
nop
cmp $42395, %rdi
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
lea oracles, %r8
and $0xff, %r12
shlq $12, %r12
mov (%r8,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'44': 1}
44
*/
