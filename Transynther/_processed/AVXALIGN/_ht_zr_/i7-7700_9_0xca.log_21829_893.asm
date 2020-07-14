.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x14839, %r15
nop
nop
nop
nop
nop
inc %r13
vmovups (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0xceb9, %rsi
lea addresses_D_ht+0x1d8b9, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $45680, %r15
mov $56, %rcx
rep movsb
nop
and $42758, %r15
lea addresses_WC_ht+0x10139, %rsi
nop
nop
xor %r8, %r8
movb (%rsi), %cl
nop
nop
nop
nop
cmp $19098, %r15
lea addresses_WT_ht+0x48b9, %rsi
lea addresses_A_ht+0x19c39, %rdi
nop
nop
nop
nop
sub $47469, %r12
mov $42, %rcx
rep movsw
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xfb9, %rcx
nop
nop
nop
add $54994, %rdi
mov (%rcx), %r15
nop
nop
nop
nop
nop
cmp $15806, %r15
lea addresses_A_ht+0x3649, %rsi
lea addresses_normal_ht+0x5fcd, %rdi
xor %rax, %rax
mov $105, %rcx
rep movsb
nop
nop
xor $53384, %r15
lea addresses_UC_ht+0x1dd61, %r12
nop
nop
nop
nop
nop
add $8783, %rsi
movw $0x6162, (%r12)
nop
nop
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rsi

// Store
lea addresses_UC+0x1e259, %rsi
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovntdq %ymm5, (%rsi)
nop
nop
nop
nop
add $22689, %r12

// Store
lea addresses_UC+0x1bc39, %rbx
nop
add $23964, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
add $41846, %r9

// Faulty Load
lea addresses_WT+0x17839, %r11
nop
nop
nop
nop
and $2866, %r14
movntdqa (%r11), %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'46': 1, '45': 6381, '48': 4779, '00': 9133, '49': 1535}
00 48 00 00 48 00 45 48 45 48 00 45 45 00 00 49 48 00 00 00 00 00 00 00 48 45 00 45 45 48 45 45 00 45 49 45 45 00 49 00 49 00 48 48 00 00 48 45 00 00 00 45 48 45 49 45 45 45 48 00 00 45 49 45 00 48 00 00 45 00 00 00 45 49 00 00 00 48 00 00 00 45 48 00 45 45 00 00 00 00 45 48 45 45 48 45 00 48 45 00 45 00 00 00 49 48 00 00 45 45 00 00 48 49 48 00 45 48 48 45 00 00 45 00 00 45 48 45 48 00 00 45 48 49 00 45 00 49 48 45 00 00 00 48 45 48 45 45 00 45 45 45 00 00 00 45 49 00 00 00 00 45 00 00 00 49 00 00 45 45 00 48 45 48 00 00 00 45 48 00 45 48 00 45 00 45 00 48 00 00 00 00 49 48 45 48 45 48 45 48 45 00 49 00 48 45 48 00 00 00 45 00 00 48 00 45 45 48 00 45 00 00 48 49 00 45 00 48 00 48 00 00 00 45 49 45 45 00 49 48 48 00 00 00 45 00 00 45 45 45 48 49 00 00 48 45 00 00 48 45 48 00 00 49 48 45 00 45 00 00 45 00 00 45 00 48 00 45 48 00 00 48 45 45 45 48 45 00 45 00 45 48 00 48 45 48 49 45 00 00 00 48 00 00 45 00 48 45 45 00 48 00 45 00 00 00 45 48 45 48 45 45 45 45 00 00 49 48 45 48 45 00 00 45 45 48 45 48 00 49 00 00 45 00 48 45 48 45 00 48 00 00 48 00 45 00 48 45 48 45 45 00 48 00 45 48 00 00 49 48 00 00 00 45 00 48 00 00 45 00 00 45 00 49 45 48 45 48 45 48 00 45 45 00 45 00 45 45 48 45 49 00 00 48 00 48 48 45 00 45 48 49 48 00 48 45 00 45 48 49 45 45 45 00 48 00 48 45 48 00 45 48 00 00 45 00 00 00 00 00 00 00 48 49 00 00 00 48 00 00 00 00 00 00 45 00 45 00 00 45 48 48 00 48 00 49 48 45 49 45 49 48 00 49 00 45 00 45 48 45 48 00 48 45 00 45 00 00 00 00 45 45 48 00 48 00 45 49 48 48 49 49 45 49 45 00 45 45 45 45 00 48 00 00 48 45 00 45 48 45 48 45 45 48 00 00 00 45 45 48 00 00 45 45 45 48 45 45 48 00 45 00 00 45 45 48 45 48 00 00 00 00 49 48 00 49 00 00 45 48 00 45 45 00 48 00 45 45 45 48 00 00 49 00 45 48 45 00 48 45 48 00 00 00 00 00 00 48 00 00 45 48 00 00 49 48 48 00 00 00 48 45 45 45 48 45 48 45 00 45 49 45 45 00 00 00 49 00 00 00 45 00 48 45 48 48 45 48 45 45 48 45 00 00 45 48 45 48 45 45 00 49 48 00 49 00 00 45 48 00 45 48 00 45 00 48 48 45 00 00 48 00 00 45 45 48 45 48 48 45 45 48 45 45 45 00 45 00 00 00 00 48 45 00 48 45 48 45 48 00 00 48 00 45 48 45 45 45 45 00 49 00 45 00 45 48 45 45 45 00 45 00 00 00 48 45 45 45 00 49 00 45 48 00 48 45 48 00 00 45 45 49 00 00 00 00 48 45 00 00 00 48 48 45 00 00 00 00 45 00 49 48 45 48 00 45 48 45 48 49 00 00 00 45 45 45 45 45 00 00 48 45 45 45 45 00 00 45 49 00 45 00 00 48 45 45 00 00 00 00 48 45 00 00 48 48 00 00 00 48 49 00 45 00 45 45 49 00 49 00 00 48 00 00 45 00 48 45 00 00 45 48 45 00 48 48 49 00 48 49 00 45 48 00 00 00 00 48 45 45 45 45 00 00 00 00 45 45 00 00 00 48 00 48 45 48 00 45 48 00 45 00 48 45 48 00 45 48 45 00 00 00 48 00 48 45 00 48 00 00 00 00 48 00 48 45 00 48 00 00 48 00 00 49 48 45 45 00 48 49 00 49 00 49 00 00 49 48 00 00 00 00 00 45 48 00 00 45 48 48 00 48 00 45 00 00 00 45 00 48 00 48 00 45 48 00 48 00 00 00 45 48 45 45 00 45 45 48 45 45 00 48 45 00 00 00 49 00 00 00 00 00 45 48 45 48 48 45 00 00 45 00 45 00 00 00 45 45 45 45 45 48 45 00 49 00 49 00 48 00 00 45 45 00 48 00 48 48 00 00
*/
