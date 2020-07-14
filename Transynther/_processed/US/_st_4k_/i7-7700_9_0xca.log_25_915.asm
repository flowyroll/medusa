.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x5c06, %rsi
lea addresses_WT_ht+0x19bc6, %rdi
inc %rbp
mov $7, %rcx
rep movsl
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0xbdc2, %rsi
lea addresses_D_ht+0xf1a0, %rdi
nop
nop
nop
nop
and $1798, %rbx
mov $1, %rcx
rep movsb
nop
nop
add $35302, %rbx
lea addresses_D_ht+0x589e, %rdi
nop
nop
nop
and $6027, %r8
movl $0x61626364, (%rdi)
xor $46094, %rcx
lea addresses_WT_ht+0x1895e, %r14
nop
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
inc %rbx
lea addresses_WC_ht+0x2d0, %rbp
nop
and %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
dec %r8
lea addresses_D_ht+0x14759, %r14
clflush (%r14)
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r14)
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1db7e, %rbp
nop
nop
nop
nop
nop
xor $54153, %r14
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
xor $33011, %rbx

// Store
lea addresses_UC+0xcb06, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovntdq %ymm7, (%rdi)
sub %r14, %r14

// Store
lea addresses_US+0xf37e, %r12
nop
nop
sub %rbp, %rbp
movl $0x51525354, (%r12)
cmp %r8, %r8

// Load
lea addresses_A+0x82bc, %rdi
nop
nop
nop
nop
nop
sub $29256, %r8
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
sub $58988, %rbx

// Store
lea addresses_UC+0x17add, %r14
add %r8, %r8
movb $0x51, (%r14)
nop
nop
and %r8, %r8

// Faulty Load
lea addresses_US+0x337e, %rbx
nop
nop
nop
nop
nop
and %r14, %r14
mov (%rbx), %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_US'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'54': 25}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
