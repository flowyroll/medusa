.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x100ce, %rdi
nop
and %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
xor $27004, %r11
lea addresses_WC_ht+0x552e, %r15
nop
nop
nop
dec %r13
movb $0x61, (%r15)
nop
nop
and %r15, %r15
lea addresses_A_ht+0xdf76, %rsi
lea addresses_WC_ht+0x1ea8e, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $14, %rcx
rep movsw
inc %r12
lea addresses_A_ht+0x15dce, %rsi
lea addresses_D_ht+0xc10e, %rdi
nop
mfence
mov $94, %rcx
rep movsq
add %r8, %r8
lea addresses_normal_ht+0xbe06, %rsi
lea addresses_A_ht+0x94e6, %rdi
nop
nop
nop
add %r11, %r11
mov $40, %rcx
rep movsq
xor %r11, %r11
lea addresses_A_ht+0x828e, %rcx
nop
nop
cmp %r13, %r13
movl $0x61626364, (%rcx)
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1d36e, %rsi
lea addresses_WT_ht+0x1c29e, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $9, %rcx
rep movsl
nop
lfence
lea addresses_UC_ht+0x4bc6, %r15
nop
nop
nop
nop
xor %r11, %r11
movb (%r15), %cl
nop
nop
inc %r12
lea addresses_A_ht+0x1a58e, %rsi
lea addresses_normal_ht+0xe04e, %rdi
nop
nop
nop
nop
nop
sub $35582, %r15
mov $115, %rcx
rep movsb
inc %rsi
lea addresses_WT_ht+0xbc8e, %r12
cmp %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x17be6, %r12
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%r12)
nop
add $51455, %r15
lea addresses_A_ht+0x15a16, %rdi
xor $49254, %r11
mov (%rdi), %si
xor $58665, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0xea8e, %rsi
lea addresses_WC+0x758e, %rdi
nop
nop
nop
nop
nop
sub $15775, %r11
mov $44, %rcx
rep movsq
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_UC+0xea8e, %rbx
sub %r9, %r9
movntdqa (%rbx), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC', 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 1, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'00': 1}
00
*/
