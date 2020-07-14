.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1129f, %rsi
lea addresses_D_ht+0x1a61b, %rdi
nop
nop
nop
nop
nop
and $5940, %rbp
mov $48, %rcx
rep movsw
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xbe9f, %rax
cmp $58293, %r15
mov (%rax), %si
and %rcx, %rcx
lea addresses_WC_ht+0x691f, %r15
add %rax, %rax
mov (%r15), %ebp
nop
xor $64368, %rdi
lea addresses_WT_ht+0x5f27, %rsi
lea addresses_A_ht+0x1929f, %rdi
and $27512, %rbp
mov $89, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $17913, %rax
lea addresses_UC_ht+0x1368b, %rdi
nop
nop
nop
add %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
inc %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r14
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_RW+0x3c6f, %rbx
nop
nop
nop
xor $53600, %r12
movb $0x51, (%rbx)
nop
nop
and $36442, %r12

// Store
lea addresses_RW+0x160d3, %r14
sub $35089, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
sub %r10, %r10

// Store
lea addresses_D+0xd69f, %r12
nop
nop
add %rbp, %rbp
movw $0x5152, (%r12)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_D+0x1baff, %rdi
nop
nop
nop
nop
nop
add $19182, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movaps %xmm0, (%rdi)
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_US+0x1689f, %r12
nop
nop
nop
nop
sub $52264, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x8a5b, %rbx
nop
nop
nop
nop
nop
and $51388, %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovntdq %ymm1, (%rbx)
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
mov $0x7b93ce000000069f, %rbx
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_D'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'00': 289}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
