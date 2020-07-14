.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1908c, %r9
nop
nop
nop
nop
nop
add %r11, %r11
movb (%r9), %al
nop
sub $62072, %r12
lea addresses_WC_ht+0x2934, %rsi
lea addresses_normal_ht+0x5543, %rdi
nop
nop
nop
dec %r15
mov $8, %rcx
rep movsq
xor %r9, %r9
lea addresses_WT_ht+0x9cb4, %rdi
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
nop
xor $56262, %rdi
lea addresses_A_ht+0x5c56, %r9
clflush (%r9)
nop
nop
nop
nop
add $22471, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm5
vmovups %ymm5, (%r9)
dec %rsi
lea addresses_WC_ht+0xbd34, %rsi
lea addresses_WC_ht+0xc534, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $52127, %r15
mov $49, %rcx
rep movsq
nop
nop
nop
nop
and $27691, %r11
lea addresses_A_ht+0xd34, %rsi
lea addresses_normal_ht+0x15734, %rdi
clflush (%rdi)
sub $6908, %rax
mov $107, %rcx
rep movsq
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1ad1a, %rsi
lea addresses_normal_ht+0x4d74, %rdi
add %rax, %rax
mov $34, %rcx
rep movsw
nop
nop
and %r9, %r9
lea addresses_WT_ht+0xbd34, %rsi
lea addresses_WT_ht+0x1d734, %rdi
add $19061, %r12
mov $102, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x9534, %rsi
lea addresses_PSE+0x5534, %rdi
nop
nop
nop
and $47825, %rbx
mov $105, %rcx
rep movsq
nop
nop
nop
nop
nop
and $34105, %r11

// Faulty Load
lea addresses_UC+0x9534, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub %r11, %r11
movaps (%rcx), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'a6': 1, '08': 2, '48': 3810, '45': 1016, '00': 8032, '49': 8961, 'ff': 7}
49 49 48 49 49 48 49 49 00 00 49 49 00 48 49 49 00 49 00 49 49 48 48 49 00 49 49 00 48 49 49 00 48 49 49 48 49 49 00 48 49 49 00 00 49 00 48 49 49 00 00 49 49 00 48 00 49 48 49 00 00 49 00 49 49 00 00 49 00 49 49 00 48 48 49 48 49 49 48 48 49 00 00 49 00 00 49 48 48 49 00 49 49 00 48 49 00 49 00 48 45 49 00 00 49 48 00 45 49 00 00 49 00 48 45 49 00 49 49 00 48 49 00 49 49 00 00 48 49 00 49 00 00 49 45 00 00 49 49 00 49 00 48 48 49 00 00 49 00 49 00 48 49 00 48 49 49 00 45 49 49 00 48 49 49 00 49 49 00 48 49 49 00 45 49 48 49 49 00 45 49 49 00 49 00 00 45 49 00 48 49 00 45 48 00 00 49 00 00 49 49 00 48 45 49 00 49 49 00 48 49 49 00 00 49 00 48 49 49 00 49 00 00 00 00 49 00 00 49 49 00 00 49 49 45 49 49 00 49 00 00 48 49 00 45 49 00 48 48 49 00 00 49 48 48 49 48 48 49 00 48 49 49 00 48 48 49 00 45 49 00 00 49 00 00 49 49 00 48 49 00 48 49 49 00 00 49 49 00 45 49 00 00 49 49 48 48 45 49 48 48 49 49 48 00 49 49 00 48 49 00 49 00 00 49 00 00 48 00 48 00 49 00 45 49 49 00 00 49 00 00 00 49 48 48 49 48 48 49 49 00 49 00 48 49 49 00 49 00 00 49 00 49 49 00 49 49 48 45 49 49 00 45 48 49 00 49 49 48 48 49 49 00 48 48 49 00 45 00 49 00 49 00 00 49 48 49 49 48 48 49 00 49 48 48 49 00 48 48 49 48 00 49 00 49 49 48 49 49 00 00 49 00 00 49 49 48 49 49 49 48 48 49 00 00 49 45 00 49 00 49 49 00 49 49 48 00 49 00 00 49 48 48 49 48 00 49 00 49 00 00 49 45 00 49 48 00 49 ff 00 49 49 00 00 49 00 48 49 49 00 00 49 49 00 00 49 49 48 49 49 00 00 49 00 00 49 00 49 49 00 48 49 48 49 49 00 49 00 00 45 49 48 49 49 48 49 00 00 49 00 49 00 00 49 00 00 49 00 48 49 00 48 00 49 00 49 00 48 45 49 00 49 49 00 48 45 49 00 49 49 00 48 49 00 00 49 00 49 49 00 49 49 00 48 49 00 48 49 45 00 49 48 00 49 00 45 00 49 00 00 48 49 48 49 00 00 49 49 00 00 49 00 48 49 49 00 48 49 49 00 00 49 49 48 00 49 00 45 49 49 48 49 49 00 49 00 00 45 49 00 48 49 00 00 48 00 00 48 49 48 00 49 00 48 48 00 48 48 49 00 48 49 00 00 49 00 48 49 49 00 49 00 00 49 00 48 00 49 48 00 49 00 48 00 49 00 00 00 49 48 45 49 48 00 49 00 00 49 49 00 45 49 00 00 49 00 45 49 49 48 48 49 49 45 49 00 49 00 00 49 49 48 45 49 49 00 48 48 00 00 49 49 00 00 49 48 49 49 00 48 49 49 48 49 49 00 00 49 49 00 00 49 49 00 00 49 00 00 49 49 00 45 49 48 00 49 00 00 49 48 48 49 00 49 49 00 00 49 49 45 49 49 00 48 00 49 00 49 00 49 49 48 48 49 00 00 49 00 48 49 49 00 49 00 00 49 00 45 00 48 49 49 49 00 45 48 49 48 00 49 00 00 49 00 00 49 00 48 49 49 00 45 49 49 00 00 49 49 00 45 49 49 00 49 45 00 00 49 49 00 00 49 00 49 00 00 48 49 00 00 49 00 49 49 00 49 49 00 00 49 00 48 49 49 00 49 49 49 00 00 49 00 00 49 49 00 00 49 00 00 49 49 45 49 00 49 00 48 49 49 00 49 00 49 49 00 48 49 00 48 00 49 48 45 45 00 00 49 49 49 00 48 49 48 00 49 00 49 49 00 00 49 00 00 49 00 48 49 00 00 49 49 00 00 00 49 00 49 49 00 00 49 00 49 49 00 48 49 49 00 49 49 00 48 49 49 00 49 49 48 48 49 48 48 49 00 49 49 00 48 00 49 00 49 00 00 49 49 48 49 49 00 48 49 00 00 49 48 00 49 00 48 49 48 49 49 00 48 49 49 00 49 00 00 45 49 48 45 49 00 49 00 48 49 00 00 49 48 00 49
*/
