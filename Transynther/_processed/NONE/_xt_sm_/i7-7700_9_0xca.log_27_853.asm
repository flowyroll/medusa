.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x5b51, %rsi
lea addresses_WC_ht+0x15501, %rdi
nop
add %r12, %r12
mov $9, %rcx
rep movsb
nop
nop
nop
xor $42551, %rcx
lea addresses_A_ht+0x14e01, %r13
nop
nop
and $35406, %r15
mov (%r13), %bx
nop
nop
nop
nop
xor $15028, %r12
lea addresses_UC_ht+0x10501, %rcx
nop
nop
nop
nop
mfence
movb (%rcx), %r12b
nop
xor $49207, %rdi
lea addresses_WC_ht+0x63cd, %rdi
nop
nop
nop
inc %r12
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %rbx
cmp $54156, %rbx
lea addresses_WC_ht+0x2e01, %rdi
inc %rcx
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x1c152, %rsi
lea addresses_WC_ht+0x18401, %rdi
nop
cmp %rdx, %rdx
mov $58, %rcx
rep movsb
nop
nop
nop
nop
add $4865, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdx

// Store
lea addresses_WT+0x3f01, %r15
and %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
nop
nop
nop
add $1350, %rcx

// Store
lea addresses_RW+0x1ca01, %rbp
cmp $6797, %rdx
movb $0x51, (%rbp)
nop
nop
nop
nop
xor $48546, %rbp

// Store
lea addresses_RW+0x7fc1, %rdx
nop
nop
nop
nop
cmp $14667, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovaps %ymm7, (%rdx)
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_WC+0x557d, %r13
nop
nop
nop
nop
xor $13775, %rdx
movb $0x51, (%r13)
nop
nop
and $43278, %rdx

// Faulty Load
lea addresses_RW+0x1ca01, %r13
nop
nop
nop
nop
nop
sub $18434, %rbx
movb (%r13), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'51': 27}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
