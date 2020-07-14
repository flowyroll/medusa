.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd70f, %rsi
lea addresses_UC_ht+0x103bf, %rdi
nop
nop
nop
sub %r13, %r13
mov $6, %rcx
rep movsl
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x93bf, %rbx
nop
nop
nop
and $24889, %r8
mov (%rbx), %cx
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x7597, %rsi
lea addresses_normal_ht+0x19bbf, %rdi
nop
nop
nop
nop
and $48979, %r15
mov $123, %rcx
rep movsq
nop
nop
nop
nop
cmp $59082, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xd6a9, %rsi
nop
nop
nop
nop
nop
sub $38983, %r15
movb $0x51, (%rsi)
nop
dec %r13

// Store
lea addresses_normal+0x528f, %rdx
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%rdx)
nop
add $7442, %rdi

// Store
lea addresses_A+0x15896, %rdi
nop
nop
nop
nop
cmp $5853, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_US+0x43bf, %rcx
nop
xor %rdx, %rdx
mov (%rcx), %r13w
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'46': 1, '48': 1681, '47': 5714, '00': 5622, 'ff': 7062, '53': 1371, '49': 378}
ff ff 00 00 49 47 ff 53 47 ff 00 00 00 00 ff 53 47 47 47 47 47 47 00 00 00 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 ff ff ff ff ff 00 ff 00 ff ff ff ff ff ff ff 00 00 ff ff 00 ff 00 00 ff ff 48 00 00 53 47 53 47 47 53 47 47 47 47 00 48 53 47 47 47 47 47 47 47 00 ff ff 00 53 ff 48 00 00 48 ff ff ff 48 ff ff 00 00 ff ff ff ff 00 ff 53 47 47 47 47 47 47 47 48 53 47 47 00 ff ff 53 ff 53 47 00 ff ff 00 00 48 ff ff ff 00 48 ff ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff 00 00 ff ff ff 00 00 ff ff 00 00 ff 48 ff ff 00 ff ff 00 47 47 47 ff 48 00 00 00 48 ff 47 47 47 47 47 47 47 47 ff 00 00 00 ff ff ff ff ff 48 48 00 00 ff 48 ff ff ff 48 ff 00 00 ff ff 00 ff ff 00 ff 00 ff 00 53 47 47 47 47 47 47 47 49 47 53 00 ff 53 47 47 47 48 ff ff ff ff 00 48 53 47 47 47 47 47 47 47 47 53 47 00 00 48 ff ff 48 48 ff ff ff 49 47 47 47 48 ff 00 ff 00 48 00 00 48 ff ff ff 00 ff ff 00 ff 00 00 00 00 00 48 00 ff 00 53 00 00 00 00 ff ff ff ff ff ff 00 ff 00 00 ff 48 ff ff 00 ff ff 48 ff 00 ff 00 53 47 47 47 47 47 47 47 47 47 00 ff 00 00 00 ff 00 00 ff 00 00 ff 00 ff ff ff 00 00 00 53 47 47 47 ff 00 ff ff 00 ff 00 ff 53 47 47 47 47 47 47 47 47 47 47 47 47 47 ff ff ff 53 00 ff 49 ff ff 00 47 ff ff 00 00 00 00 ff 53 47 ff 00 ff 00 ff 00 48 00 00 00 ff ff ff 00 ff ff 00 00 ff ff 00 00 ff ff 00 ff ff 00 00 ff 48 47 47 47 47 47 47 47 47 47 47 47 47 47 47 ff 00 ff 00 ff 00 00 00 48 00 00 ff ff 48 00 00 ff 00 53 00 00 ff ff 00 00 48 ff 48 ff 00 ff ff 00 ff ff ff 00 ff 53 ff ff ff 00 47 47 ff ff 48 ff ff 00 ff 00 ff ff ff 00 00 ff 00 ff ff 00 00 ff 48 00 00 ff ff ff 48 00 ff 00 00 ff 48 ff ff ff ff ff ff ff ff 00 00 ff 47 47 47 47 ff ff ff 48 48 ff ff 00 ff ff 00 00 00 48 00 ff ff ff 00 53 47 47 00 ff 48 ff 00 ff ff 48 53 ff ff ff 00 00 ff ff 49 47 47 48 ff ff 00 ff ff 00 53 47 47 47 47 47 47 47 47 47 47 47 47 53 47 47 47 00 ff 48 53 ff 53 47 47 ff 00 00 ff 00 49 47 48 00 53 47 47 47 47 47 47 00 49 47 47 47 47 47 47 ff 48 49 00 48 00 00 ff ff 49 47 00 00 53 47 00 ff 53 47 47 ff 00 ff ff 53 47 47 ff 48 49 00 00 ff 00 00 ff ff ff ff ff ff ff 48 00 00 ff ff ff 00 00 00 53 47 ff 48 53 47 47 47 47 47 47 47 47 ff ff ff 53 47 47 47 00 47 47 00 48 ff ff ff ff ff 53 47 47 47 47 00 ff ff 00 00 ff ff 00 48 ff 00 53 47 ff 00 48 48 ff 00 ff ff ff 48 00 00 48 ff 48 00 48 ff 48 00 00 47 53 47 47 47 47 47 53 47 00 ff 53 00 00 ff ff 00 00 ff 00 53 47 47 00 ff 00 ff 48 ff 48 00 53 47 47 47 ff 00 00 ff ff 00 ff ff 00 00 00 ff 00 00 48 00 00 ff 00 ff ff 00 ff 00 00 00 48 00 ff 00 ff 00 ff 48 ff 49 47 47 47 47 47 00 ff ff ff 00 ff ff 53 47 47 47 47 47 47 ff 00 ff 49 47 47 47 49 47 47 47 47 47 00 00 ff ff 00 00 ff 00 ff 00 ff ff ff 00 00 47 47 ff 53 47 47 47 ff 00 00 ff ff 00 00 00 48 ff 48 48 ff 00 ff 48 00 00 49 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 47 00 48 00 00 ff 48 ff 48 ff 00 00 00 53 ff 48 00 ff 00 ff 00 ff ff ff 00 ff ff 49 00 ff 00 48 49 47 47 47 47 ff 53 47 47 47 47 53 48 ff 48 00 ff 00 ff ff ff ff ff ff 48 00 47 47 47 ff 00 53 48
*/
