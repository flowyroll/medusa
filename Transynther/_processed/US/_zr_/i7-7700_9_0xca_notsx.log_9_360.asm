.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xd5a4, %rsi
lea addresses_D_ht+0xaa44, %rdi
nop
nop
nop
dec %r13
mov $66, %rcx
rep movsl
xor %rdx, %rdx
lea addresses_D_ht+0x21a4, %rsi
lea addresses_D_ht+0x19c, %rdi
nop
xor $9274, %r8
mov $25, %rcx
rep movsl
nop
nop
inc %rcx
lea addresses_normal_ht+0xc9a4, %rcx
xor %rdi, %rdi
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
nop
dec %rdx
lea addresses_A_ht+0xe824, %rsi
lea addresses_normal_ht+0x2e01, %rdi
cmp $36855, %r14
mov $10, %rcx
rep movsw
nop
nop
nop
add $27525, %r14
lea addresses_UC_ht+0x141a4, %rsi
lea addresses_D_ht+0x193ac, %rdi
nop
nop
nop
and %r8, %r8
mov $98, %rcx
rep movsl
nop
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x2482, %rsi
lea addresses_normal_ht+0x1b406, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r12
mov $51, %rcx
rep movsl
add %rdi, %rdi
lea addresses_UC_ht+0x7da4, %r13
nop
nop
add %rdi, %rdi
movb $0x61, (%r13)
nop
nop
nop
xor $37147, %r8
lea addresses_D_ht+0x9ca4, %rdi
nop
nop
nop
cmp $36134, %rsi
movb (%rdi), %dl
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x61a4, %rsi
lea addresses_D_ht+0x87a4, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $118, %rcx
rep movsl
nop
nop
dec %rdx
lea addresses_WC_ht+0x56a4, %rcx
nop
nop
nop
nop
dec %rdi
mov (%rcx), %r12d
nop
mfence
lea addresses_D_ht+0x13d5c, %r8
nop
nop
nop
nop
and $7446, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r8)
nop
and $58610, %rcx
lea addresses_D_ht+0xa044, %r8
and %r14, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
add $56356, %r14
lea addresses_WT_ht+0xa54, %rdi
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rdi), %dx
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x131a4, %rbp
add $8190, %r14
mov (%rbp), %dx
lea oracles, %r13
and $0xff, %rdx
shlq $12, %rdx
mov (%r13,%rdx,1), %rdx
pop %rdx
pop %rbp
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
