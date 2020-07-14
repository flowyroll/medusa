.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16424, %rsi
lea addresses_WT_ht+0x1a52c, %rdi
nop
nop
nop
nop
nop
add $25557, %r15
mov $78, %rcx
rep movsl
nop
nop
nop
dec %rbp
lea addresses_WT_ht+0x12f2b, %rsi
lea addresses_D_ht+0x1d924, %rdi
nop
add $46737, %r9
mov $117, %rcx
rep movsb
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0x1c254, %rsi
lea addresses_normal_ht+0x5804, %rdi
sub %r9, %r9
mov $17, %rcx
rep movsq
xor %r9, %r9
lea addresses_WC_ht+0xe184, %rsi
lea addresses_normal_ht+0x11e24, %rdi
nop
nop
nop
xor %r12, %r12
mov $42, %rcx
rep movsw
sub %rsi, %rsi
lea addresses_D_ht+0xa8a4, %r9
nop
nop
nop
nop
nop
dec %r15
movups (%r9), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
cmp $49002, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rsi

// Load
mov $0x4c00490000000e27, %rbx
nop
nop
nop
nop
xor $11168, %r9
movb (%rbx), %cl
nop
nop
nop
nop
nop
add %rbx, %rbx

// Faulty Load
lea addresses_normal+0x2e24, %r11
nop
and $631, %rax
movaps (%r11), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'49': 12621, '48': 6295, '46': 1, '00': 2912}
49 48 49 49 00 49 00 49 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 49 49 00 48 49 49 49 49 49 48 49 49 49 00 49 00 49 00 49 48 49 48 49 48 49 48 49 00 49 48 49 48 49 49 49 49 48 49 48 49 48 49 48 49 00 49 48 49 48 49 48 49 00 49 48 49 48 49 49 48 49 48 49 49 49 48 49 49 49 48 49 00 49 49 49 48 49 49 49 00 49 48 49 49 48 49 48 49 00 49 48 49 48 49 48 48 49 48 49 48 49 48 49 00 49 49 49 49 00 49 48 49 49 49 48 49 00 49 48 49 49 00 49 48 49 48 49 48 49 48 49 00 49 00 49 00 49 48 49 00 49 48 49 48 49 00 49 49 48 49 00 49 48 49 49 48 49 00 48 49 00 49 48 49 48 49 49 49 48 49 48 49 00 49 48 49 00 49 48 48 49 00 49 48 48 00 49 48 49 00 49 49 49 49 48 49 48 49 49 49 48 49 48 49 49 48 49 49 49 00 49 48 49 48 49 48 49 49 48 49 00 49 49 49 48 49 48 49 00 49 48 49 48 49 48 49 49 48 49 00 49 49 48 49 49 49 00 49 48 49 48 49 49 48 00 49 49 49 49 49 49 00 49 49 48 49 48 49 48 49 00 49 49 49 48 49 00 49 00 49 49 48 49 48 49 48 48 48 48 49 00 49 00 49 49 48 49 00 49 48 49 00 49 00 48 48 49 49 48 49 48 49 48 49 48 48 48 49 00 48 00 49 49 49 49 48 49 49 48 49 00 49 48 49 48 49 48 49 48 49 00 49 00 49 49 49 49 49 00 48 48 49 00 49 48 49 48 49 48 49 48 49 00 49 00 49 00 49 49 49 00 49 49 48 48 00 49 00 49 48 49 00 49 48 49 00 49 48 49 48 49 49 49 00 49 48 49 48 49 49 00 49 48 49 48 49 48 49 48 49 49 49 49 00 49 48 49 48 49 00 49 48 49 48 49 48 49 48 49 48 49 49 00 49 48 49 48 49 48 49 49 49 48 49 49 48 49 48 49 48 49 49 48 49 49 48 49 48 49 00 49 00 49 49 48 49 48 49 48 49 00 49 48 49 48 49 00 49 49 49 48 49 49 49 48 48 49 48 49 48 49 49 48 49 48 49 48 49 48 49 49 49 49 49 48 49 48 49 48 49 48 49 49 49 48 49 49 49 48 49 48 49 00 49 48 48 48 49 00 49 00 49 00 49 48 49 48 49 49 48 49 00 49 49 48 49 49 48 49 48 49 48 49 49 49 48 49 49 49 49 49 49 49 49 49 49 48 49 49 48 49 48 49 00 49 48 49 48 49 48 49 48 00 49 48 49 00 49 48 49 00 49 49 48 49 49 49 48 49 49 49 48 49 49 49 48 49 49 48 49 48 49 48 49 48 49 00 49 48 49 48 49 48 48 49 48 49 00 49 48 49 00 49 48 49 48 49 48 49 48 49 48 49 48 49 00 49 49 49 48 49 00 49 00 49 00 49 00 49 00 49 48 49 48 49 48 49 00 49 48 49 00 49 49 49 48 49 48 49 48 49 49 49 48 49 00 49 48 49 00 49 49 48 49 00 49 00 49 48 49 00 48 49 48 49 48 48 49 48 49 00 49 00 49 49 49 48 49 49 48 49 00 49 00 49 48 49 00 49 48 49 00 49 00 00 49 48 48 49 49 48 49 48 49 48 49 48 48 49 49 00 49 49 48 49 49 48 49 49 48 49 00 49 49 48 49 49 48 49 00 49 49 49 48 49 48 49 49 48 49 48 49 48 49 00 49 49 48 49 48 49 49 48 49 49 00 49 00 49 49 48 48 49 49 49 49 49 48 49 49 49 48 49 00 49 49 48 49 48 49 49 49 49 48 49 00 48 49 48 49 49 49 49 48 49 49 48 49 49 48 49 49 49 49 00 49 48 49 49 48 49 48 49 00 48 49 48 49 48 49 00 49 00 49 48 49 49 48 49 49 49 49 48 49 48 49 49 49 48 49 00 49 48 49 48 49 48 49 48 49 49 49 49 48 49 00 49 48 49 00 48 49 00 49 48 49 48 49 49 49 48 49 48 49 00 49 00 49 49 49 48 49 00 49 49 49 48 49 48 49 48 49 48 49 48 49 49 49 49 49 49 48 49 00 49 49 48 49 48 49 49 49 48 49 48 49 49 48 48 49 48 49 48 49 48 49 48 49 48 49 48 49 48 49 49 48 49
*/
