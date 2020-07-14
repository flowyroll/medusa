.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1adb4, %r13
nop
dec %r8
mov $0x6162636465666768, %rsi
movq %rsi, (%r13)
nop
dec %r11
lea addresses_WT_ht+0x17db4, %rdx
clflush (%rdx)
nop
sub %r11, %r11
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rbx
dec %r11
lea addresses_A_ht+0x12fec, %rsi
lea addresses_D_ht+0xdfee, %rdi
nop
nop
nop
nop
sub $5435, %r13
mov $86, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xe8b4, %rdx
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rdi
movq %rdi, (%rdx)
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x121b4, %r13
nop
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %r13
vmovntdqa (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
dec %rbx
lea addresses_UC_ht+0x4934, %rsi
lea addresses_normal_ht+0x15f3c, %rdi
nop
nop
nop
nop
inc %r13
mov $111, %rcx
rep movsb
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x16026, %rsi
lea addresses_A+0x15b34, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $121, %rcx
rep movsq
cmp $52171, %rdi

// Load
mov $0x1b4, %rbx
nop
nop
nop
nop
cmp %rbp, %rbp
movntdqa (%rbx), %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
nop
nop
sub $20673, %rbp

// Faulty Load
lea addresses_D+0x159b4, %rbx
nop
nop
nop
nop
xor $8064, %r12
vmovntdqa (%rbx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'36': 1710, '33': 1, '45': 84, '47': 1, '00': 10}
47 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 33 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 45 36 36 00 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 45 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 45 45 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 45 36 36 45 45 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 00 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 00 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 45 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
