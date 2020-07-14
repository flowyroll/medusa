.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r8
push %rdx
push %rsi
lea addresses_normal_ht+0x38a2, %r14
sub %r12, %r12
mov (%r14), %rdx
nop
nop
cmp %rdx, %rdx
lea addresses_D_ht+0x1746a, %r8
inc %r14
mov (%r8), %r11w
nop
xor %r14, %r14
lea addresses_D_ht+0x15ba2, %rsi
nop
dec %r13
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0x1db02, %r14
nop
nop
nop
nop
dec %r12
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rdx
nop
nop
nop
nop
nop
xor $39851, %r13
lea addresses_D_ht+0xd822, %r12
nop
nop
nop
nop
nop
add $31152, %r8
movl $0x61626364, (%r12)
nop
lfence
lea addresses_WC_ht+0x12a84, %r12
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rbp
push %rdx

// Faulty Load
lea addresses_US+0x90a2, %rax
clflush (%rax)
nop
nop
nop
sub %r15, %r15
vmovups (%rax), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'45': 1}
45
*/
