.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x13ff1, %rsi
lea addresses_A_ht+0xe809, %rdi
nop
add $182, %r14
mov $120, %rcx
rep movsw
nop
cmp $2301, %rax
lea addresses_A_ht+0x4db1, %rax
nop
nop
nop
cmp $7922, %r8
movw $0x6162, (%rax)
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x106d9, %rsi
lea addresses_D_ht+0x16c31, %rdi
nop
nop
nop
nop
nop
sub %rbp, %rbp
mov $66, %rcx
rep movsw
nop
nop
nop
nop
nop
and $27401, %rcx
lea addresses_normal_ht+0x130f1, %r14
nop
nop
nop
nop
and %rbp, %rbp
mov (%r14), %di
nop
nop
nop
nop
add $45655, %rsi
lea addresses_WC_ht+0x1b1f1, %rsi
nop
nop
nop
sub %r14, %r14
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm1
vpextrq $1, %xmm1, %rax
inc %rsi
lea addresses_WC_ht+0x16121, %rsi
lea addresses_A_ht+0x68d1, %rdi
clflush (%rsi)
nop
xor %r10, %r10
mov $65, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x15ab1, %rcx
nop
nop
nop
nop
nop
add $54666, %rdi
movb (%rcx), %r8b
add $24592, %r10
lea addresses_WC_ht+0x63f1, %rsi
lea addresses_WC_ht+0x15cfd, %rdi
nop
nop
nop
nop
add $35706, %rax
mov $65, %rcx
rep movsb
nop
and %rax, %rax
lea addresses_WT_ht+0x19ef1, %rsi
lea addresses_A_ht+0x8b71, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
mov $19, %rcx
rep movsb
nop
nop
nop
add $46819, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_RW+0x1cdb5, %r14
sub $46809, %rcx
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbx
add $31311, %r15

// Store
lea addresses_US+0x11551, %rax
inc %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
cmp %r14, %r14

// Store
lea addresses_normal+0xd620, %r15
clflush (%r15)
nop
nop
sub $7420, %rbp
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x14f51, %rbx
nop
nop
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movaps %xmm4, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_WC+0xde41, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add $14074, %rcx
vmovups (%rax), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x35f1, %rcx
sub $41446, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%rcx)

// Exception!!!
nop
nop
nop
nop
mov (0), %rax
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x1bff1, %r15
cmp %rbp, %rbp
movw $0x5152, (%r15)
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_normal+0x97f1, %rcx
nop
nop
and %rbx, %rbx
movups (%rcx), %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_RW'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': True, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'34': 20}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
