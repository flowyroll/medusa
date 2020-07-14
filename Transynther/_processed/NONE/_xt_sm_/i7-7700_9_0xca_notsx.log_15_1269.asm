.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9a60, %r15
clflush (%r15)
nop
nop
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%r15)
nop
sub %rax, %rax
lea addresses_normal_ht+0x9a20, %rsi
lea addresses_A_ht+0x1e828, %rdi
nop
nop
nop
inc %r14
mov $99, %rcx
rep movsl
nop
nop
nop
nop
xor $42099, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0x1ea9c, %rsi
lea addresses_WT+0x3320, %rdi
nop
cmp %r14, %r14
mov $34, %rcx
rep movsl
nop
inc %rdx

// Store
lea addresses_A+0xd920, %rbp
nop
nop
and $31875, %rdx
movb $0x51, (%rbp)
nop
xor $21338, %r14

// Store
lea addresses_WC+0xb080, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $52281, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
and %rdi, %rdi

// Load
lea addresses_A+0x1ae20, %rcx
clflush (%rcx)
nop
nop
inc %rbx
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
dec %rbx

// Load
mov $0x11e110000000ac2, %rsi
clflush (%rsi)
xor $11873, %rbp
mov (%rsi), %cx
xor $55927, %rdx

// Faulty Load
lea addresses_A+0xd920, %rsi
nop
cmp $53656, %r14
mov (%rsi), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'51': 15}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
