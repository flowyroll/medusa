.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19155, %r10
nop
nop
nop
nop
add $13428, %rbx
movw $0x6162, (%r10)
cmp %r15, %r15
lea addresses_WT_ht+0x3fe7, %r9
and $17224, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
dec %r10
lea addresses_normal_ht+0x133e7, %r9
nop
nop
nop
nop
nop
dec %r11
vmovups (%r9), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
and %rbx, %rbx
lea addresses_normal_ht+0x1c707, %r9
xor $20451, %r13
movw $0x6162, (%r9)
add %r13, %r13
lea addresses_WC_ht+0xdfa5, %r13
nop
sub $60878, %rcx
mov (%r13), %r10w
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1d7a7, %rsi
lea addresses_D_ht+0x18107, %rdi
nop
cmp $39552, %r13
mov $90, %rcx
rep movsw
nop
nop
add %r11, %r11
lea addresses_A_ht+0xc12f, %rsi
lea addresses_WT_ht+0x711f, %rdi
clflush (%rdi)
nop
nop
sub $62549, %rbx
mov $124, %rcx
rep movsl
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0xaee7, %rsi
lea addresses_A_ht+0xa367, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $105, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x3367, %r9
nop
nop
add %r11, %r11
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
and $0xffffffffffffffc0, %r9
vmovntdq %ymm7, (%r9)
nop
nop
and $51253, %r10
lea addresses_A_ht+0x1d1c7, %rsi
lea addresses_WT_ht+0xc907, %rdi
cmp %r11, %r11
mov $0, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_normal_ht+0x6713, %r13
nop
nop
and $56767, %rsi
movl $0x61626364, (%r13)
nop
and $796, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x17fe7, %rsi
lea addresses_D+0x37a9, %rdi
add $30624, %r8
mov $110, %rcx
rep movsl
nop
nop
nop
nop
sub $21339, %r8

// Store
mov $0xc67, %rcx
nop
nop
nop
nop
nop
sub $35464, %rdx
movl $0x51525354, (%rcx)
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x67e7, %rcx
nop
nop
and %rdi, %rdi
movb (%rcx), %r8b
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 35, '00': 16945, 'ff': 1, '35': 4848}
00 35 00 00 00 35 00 00 00 00 35 00 00 00 35 35 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 35 00 35 00 35 00 00 00 35 00 00 00 00 00 35 00 35 00 00 35 00 00 00 00 00 00 00 35 00 35 00 00 35 35 35 00 00 00 00 35 00 00 00 00 00 35 00 35 00 00 00 00 46 00 00 00 35 00 00 35 00 00 35 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 35 00 35 00 00 00 00 00 00 00 00 00 00 35 00 35 00 00 00 00 00 35 00 00 35 00 00 00 35 00 00 00 00 00 35 35 00 00 00 00 00 00 00 00 00 00 35 00 35 00 00 00 35 35 00 00 00 00 00 35 00 35 00 00 35 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 35 35 00 35 35 35 00 35 35 00 35 00 35 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 35 00 00 35 00 00 35 35 00 35 35 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 35 35 00 35 00 00 00 00 00 35 00 00 00 00 00 00 35 00 00 00 35 00 00 00 00 35 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 46 00 35 00 00 00 35 00 35 00 00 35 00 35 35 00 35 00 00 00 00 00 35 35 00 35 35 35 35 35 35 00 00 35 00 00 00 00 35 35 00 00 00 00 46 00 35 35 35 00 35 35 00 35 35 35 00 35 00 00 00 00 00 00 00 00 00 35 35 00 35 00 00 35 00 35 00 00 00 00 00 35 00 00 00 00 00 00 00 35 35 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 35 00 00 00 35 35 00 00 35 00 00 00 00 00 35 00 35 35 00 00 00 35 00 35 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 35 35 35 35 00 00 35 35 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 35 00 00 35 00 00 00 46 00 35 00 00 00 35 00 35 00 00 35 00 00 00 00 35 35 35 00 00 00 35 00 00 00 35 00 00 00 00 00 00 35 35 35 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 35 00 35 00 00 00 35 00 00 00 00 00 00 00 00 00 00 35 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 35 35 00 00 35 00 00 00 00 35 00 00 00 00 00 35 35 35 00 35 00 35 00 00 00 35 35 00 00 35 00 00 00 00 35 00 35 00 00 00 35 00 00 35 00 00 00 00 35 00 35 00 00 00 35 00 00 00 00 35 00 35 35 00 00 00 00 00 00 35 35 35 35 35 35 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 35 35 00 35 00 00 35 00 35 35 00 00 00 00 00 00 00 35 00 00 00 00 00 35 35 00 00 00 00 00 35 00 00 00 00 00 00 00 00 35 00 00 00 00 00 35 00 35 00 00 35 00 35 35 35 00 00 00 35 00 00 00 00 00 00 35 35 35 00 00 35 35 00 00 00 00 00 00 00 00 35 00 00 00 00 00 00 35 00 35 00 00 00 00 00 00 35 00 00 00 00 35 00 35 00 35 00 00 00 35 00 00 00 00 00 35 35 00 00 35 00 35 35 00 00 00 00 35 35 00 00 35 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 35 00 35 00 00 00 00 00 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 35 00 00 00 00 00 00 00 00 35 00 00 00 35 35 00 35 35 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 35 00 00 00 00 35 35 35 00 00 00 00 00 00 00 35 35 35 35 35 00 00 00 35 00 00 00 00 35 00 35
*/
