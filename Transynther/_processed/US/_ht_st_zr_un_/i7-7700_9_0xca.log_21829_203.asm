.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1863f, %rax
nop
xor %rbx, %rbx
movw $0x6162, (%rax)
nop
sub $61322, %r12
lea addresses_D_ht+0x2107, %rsi
lea addresses_UC_ht+0x11a7f, %rdi
nop
nop
dec %r10
mov $94, %rcx
rep movsb
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1c63f, %rsi
lea addresses_normal_ht+0xd75f, %rdi
nop
nop
nop
inc %rbx
mov $103, %rcx
rep movsl
nop
nop
nop
nop
cmp $45508, %r12
lea addresses_UC_ht+0x10e3f, %rsi
lea addresses_A_ht+0x11d2b, %rdi
nop
nop
nop
nop
inc %r10
mov $9, %rcx
rep movsb
nop
nop
nop
nop
add $33576, %rsi
lea addresses_WT_ht+0x820f, %rsi
inc %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rdx

// Store
mov $0x221b170000000139, %r12
nop
nop
nop
nop
add $33215, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_US+0x1daef, %r15
xor $13969, %rdx
movl $0x51525354, (%r15)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_normal+0x120df, %r15
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0xdebf, %rdx
nop
xor $53828, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_US+0xf63f, %rbx
nop
nop
nop
nop
and $20206, %r15
mov (%rbx), %edx
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'46': 4826, '47': 105, '00': 255, 'ff': 13583, '53': 681, '45': 2327, '3c': 51, 'b0': 1}
ff ff 45 45 ff 46 46 ff ff ff 46 46 46 45 ff ff 45 ff ff ff ff ff ff 45 ff 46 ff 46 46 ff 46 ff ff ff ff ff ff ff ff 46 45 46 ff ff ff ff ff ff 45 53 53 ff ff ff 46 53 45 46 ff ff ff 46 46 46 ff ff ff ff 46 ff ff 45 46 ff ff ff 45 46 ff ff 46 ff ff ff ff ff 53 45 45 ff 45 45 ff ff ff 46 ff ff ff 46 ff ff ff ff 53 ff ff 46 46 ff ff ff 45 ff 46 46 46 ff ff ff ff ff ff ff 53 45 ff ff 46 ff 45 ff ff 45 45 45 ff ff ff 45 ff 46 53 ff ff ff 45 ff ff ff 45 46 ff ff ff ff 46 ff 45 46 ff ff ff 46 ff ff ff ff ff ff ff 45 ff ff ff ff ff ff ff ff ff 46 ff ff ff 00 ff ff ff 45 45 ff ff ff ff 46 ff ff ff ff ff ff ff ff ff ff 46 ff 46 ff 45 ff 45 46 ff 53 53 ff ff ff ff ff 46 46 46 ff 00 ff ff ff 46 46 ff ff 47 ff ff 45 ff 45 ff 46 ff ff ff ff ff ff ff ff ff ff ff ff 45 3c ff ff ff ff ff ff 45 ff ff ff 45 46 ff 46 46 ff ff 45 ff 53 46 46 ff 45 ff ff ff ff 46 46 ff ff ff ff 46 46 ff ff ff ff 46 ff ff ff 53 ff ff 46 ff 46 ff 46 46 ff 46 53 ff ff ff ff ff ff 53 ff 53 ff ff ff 45 47 ff ff ff ff ff ff 45 ff 45 53 00 46 46 46 ff ff 45 53 45 45 46 ff ff ff ff ff 46 ff ff 46 ff ff 46 46 ff 45 46 ff ff ff 46 ff ff ff ff ff 45 ff ff ff ff ff 45 ff 47 46 ff ff ff 53 ff ff 46 ff 46 ff ff ff 46 53 ff 46 ff 46 ff ff ff ff 45 ff ff 45 ff ff ff 45 53 45 ff 46 ff ff ff ff 46 ff ff ff ff ff ff ff ff ff ff ff 46 46 ff ff ff ff ff 46 46 ff 53 45 ff ff ff 00 ff 46 ff 45 45 46 46 ff ff 45 46 46 46 ff ff 46 46 ff ff 46 ff 45 46 ff 45 ff ff ff 00 ff 53 45 ff ff ff 45 45 ff 45 46 ff ff 46 46 ff ff 46 ff ff 46 ff 46 ff ff 45 45 ff 46 ff ff 45 ff ff 46 ff 46 ff ff 53 ff ff ff ff ff 45 46 53 ff 45 ff ff ff ff ff ff 53 ff 53 ff 47 ff ff 46 46 ff ff 46 ff ff ff ff ff 45 ff 46 ff ff ff ff ff ff ff 45 ff 46 ff ff ff ff 45 ff ff 45 00 53 ff ff 45 46 ff 53 45 ff 46 ff 46 46 ff ff 45 ff ff 45 45 45 ff ff ff 45 ff 46 ff ff ff 46 46 ff ff ff ff ff ff ff ff 46 ff ff ff ff ff ff ff ff ff ff ff 45 ff 46 46 ff 46 ff 46 46 ff 45 46 ff 45 ff ff ff 45 ff 46 46 46 ff ff 46 46 ff 46 46 46 ff ff 47 46 ff ff ff 45 45 46 ff ff ff 53 45 ff 45 ff ff ff ff 45 ff 45 ff ff 45 ff ff ff ff 45 ff ff ff ff ff 45 ff ff 45 ff 45 46 46 ff 46 ff 00 45 45 46 ff ff ff ff ff ff ff 45 46 46 46 ff ff ff ff ff 46 ff ff ff ff ff ff ff 46 46 46 ff 46 ff ff 46 ff 46 ff 46 46 46 ff ff ff ff ff 45 46 45 ff ff 45 46 ff ff 45 46 ff ff 46 ff ff ff 46 45 ff 45 ff ff ff ff ff ff ff ff 46 ff ff 46 ff ff 46 ff 46 ff ff ff ff ff ff ff 46 ff 46 46 ff 46 ff ff ff ff ff ff 46 53 45 ff ff 46 ff ff 53 46 46 46 ff ff 45 ff ff 46 46 46 46 ff ff 45 ff ff ff ff 45 45 ff ff 46 ff ff ff ff 46 ff 45 ff ff ff ff ff 45 46 ff ff 46 ff ff 45 ff ff 46 46 ff 46 ff ff ff 46 46 46 46 46 ff 53 45 00 ff 46 ff ff 53 ff 46 ff 46 ff 46 ff 46 ff 46 ff ff ff 45 45 ff 45 ff ff 46 ff ff 45 ff ff 46 ff 00 46 ff ff 45 45 ff 53 46 ff ff ff ff ff ff 45 45 ff 00 46 46 46 46 ff 53 ff 45 ff ff ff 45 00 ff ff 46 46 53 46 46 ff 45 ff ff 46 46 ff 45 ff ff ff ff 45 46 ff ff ff ff ff 46 46 ff ff 46 ff ff 45 ff ff ff ff ff ff ff ff ff 45 ff 45 00 46 ff ff 46 ff ff ff ff 45 ff ff 46
*/
