.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16c26, %rsi
lea addresses_WC_ht+0x1e206, %rdi
cmp $36542, %rax
mov $94, %rcx
rep movsb
cmp %rbx, %rbx
lea addresses_normal_ht+0x7a06, %rsi
lea addresses_A_ht+0xc906, %rdi
nop
nop
nop
cmp %r12, %r12
mov $36, %rcx
rep movsl
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x1ea06, %rsi
lea addresses_normal_ht+0x1422e, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0xf146, %rsi
lea addresses_WC_ht+0x1a24c, %rdi
add %rbp, %rbp
mov $27, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $44247, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx

// Store
mov $0x7ced6b0000000a06, %r12
dec %r14
movb $0x51, (%r12)
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_WT+0xe046, %r15
nop
nop
cmp %r8, %r8
movb (%r15), %r12b
nop
nop
dec %rdx

// Load
mov $0x61df00000003c6, %r15
add $38570, %r14
movups (%r15), %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
and %rcx, %rcx

// Load
lea addresses_US+0xca06, %r14
nop
nop
nop
cmp %rdi, %rdi
mov (%r14), %r8w
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0x8a18, %r15
nop
nop
nop
add $58610, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%r15)
nop
inc %rdx

// Store
mov $0x7ced6b0000000a06, %rcx
nop
nop
add $12528, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
mov $0x7ced6b0000000a06, %r15
nop
nop
nop
add $15400, %rdi
vmovups (%r15), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'54': 17480, '00': 4349}
00 54 54 54 00 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 00 54 00 54 54 54 00 00 54 54 54 00 00 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 54 54 54 00 00 54 54 00 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 00 54 00 54 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 54 54 54 54 54 00 00 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 00 00 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 00 54 54 54 54 00 54 54 54 54 54 00 54 54 00 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 00 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 54 54 00 00 54 54 54 54 00 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 00 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 00 54 54 00 54 54 54 54 00 54 54 00 54 00 54 00 54 54 54 54 54 00 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 00 00 54 00 54 54 54 54 54 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 00 00 54 54 00 00 54 54 54 00 54 54 00 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 00 00 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 00 00 54 54 54 00 54 54 54 54 54 00 00 54 54 54 54 00 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 00 54 54 54 54 54 54 00 00 54 00 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 54 54 00 54 54 54 00 54 54 00 54 00 00 54 54 00 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 00 54 54 00 54 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 00 54 54 54 00 54 00 54 54 00 54 54 54 54 54 54 54 54 00 00
*/
