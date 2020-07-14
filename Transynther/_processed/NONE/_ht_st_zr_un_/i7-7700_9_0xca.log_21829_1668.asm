.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x69fa, %r9
clflush (%r9)
nop
sub %rsi, %rsi
mov (%r9), %ebp
nop
nop
nop
dec %r15
lea addresses_WC_ht+0x190fa, %r13
sub %r9, %r9
movl $0x61626364, (%r13)
nop
nop
nop
and $50119, %r15
lea addresses_normal_ht+0xdbfa, %rsi
lea addresses_WT_ht+0xa90a, %rdi
nop
nop
cmp $37455, %r13
mov $36, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_UC+0xf9fa, %rdx
nop
nop
nop
add $3235, %rdi
movups (%rdx), %xmm4
vpextrq $0, %xmm4, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}}
{'44': 4780, '00': 196, '53': 1986, '50': 20, '80': 6, '1f': 151, 'd0': 6539, 'ff': 8113, '1a': 10, '3c': 19, 'e0': 3, '90': 6}
ff ff d0 53 44 44 ff 44 ff d0 ff d0 44 44 ff d0 ff d0 44 53 ff d0 ff d0 ff d0 44 ff d0 44 ff d0 ff 44 ff d0 44 ff d0 ff d0 ff d0 44 53 ff d0 44 44 ff d0 44 00 44 53 ff 44 44 ff d0 44 ff d0 44 ff d0 44 ff d0 ff d0 ff d0 44 ff d0 53 53 53 ff d0 44 ff d0 44 44 ff d0 ff d0 44 44 ff d0 44 44 ff d0 ff d0 53 44 00 ff d0 ff d0 44 ff d0 53 ff ff d0 44 ff d0 44 ff d0 ff d0 ff d0 44 44 53 ff d0 44 ff d0 ff d0 ff d0 44 44 ff d0 53 80 ff d0 ff d0 53 ff d0 ff 44 44 ff d0 44 ff d0 ff d0 ff d0 ff d0 ff d0 ff 44 53 ff d0 ff d0 00 ff d0 ff d0 44 44 ff d0 44 ff d0 44 ff ff d0 44 ff d0 ff d0 44 44 ff d0 44 44 ff d0 44 44 44 ff d0 44 44 ff d0 44 44 ff d0 44 44 44 1f ff d0 44 ff d0 53 ff d0 ff d0 d0 ff ff d0 ff d0 ff d0 ff d0 53 44 44 44 ff d0 ff ff ff 44 ff 44 44 ff d0 ff d0 44 44 1f ff d0 ff d0 ff d0 00 ff d0 44 ff d0 ff d0 00 ff d0 ff d0 44 ff d0 53 ff d0 53 ff d0 53 ff d0 ff d0 ff d0 ff d0 53 ff d0 53 ff d0 44 44 44 ff d0 53 ff d0 44 44 53 ff d0 53 ff d0 ff d0 ff d0 ff d0 44 44 53 ff d0 ff ff d0 44 53 44 ff d0 44 ff d0 1f 00 44 ff d0 44 44 ff d0 ff 1f ff d0 44 44 ff 53 ff d0 ff d0 ff d0 44 44 44 44 ff d0 ff d0 44 ff d0 ff d0 ff d0 ff d0 44 ff d0 44 44 53 ff d0 44 44 44 44 53 53 53 53 ff d0 ff d0 44 ff d0 44 53 53 ff d0 44 44 ff d0 53 ff d0 ff d0 ff d0 44 44 ff d0 44 ff 44 53 44 ff ff d0 44 44 44 ff d0 44 53 ff d0 ff d0 ff d0 ff d0 44 ff d0 44 53 53 53 53 ff d0 ff ff d0 53 44 ff d0 ff d0 ff d0 53 53 ff d0 ff d0 ff d0 ff d0 44 44 ff d0 44 ff d0 ff d0 ff d0 ff d0 44 ff 44 00 ff d0 ff d0 ff d0 ff d0 ff d0 ff d0 44 ff d0 ff d0 ff d0 ff d0 44 53 ff d0 44 ff d0 44 44 ff d0 ff d0 53 ff d0 00 ff d0 44 ff d0 44 44 ff d0 44 44 ff d0 44 44 ff d0 ff d0 44 44 44 ff d0 ff d0 44 44 44 ff d0 44 44 44 ff d0 44 53 ff d0 44 ff d0 53 ff d0 44 ff d0 53 44 ff d0 44 ff d0 ff d0 ff d0 53 ff d0 44 44 53 ff d0 ff d0 44 53 53 ff d0 44 ff d0 ff d0 ff d0 d0 ff d0 44 ff ff d0 53 ff d0 ff d0 44 ff d0 ff d0 44 ff d0 ff ff d0 ff d0 ff d0 44 44 44 44 ff d0 ff d0 ff d0 1f ff d0 44 53 44 00 44 ff d0 44 53 ff d0 ff d0 ff d0 44 ff d0 53 ff d0 ff d0 44 53 44 44 ff d0 ff ff d0 53 44 53 ff d0 53 ff ff d0 53 ff d0 44 44 ff 44 44 44 ff d0 ff d0 44 ff d0 44 44 ff d0 ff d0 44 ff d0 ff d0 53 ff d0 ff d0 44 ff ff d0 ff d0 ff ff d0 ff d0 53 53 ff d0 ff d0 ff d0 ff d0 ff d0 44 ff d0 53 90 ff d0 44 ff d0 44 53 ff d0 44 ff d0 1f ff d0 ff d0 44 ff d0 ff d0 ff d0 ff d0 53 ff d0 44 ff d0 ff d0 44 53 ff d0 53 ff d0 ff d0 53 ff d0 ff d0 ff d0 44 44 53 ff d0 44 ff 00 ff d0 44 ff d0 44 53 ff d0 ff d0 ff d0 44 ff d0 ff 44 44 ff d0 44 ff d0 44 ff d0 53 ff d0 ff d0 ff d0 00 44 ff d0 ff d0 ff d0 44 44 ff ff d0 44 44 44 ff d0 44 53 44 53 ff d0 1f 44 ff d0 44 53 44 44 44 ff d0 00 44 44 44 ff d0 44 ff d0 ff d0 44 ff d0 44 ff d0 ff d0 90 44 44 ff d0 44 ff d0 ff d0 44 ff d0 ff ff d0 44 ff d0 44 ff d0 44 53 ff d0 53 53 44 00 1f ff d0 53 44 ff d0 ff ff ff 44 44 44 44 44 ff d0 ff d0 44 ff 44 44 44 44 53 3c ff d0 44 ff d0 44 44 44 ff d0 ff d0 ff d0 ff d0 44 44 ff d0 44 44 44 ff d0 44 44 ff 44 1a ff d0 ff d0 44 ff d0 ff d0 44 ff d0 44
*/
