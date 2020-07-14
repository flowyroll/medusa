.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rdi
push %rdx
lea addresses_WT_ht+0xff72, %r12
nop
nop
nop
nop
add $49499, %rbx
mov (%r12), %r9d
add $35305, %rdi
lea addresses_WC_ht+0xad68, %r11
dec %rdx
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp $44426, %r12
lea addresses_WT_ht+0x4f72, %rbx
nop
nop
nop
inc %r10
movw $0x6162, (%rbx)
nop
nop
dec %rdx
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Faulty Load
lea addresses_A+0x7772, %rbp
nop
inc %rdx
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'53': 7, '49': 2, '00': 4, 'ff': 8}
ff 53 ff ff ff 00 00 53 00 49 53 ff ff ff ff 53 53 53 53 49 00
*/
