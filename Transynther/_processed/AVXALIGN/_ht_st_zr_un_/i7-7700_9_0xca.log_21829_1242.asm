.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rdi
lea addresses_WT_ht+0x1747e, %r14
nop
nop
nop
add %r12, %r12
vmovups (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
xor $11134, %r13
lea addresses_normal_ht+0x14dfe, %r13
cmp %rdi, %rdi
mov (%r13), %rbx
nop
nop
nop
xor $30526, %r14
lea addresses_D_ht+0x10ffe, %r13
clflush (%r13)
add $8269, %rbp
mov (%r13), %r14d
nop
nop
nop
nop
nop
and $51047, %rdi
pop %rdi
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
mov $0x67e, %r11
nop
nop
inc %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
and $59975, %rdx

// Store
lea addresses_WT+0x185ae, %r10
nop
nop
nop
nop
xor $49729, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
and $23568, %rdx

// Store
lea addresses_normal+0x111fe, %rbp
clflush (%rbp)
nop
cmp $51262, %rdi
movw $0x5152, (%rbp)
nop
nop
nop
nop
cmp $6816, %rax

// Faulty Load
lea addresses_A+0x1397e, %rdi
and $49166, %rbp
mov (%rdi), %r10d
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'44': 2242, '46': 1815, '47': 8, '00': 12547, 'ff': 3747, '53': 732, '49': 594, '01': 141, 'a0': 3}
44 ff 00 00 00 00 00 ff 00 00 00 ff 00 01 00 44 00 00 01 00 00 00 ff 00 ff 00 00 ff 00 00 44 44 ff 00 49 00 ff 00 00 49 00 00 49 00 ff 00 ff 00 00 00 46 46 ff 00 ff 00 ff 00 00 44 00 ff 00 00 00 46 44 44 00 00 00 00 00 00 00 ff 00 44 ff 00 ff 00 00 00 00 00 00 00 00 53 00 46 00 00 46 53 00 44 44 ff 00 ff 00 ff 00 44 00 46 00 00 00 00 46 00 ff 00 00 00 44 ff 00 00 49 00 00 46 00 ff 00 44 00 00 ff 00 00 00 00 44 00 ff 00 00 ff 00 ff 00 ff 00 53 00 00 00 00 ff 00 44 00 ff 00 00 44 53 00 ff 00 00 00 44 46 ff 00 ff 00 46 ff 00 44 ff 00 44 46 53 00 ff 00 44 00 00 00 ff 00 ff 00 46 00 ff 00 00 00 00 00 00 00 00 00 00 46 ff 00 00 ff 00 00 46 ff 00 00 44 46 53 00 46 ff 00 00 49 00 00 00 44 53 00 00 00 44 46 53 00 46 00 00 46 44 46 ff 00 44 53 00 00 00 00 00 00 00 00 44 53 00 00 46 ff 00 ff 00 ff 00 00 00 46 00 46 00 ff 00 ff 00 00 44 00 00 00 ff 00 00 00 46 00 ff 00 44 46 49 00 49 00 00 46 00 00 00 00 00 46 44 00 49 00 00 00 00 46 00 46 00 00 ff 00 46 00 ff 00 44 00 44 53 00 ff 00 00 00 49 00 00 44 44 53 00 00 49 00 00 00 00 46 00 00 00 46 00 00 ff 00 46 00 00 46 ff 00 00 46 00 00 44 00 44 00 00 46 00 46 00 46 00 46 53 00 ff 00 00 44 53 00 00 00 49 00 44 00 46 53 00 44 44 00 44 44 00 44 ff 00 00 ff 00 ff 00 44 53 00 00 00 ff 00 53 00 00 ff 00 46 44 00 00 44 ff 00 ff 00 46 46 44 00 00 ff 44 00 ff 00 44 00 01 00 ff 00 ff 00 46 00 00 44 44 53 00 00 00 00 ff 00 44 00 46 ff 00 00 00 46 49 00 00 46 53 00 ff 00 49 00 ff 44 44 00 ff 00 00 46 46 46 00 ff 00 46 44 ff 00 ff 00 00 00 00 ff 00 46 ff 00 00 ff 00 00 ff 00 00 ff 00 44 00 46 00 00 00 46 00 00 46 00 ff 00 ff 00 00 ff 00 00 46 46 00 01 00 00 00 00 44 46 00 00 46 ff 00 ff 00 00 46 00 46 44 ff 00 44 00 00 ff 00 00 44 00 46 44 53 00 46 ff 00 00 46 00 00 00 44 00 ff 00 44 00 00 00 00 00 00 ff 00 00 00 00 ff 00 ff 00 00 46 ff 00 ff 00 00 44 46 44 00 ff 00 44 ff 00 46 53 00 00 ff 00 ff 00 00 ff 00 ff 00 00 ff 00 01 00 ff 00 00 00 00 ff 00 49 00 00 ff 00 46 44 00 00 46 00 00 44 46 44 00 ff 00 46 00 00 00 ff 00 00 00 49 00 46 00 ff 00 ff 00 00 44 ff 00 ff 00 00 00 00 46 53 00 00 ff 00 ff 00 46 00 00 00 00 00 44 44 ff 00 ff 00 01 46 44 44 00 00 44 00 44 44 ff 00 00 00 ff 00 ff 00 00 00 49 00 00 00 00 46 44 ff 00 ff 00 44 00 44 44 44 53 00 00 46 00 ff 00 00 ff 00 00 00 46 00 44 53 44 00 ff 00 00 00 ff 00 00 44 00 ff 00 00 53 00 ff 00 00 46 ff 00 00 00 00 00 44 00 00 00 00 46 00 00 00 00 00 44 53 00 44 53 00 ff 00 00 44 44 00 00 46 44 00 00 53 00 00 46 00 ff 00 ff 00 ff 00 44 00 ff 00 00 00 44 44 53 00 00 ff 00 00 01 00 00 00 44 44 44 44 53 00 ff 00 00 00 44 44 ff 00 00 00 46 00 00 00 00 00 00 44 00 00 00 44 44 53 00 44 44 00 00 00 ff 00 00 44 53 00 00 00 00 49 00 46 44 46 ff 00 00 46 46 00 00 ff 00 00 44 00 44 53 00 00 00 00 46 00 ff 00 00 00 00 00 ff 00 00 00 00 46 46 44 46 44 49 00 ff 00 00 46 00 00 44 44 ff 00 53 00 00 ff 00 44 46 ff 00 49 00 00 00 00 00 ff 00 49 00 00 46 00 00 ff 00 00 44 ff 00 00 00 00 00 00 00 00 00 44 00 00 00 ff 00 00 46 00 00 44 44 44 ff 00 00 00 44 44 46 ff 00 00 ff 00 00 ff 00 00 44 00 ff
*/
