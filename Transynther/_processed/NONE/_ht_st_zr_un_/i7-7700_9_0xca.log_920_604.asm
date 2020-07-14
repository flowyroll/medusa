.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
lea addresses_normal_ht+0x516a, %rdi
nop
nop
nop
add %r9, %r9
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
xor $1889, %rcx
lea addresses_A_ht+0x16772, %r8
nop
cmp $2563, %r12
mov (%r8), %eax
and %r12, %r12
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WT+0xad6a, %r8
nop
nop
cmp $47659, %r14
mov (%r8), %edx
nop
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_UC+0x11c6a, %r14
add %rbx, %rbx
movl $0x51525354, (%r14)
nop
xor %rsi, %rsi

// Store
lea addresses_PSE+0x1ba2a, %r14
nop
nop
nop
nop
and $35903, %rdx
movl $0x51525354, (%r14)
nop
nop
nop
sub $41447, %rsi

// Store
lea addresses_UC+0x1db2a, %r14
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
inc %rdx

// Faulty Load
lea addresses_WT+0x1ed6a, %rsi
nop
nop
nop
nop
nop
add $44728, %rcx
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'44': 134, '00': 15, 'ff': 261, '1a': 192, '45': 312, '3c': 6}
ff 45 1a 45 1a 45 45 45 45 45 ff ff 44 1a 1a 45 45 1a ff 1a 00 44 1a 45 45 45 1a ff 45 1a 1a 45 44 45 ff 1a ff 00 1a 45 ff ff 44 ff 44 45 44 44 ff ff 44 45 ff ff 45 ff 45 ff 1a 45 1a 44 1a 45 44 45 1a 45 45 1a 45 1a ff 1a ff 44 1a 45 44 ff 1a ff ff 45 ff 44 44 45 ff 45 44 1a ff ff 45 1a 45 44 ff ff 44 45 ff 44 ff 45 ff 44 ff ff ff 45 ff ff 44 45 44 45 ff 45 ff 1a 45 44 ff 45 44 ff 44 1a 45 44 45 44 ff 44 1a 45 44 1a 1a 45 ff 44 44 45 ff ff 45 45 45 45 44 44 ff 45 1a 45 45 45 00 44 ff 45 ff 45 1a 1a 00 ff 45 1a 44 45 1a 45 ff ff 44 45 45 1a 1a ff 45 45 44 44 44 44 1a 1a 45 45 45 45 45 45 45 1a ff ff 45 45 45 1a 1a 45 45 45 3c ff 45 45 45 45 ff 45 ff ff ff 1a 45 45 45 45 ff 45 45 45 44 ff 45 ff 45 ff 45 45 ff 44 45 45 1a 45 45 45 45 ff 44 1a ff 1a 45 ff 45 45 45 ff ff ff ff ff 44 44 1a 1a 3c ff ff ff 45 45 1a 45 ff ff 45 ff 1a ff 1a 45 45 1a 45 ff ff 45 45 45 1a 45 45 00 ff ff 45 45 45 44 1a 44 44 44 45 45 ff 45 45 45 45 1a ff 1a 45 ff ff 1a 45 ff 45 44 45 ff 1a 45 1a 45 45 1a ff ff 45 45 ff ff 1a 44 ff 44 45 1a 1a 45 45 1a 44 ff ff 1a 45 ff 1a 45 1a 44 ff ff ff ff ff 45 ff ff 1a 44 1a 45 ff 45 44 1a 44 1a ff 44 ff 1a 1a 44 45 ff ff 44 44 ff ff 45 ff ff 45 1a 1a 45 ff 45 ff 45 45 ff 44 1a 1a 44 ff 1a 45 ff ff 45 45 ff 1a 3c 44 ff 44 1a 45 45 1a ff ff 45 ff 44 45 1a 45 3c 45 45 ff 44 ff ff ff ff 1a 1a 45 45 45 45 45 1a 44 ff 45 00 ff 1a 45 ff 44 45 ff ff 45 45 3c 44 45 45 1a ff 1a ff ff ff 1a 44 44 45 44 45 45 1a ff ff 45 45 45 1a 1a 44 ff 45 ff 44 44 ff ff ff 1a ff 1a ff ff 1a ff ff 44 1a 45 45 1a 45 45 1a ff 44 45 45 45 ff ff 44 45 44 45 44 ff ff 45 ff 45 ff 00 45 1a ff 45 1a ff ff 1a ff 44 45 45 45 45 45 44 45 ff 3c ff ff 1a 1a 45 45 45 ff 45 ff ff 44 45 45 45 44 44 45 45 ff 45 45 45 44 1a 45 ff 45 1a ff 1a 1a 1a 1a ff ff 1a 45 ff 1a 1a 00 45 1a 1a 1a 45 45 45 45 45 1a 1a 45 1a 45 44 1a 45 45 45 1a 45 45 1a 1a ff 1a ff 45 ff 1a ff 1a 44 44 45 ff 45 ff 45 ff 44 1a 1a ff 45 1a ff ff ff 45 45 45 45 ff 45 44 45 44 45 1a 1a 45 1a ff ff 1a 44 44 ff 45 ff 45 ff 1a ff 45 1a 1a 45 1a 1a ff 00 45 45 1a ff 45 44 1a ff ff 45 44 45 45 ff ff 45 ff 45 44 ff ff ff 44 1a ff 44 ff 44 45 1a 45 45 1a 45 44 ff 1a 44 ff 1a ff 45 1a 1a 44 1a 45 44 ff 1a 44 44 ff 45 ff ff 1a 1a 45 ff 1a 44 ff 45 45 45 45 1a 44 ff 44 44 ff 45 1a 45 1a 45 1a ff 1a 44 1a 1a 44 44 44 ff ff 45 45 45 45 ff 1a 45 00 ff ff 44 45 45 1a ff ff ff ff 45 44 44 1a 00 45 ff 1a ff ff ff 1a 45 44 ff 44 00 1a ff ff 44 1a 00 45 1a 44 45 45 ff ff 1a 45 1a 45 ff 45 45 45 44 1a 1a ff 1a 45 45 45 ff 44 1a ff 44 1a ff 44 45 ff ff ff 44 ff 45 ff 1a ff 45 45 ff 45 45 45 45 45 00 45 1a 1a 1a ff 00 1a 45 1a 45 ff ff 1a ff 1a ff 45 44 45 1a 45 ff 44 1a 45 ff 45 ff ff 1a ff ff 45 1a 1a 45 1a 45 45 1a 44 44 45 45 1a ff ff 45 44 ff 45 45 ff ff 1a 45 44 45 ff 1a 45 1a 44 1a 1a 44 ff
*/
