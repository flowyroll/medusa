.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xfa08, %r13
nop
nop
inc %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add $21387, %rcx
lea addresses_D_ht+0xe608, %r9
nop
sub $51368, %r10
movl $0x61626364, (%r9)
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x8c08, %rsi
lea addresses_UC_ht+0x11588, %rdi
nop
nop
nop
cmp %r13, %r13
mov $7, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x5a08, %rdi
nop
nop
nop
nop
sub $48831, %rsi
movb (%rdi), %r11b
nop
nop
nop
xor %r9, %r9
lea addresses_normal_ht+0x18168, %rsi
lea addresses_UC_ht+0x6f38, %rdi
nop
nop
nop
xor %r8, %r8
mov $62, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x178d4, %r11
clflush (%r11)
nop
nop
nop
nop
nop
sub $10553, %r9
movb (%r11), %cl
nop
nop
nop
cmp $48555, %rdi
lea addresses_UC_ht+0xc7df, %r9
nop
dec %rdi
mov (%r9), %rsi
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x108f4, %rsi
lea addresses_normal_ht+0xe46, %rdi
clflush (%rsi)
cmp $44935, %r10
mov $65, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $9445, %r11
lea addresses_UC_ht+0x13208, %rsi
lea addresses_WC_ht+0x14744, %rdi
nop
nop
nop
nop
nop
sub $19574, %r8
mov $14, %rcx
rep movsw
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x1bbc4, %r9
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r9)
nop
and %r13, %r13
lea addresses_normal_ht+0x1e108, %rsi
lea addresses_UC_ht+0x6e08, %rdi
nop
nop
nop
add $10781, %r11
mov $42, %rcx
rep movsq
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x16208, %rsi
nop
nop
xor $19560, %r11
movw $0x5152, (%rsi)
and %r8, %r8

// Store
lea addresses_RW+0x13a08, %rbx
and $9351, %rbp
movl $0x51525354, (%rbx)
inc %rbx

// Load
lea addresses_WC+0x13760, %rbx
xor %r15, %r15
mov (%rbx), %bp
nop
nop
nop
nop
nop
add $40032, %rbx

// Faulty Load
lea addresses_WC+0x11208, %rbp
nop
nop
nop
sub %r8, %r8
vmovaps (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
lea oracles, %rsi
and $0xff, %r15
shlq $12, %r15
mov (%rsi,%r15,1), %r15
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'47': 1, '44': 2413, '74': 1, '07': 23, '73': 1, '08': 22, '60': 18, '48': 55, '7d': 1, '02': 1, '75': 1, '00': 19290, 'ff': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 44 00 00 00 44 00 44 00 00 07 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 60 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 60 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
