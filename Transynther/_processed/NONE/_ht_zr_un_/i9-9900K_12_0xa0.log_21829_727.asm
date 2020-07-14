.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1d741, %r11
nop
nop
nop
nop
nop
dec %rdx
movb $0x61, (%r11)
nop
nop
nop
nop
nop
sub $39691, %r13
lea addresses_UC_ht+0xb601, %rsi
lea addresses_WT_ht+0x901, %rdi
xor %r8, %r8
mov $24, %rcx
rep movsq
cmp %r11, %r11
lea addresses_D_ht+0x1801, %rcx
nop
nop
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $34687, %rcx
lea addresses_WC_ht+0x240b, %rsi
lea addresses_D_ht+0x18e01, %rdi
nop
nop
nop
nop
add $36621, %rbp
mov $13, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x18cc1, %rcx
dec %rsi
mov $0x6162636465666768, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0x3e01, %rdx
nop
nop
sub $37436, %r11
mov (%rdx), %si
inc %r13
lea addresses_normal_ht+0x8621, %rsi
lea addresses_D_ht+0xb37d, %rdi
nop
nop
nop
and %r11, %r11
mov $82, %rcx
rep movsw
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0x79a9, %rsi
nop
nop
nop
nop
and %r13, %r13
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add $28648, %r8

// Store
lea addresses_normal+0x401, %rsi
nop
nop
nop
add $52621, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
and $15259, %r8

// Store
lea addresses_WT+0x132d1, %rsi
cmp $9517, %r8
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_normal+0x1e01, %r8
nop
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r8)
nop
nop
add $16495, %r12

// Store
mov $0x491, %rdx
nop
nop
nop
nop
xor %rbx, %rbx
movb $0x51, (%rdx)
and %r8, %r8

// Faulty Load
lea addresses_WT+0x1de01, %r8
add %r13, %r13
movups (%r8), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'44': 7725, '48': 10, '25': 236, '00': 13809, '08': 2, '0b': 16, '6c': 1, 'ff': 30}
00 6c 00 00 00 00 00 44 00 00 00 44 44 00 44 00 44 00 44 00 00 44 00 00 00 00 00 44 00 00 44 00 00 44 00 44 44 44 44 44 00 44 00 00 00 00 44 25 00 00 00 00 00 00 44 00 00 44 00 44 00 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 44 00 00 44 00 00 44 00 44 44 00 44 44 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 00 00 25 00 44 44 44 00 00 44 00 00 44 00 44 00 00 44 44 44 00 00 00 00 00 00 00 44 44 44 00 44 00 44 00 44 25 44 00 44 00 00 00 00 00 44 00 00 00 00 44 44 00 00 00 44 44 00 00 44 00 00 44 00 00 25 44 44 00 00 00 00 00 44 44 00 44 00 00 00 25 00 00 44 44 00 44 00 44 00 00 00 00 44 00 00 00 44 44 00 44 00 00 00 00 00 00 00 25 00 00 44 00 00 00 00 00 44 00 44 25 44 44 44 44 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 44 00 00 00 44 00 44 00 44 44 44 00 00 00 00 44 00 00 44 00 44 00 44 00 44 00 44 00 00 00 00 00 44 00 44 00 44 00 44 44 44 44 00 44 00 44 44 00 00 00 00 00 44 44 25 00 44 44 00 44 00 00 44 00 00 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 00 00 00 44 00 44 00 00 44 00 00 00 44 44 00 44 00 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 44 00 44 00 44 00 00 00 44 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 00 44 44 00 44 00 00 00 44 00 44 44 00 00 25 44 00 00 00 00 44 00 00 00 44 44 00 44 44 00 00 00 44 44 00 25 44 44 00 00 44 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 44 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 44 44 44 44 00 00 00 44 44 00 00 00 00 44 00 00 44 00 44 00 00 00 44 44 44 00 00 00 44 00 00 00 00 00 44 44 44 44 00 00 00 44 00 44 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 44 00 00 44 44 00 00 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 44 25 00 00 00 00 00 00 00 44 44 00 00 44 00 00 44 44 44 44 44 00 44 44 44 00 00 44 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 44 00 44 44 00 00 00 44 44 44 44 44 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 25 44 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 00 44 00 00 44 44 00 00 44 00 44 00 44 44 00 44 44 00 00 44 44 00 00 00 00 00 44 44 44 00 00 44 00 44 00 00 44 00 44 44 00 44 44 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 44 44 00 00 00 44 00 00 44 00 00 44 00 44 44 00 00 44 00 00 00 44 44 44 44 00 00 00 44 00 00 00 00 00 00 44 00 44 44 44 00 00 00 44 44 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 44 00 00 00 44 00 00 00 44 44 00 00 00 00 44 00 44 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 44 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 ff 00 44 00 00 44 44 44 44 25 44 00 00 00 00 44 44 00 44 00 44 44 00 00 00 44 00 00 00 44 00 00 44 00 44 00 44 00 00 00 44 00 44 00 00 44 44 00 00 44 44 00 00 00 44 00 00 44 00 44 44 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 44 00 00 44 00
*/
