.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x188b5, %rsi
nop
nop
nop
nop
nop
xor $5308, %r11
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
nop
nop
cmp $14235, %r13
lea addresses_A_ht+0xa1c5, %rdi
nop
nop
nop
nop
nop
add $59285, %rsi
mov (%rdi), %r10d
nop
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0x165c5, %rsi
lea addresses_A_ht+0x6045, %rdi
and %rbp, %rbp
mov $40, %rcx
rep movsq
nop
inc %rbp
lea addresses_WC_ht+0xe5c5, %rsi
lea addresses_normal_ht+0x1ad04, %rdi
nop
nop
nop
nop
nop
and $51085, %rbp
mov $55, %rcx
rep movsl
nop
nop
nop
nop
xor $15474, %r13
lea addresses_WC_ht+0x2915, %r14
nop
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r14), %r10
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x13c5, %rbp
nop
and $53710, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
add $19315, %rcx
lea addresses_WT_ht+0x6619, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r13), %r10d
cmp $16500, %r14
lea addresses_UC_ht+0x13645, %rbp
nop
nop
cmp $63218, %r13
movb $0x61, (%rbp)
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1e9c5, %r14
nop
nop
nop
nop
sub $43915, %rbp
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r13
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x16846, %r13
nop
nop
nop
nop
nop
add $13447, %rbp
mov (%r13), %r11d
nop
nop
nop
and $36303, %rbp
lea addresses_A_ht+0x17ba5, %r14
nop
nop
nop
nop
nop
sub %r11, %r11
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rbp
nop
nop
nop
nop
nop
and $3625, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0xe1c5, %rsi
lea addresses_PSE+0xbea9, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $61, %rcx
rep movsl
nop
nop
cmp $59248, %rdi

// Faulty Load
lea addresses_WC+0x9c5, %r8
nop
nop
and $52364, %rsi
movups (%r8), %xmm4
vpextrq $0, %xmm4, %r9
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'00': 151}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
