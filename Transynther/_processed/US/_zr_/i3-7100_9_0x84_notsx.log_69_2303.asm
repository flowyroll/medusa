.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1d113, %r9
sub %r13, %r13
movups (%r9), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x1e213, %rsi
lea addresses_D_ht+0xc13, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $16, %rcx
rep movsw
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x1c413, %rax
clflush (%rax)
nop
nop
nop
nop
sub %rcx, %rcx
mov (%rax), %r9d
nop
nop
dec %rsi
lea addresses_WT_ht+0x831e, %rsi
lea addresses_D_ht+0x19213, %rdi
clflush (%rsi)
nop
sub %r8, %r8
mov $99, %rcx
rep movsl
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_UC_ht+0x1209b, %rsi
lea addresses_WC_ht+0x13a13, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $26, %rcx
rep movsl
mfence
lea addresses_WT_ht+0x18a13, %rsi
nop
nop
inc %rdi
movb (%rsi), %dl
sub %rdx, %rdx
lea addresses_D_ht+0x4e13, %rsi
lea addresses_A_ht+0x8f13, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $1300, %rax
mov $12, %rcx
rep movsw
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xc613, %r8
nop
cmp %r9, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r8
movntdq %xmm7, (%r8)
cmp %rax, %rax
lea addresses_normal_ht+0xb513, %rsi
lea addresses_WT_ht+0x11813, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $45, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x141d3, %rdx
nop
nop
nop
nop
sub $65462, %rcx
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
sub %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x153df, %rsi
lea addresses_WT+0x1f323, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $87, %rcx
rep movsw
and $8893, %rax

// Store
lea addresses_UC+0x10f03, %rax
nop
nop
nop
nop
nop
xor $11568, %r12
movb $0x51, (%rax)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_A+0x1ed13, %r15
nop
nop
add $14914, %r11
movl $0x51525354, (%r15)
nop
nop
and $13365, %r15

// Load
lea addresses_PSE+0x178f9, %r11
inc %r15
movb (%r11), %r12b
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x14213, %r15
nop
nop
nop
inc %rdi
mov (%r15), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 69}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
