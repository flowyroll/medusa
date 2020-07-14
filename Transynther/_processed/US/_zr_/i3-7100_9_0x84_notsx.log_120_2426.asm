.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17ff8, %rsi
lea addresses_A_ht+0xfff8, %rdi
add $56657, %r8
mov $56, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x17ccc, %rsi
lea addresses_normal_ht+0x16e8c, %rdi
nop
nop
nop
nop
xor $30011, %r9
mov $31, %rcx
rep movsl
xor $20314, %rdi
lea addresses_WC_ht+0x111c3, %rsi
nop
and $3677, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rsi)
nop
nop
cmp $17707, %r11
lea addresses_normal_ht+0x11d90, %rsi
lea addresses_normal_ht+0xb93f, %rdi
clflush (%rdi)
nop
nop
nop
dec %rbx
mov $16, %rcx
rep movsb
xor %rbx, %rbx
lea addresses_UC_ht+0x1d605, %r9
nop
add $17462, %rdi
movb (%r9), %r11b
nop
cmp $51127, %rdi
lea addresses_D_ht+0x1abf8, %rsi
lea addresses_WC_ht+0xe7f8, %rdi
nop
nop
nop
and $64843, %r9
mov $101, %rcx
rep movsb
nop
nop
nop
nop
nop
and $39298, %rsi
lea addresses_WC_ht+0x9de8, %rsi
nop
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%rsi)
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x3df8, %r15
nop
nop
and $30058, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r15)
cmp %r15, %r15
lea addresses_normal_ht+0x147f0, %rbx
nop
nop
nop
nop
nop
xor $1526, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
cmp $37275, %rbx
lea addresses_D_ht+0xad38, %r9
clflush (%r9)
cmp $3976, %r15
movb $0x61, (%r9)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0xa508, %rsi
lea addresses_A_ht+0x1d378, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %r15
mov $46, %rcx
rep movsw
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x9578, %rsi
lea addresses_WT_ht+0x18ff8, %rdi
nop
nop
nop
nop
add $33318, %r11
mov $93, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $17281, %rcx
lea addresses_normal_ht+0x18a06, %rdi
nop
and %rbx, %rbx
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x105f8, %rsi
lea addresses_UC_ht+0x41b8, %rdi
inc %r9
mov $71, %rcx
rep movsl
nop
nop
nop
sub $47763, %r15
lea addresses_WC_ht+0x7f18, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r8)
nop
nop
nop
nop
nop
xor $30591, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Load
lea addresses_A+0xadf8, %r10
nop
nop
nop
nop
nop
add $46334, %r15
movb (%r10), %r14b
nop
nop
sub $49878, %r10

// Faulty Load
lea addresses_US+0xf7f8, %rbp
add %r11, %r11
mov (%rbp), %r15
lea oracles, %r10
and $0xff, %r15
shlq $12, %r15
mov (%r10,%r15,1), %r15
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 120}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
