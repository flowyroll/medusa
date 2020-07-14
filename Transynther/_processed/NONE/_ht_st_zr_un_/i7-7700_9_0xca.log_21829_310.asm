.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bb7e, %rcx
nop
nop
sub %rbx, %rbx
mov (%rcx), %ax
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x192fe, %r13
nop
sub $33639, %r8
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
cmp $23887, %rbx
lea addresses_WT_ht+0x15afe, %rsi
clflush (%rsi)
nop
nop
nop
cmp %r14, %r14
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rax
nop
nop
inc %r13
lea addresses_A_ht+0x167fe, %rsi
lea addresses_A_ht+0x164fe, %rdi
dec %r14
mov $92, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_D_ht+0xc002, %r14
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1ecfe, %rsi
nop
nop
nop
add %r13, %r13
movw $0x6162, (%rsi)
nop
nop
xor %rax, %rax
lea addresses_D_ht+0xed0e, %r14
nop
nop
nop
nop
inc %r8
mov (%r14), %r13w
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WC_ht+0x1ccfe, %rcx
sub $40313, %r8
mov (%rcx), %rsi
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x1ef36, %r8
nop
nop
cmp $63236, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x78fe, %rbx
nop
nop
nop
cmp $38836, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rbx)
nop
nop
nop
nop
nop
and $40962, %rdi
lea addresses_UC_ht+0xe1be, %rsi
nop
nop
add %rdi, %rdi
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
xor $26000, %r13
lea addresses_D_ht+0x169fe, %rsi
lea addresses_WT_ht+0x50fe, %rdi
cmp %r14, %r14
mov $93, %rcx
rep movsq
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rbx
push %rdx

// Store
lea addresses_WT+0x9de, %r15
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r15)
nop
sub $18432, %r11

// Faulty Load
lea addresses_UC+0x14cfe, %r15
add %r12, %r12
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r8
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'46': 3755, '2f': 2, '48': 456, '47': 3, '45': 516, '53': 1884, 'b1': 1, '49': 136, 'c0': 1, 'ff': 8516, '00': 579, '3c': 8, 'e0': 5972}
00 ff e0 53 53 53 45 53 ff ff ff e0 ff e0 ff ff e0 48 48 46 ff ff e0 ff e0 ff e0 ff ff e0 46 ff e0 ff e0 ff ff e0 ff e0 46 ff e0 ff ff e0 ff e0 ff e0 46 ff e0 ff ff 46 ff e0 46 46 ff e0 46 46 ff e0 46 ff e0 ff ff e0 ff e0 53 ff e0 ff e0 ff e0 46 ff e0 45 ff e0 ff e0 46 ff e0 46 ff e0 46 46 ff 46 ff e0 ff 49 53 ff e0 46 53 46 ff e0 ff e0 ff e0 ff e0 53 53 00 46 46 46 ff ff e0 46 ff e0 00 ff e0 53 53 00 ff e0 46 53 46 46 ff e0 53 ff e0 53 ff ff e0 ff e0 00 ff e0 ff e0 45 53 ff e0 46 ff e0 45 53 ff ff e0 53 ff e0 ff e0 ff e0 46 ff ff e0 53 53 53 45 ff ff 46 53 ff e0 ff 46 46 53 ff e0 ff ff e0 53 53 53 ff e0 46 53 ff e0 ff e0 ff 46 ff e0 46 ff e0 46 ff ff ff e0 00 ff e0 ff ff e0 ff ff e0 00 ff e0 46 ff ff e0 ff e0 46 46 46 46 ff e0 ff e0 46 ff e0 53 ff e0 ff 00 ff e0 ff e0 ff e0 53 46 ff e0 46 53 ff ff e0 53 ff e0 53 ff ff ff e0 53 53 ff ff 49 ff 46 46 ff e0 ff ff e0 ff ff e0 ff ff e0 45 ff e0 ff e0 46 46 46 46 46 ff 46 ff ff e0 ff ff 45 ff ff e0 53 53 ff 46 46 46 46 ff e0 ff e0 ff ff e0 ff e0 ff e0 ff e0 ff ff e0 00 53 ff ff 46 ff ff e0 ff e0 ff 46 ff e0 ff e0 46 46 46 ff e0 ff e0 ff e0 ff e0 48 ff e0 46 46 46 ff ff e0 ff e0 ff 49 53 53 ff e0 53 ff e0 ff e0 ff ff e0 ff ff ff e0 ff 00 ff 46 46 ff e0 49 53 ff e0 ff e0 ff e0 ff 48 ff e0 53 53 53 53 ff e0 46 ff e0 45 ff e0 53 45 ff e0 53 53 45 53 00 49 53 46 ff e0 46 46 ff e0 ff e0 53 46 00 46 48 ff e0 46 53 53 ff e0 ff e0 45 ff e0 53 ff ff e0 ff e0 ff ff ff ff e0 ff 46 ff ff 46 ff 46 ff e0 46 ff e0 46 ff e0 ff ff e0 ff e0 ff e0 45 ff ff ff e0 ff ff e0 45 53 53 46 ff e0 48 46 ff e0 00 46 ff e0 ff 46 ff e0 53 ff e0 00 46 53 45 53 ff e0 ff e0 ff e0 ff ff e0 ff ff 46 ff e0 00 ff e0 45 ff e0 53 53 53 ff e0 48 ff 00 45 00 ff ff e0 00 ff e0 ff 46 ff e0 46 46 46 46 ff 46 53 46 53 ff e0 ff e0 ff e0 ff e0 46 ff e0 ff e0 46 ff 46 46 ff e0 45 53 53 ff ff e0 46 46 ff ff e0 48 ff e0 ff e0 46 46 46 ff e0 ff ff ff e0 ff e0 ff ff e0 46 ff e0 48 46 ff ff e0 ff e0 ff e0 ff e0 46 ff e0 ff e0 ff ff ff e0 48 53 00 45 46 46 ff e0 ff e0 46 45 ff 00 46 53 e0 45 45 46 ff e0 ff e0 46 ff e0 53 53 00 ff e0 ff ff e0 45 53 53 ff e0 00 46 ff e0 53 ff 48 ff e0 ff 49 ff e0 45 ff ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff 46 ff e0 46 46 48 53 53 ff e0 46 ff e0 46 46 ff e0 ff 46 ff ff ff ff e0 ff e0 ff 00 ff e0 ff e0 ff e0 ff 45 ff e0 53 ff e0 53 53 45 00 ff e0 e0 ff 53 ff e0 ff e0 ff ff ff 00 46 ff e0 46 46 46 ff e0 46 ff e0 00 ff 00 ff ff ff e0 ff e0 ff 45 46 46 ff e0 ff e0 46 ff ff 46 46 46 46 46 53 46 53 ff e0 48 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff e0 ff ff e0 ff e0 ff ff ff e0 ff e0 ff ff e0 ff e0 ff e0 ff e0 ff e0 46 53 ff e0 ff 46 46 46 ff e0 ff e0 ff ff e0 ff e0 46 ff e0 53 53 53 ff e0 ff e0 ff e0 ff e0 ff 46 ff e0 ff 45 ff ff e0 53 ff 45 53 ff e0 46 ff e0 ff e0 ff e0 46 53 46 ff e0 46 46 ff e0 ff ff e0 53 53 ff e0 ff e0 ff ff ff e0 46 46 46 ff ff e0 ff e0 53 53 00 ff ff ff e0 46 ff e0 ff e0 46 48 ff e0 ff 45 46 ff e0 46 ff e0 53 ff e0 ff ff e0 ff e0 46 46 ff ff ff e0 ff e0 46 46 ff e0 46 46 ff e0 46 ff e0 ff ff e0 53
*/
