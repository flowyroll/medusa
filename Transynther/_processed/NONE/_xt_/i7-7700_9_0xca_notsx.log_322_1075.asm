.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14e99, %rax
cmp %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rax)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xc79, %rsi
lea addresses_UC_ht+0xd00d, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $56, %rcx
rep movsq
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0x4df9, %rdi
nop
nop
nop
nop
nop
xor $2335, %rbp
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub $8576, %rcx
lea addresses_D_ht+0x17279, %rsi
lea addresses_WC_ht+0x9cf9, %rdi
nop
nop
nop
nop
cmp $48565, %rax
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x1e99, %r10
nop
nop
nop
nop
and $26909, %rcx
movb $0x61, (%r10)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x94f9, %rcx
clflush (%rcx)
nop
nop
nop
nop
sub $32633, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
dec %rax
lea addresses_UC_ht+0x117d9, %r10
sub $42041, %rsi
movl $0x61626364, (%r10)
nop
add $27509, %rdi
lea addresses_UC_ht+0xae19, %rsi
lea addresses_UC_ht+0xe079, %rdi
nop
nop
dec %rbx
mov $10, %rcx
rep movsb
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x181e1, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rdi
movaps %xmm4, (%rdi)
nop
nop
nop
sub %rcx, %rcx

// Store
mov $0x4bca9d0000000579, %rbx
nop
nop
nop
sub $58350, %r15
movb $0x51, (%rbx)
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_D+0x1bc79, %rbx
nop
nop
nop
cmp %rsi, %rsi
mov (%rbx), %r10
lea oracles, %r15
and $0xff, %r10
shlq $12, %r10
mov (%r15,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'36': 322}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
