.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7b4, %r12
sub %r11, %r11
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x81ac, %rsi
lea addresses_A_ht+0x1df74, %rdi
nop
xor %r14, %r14
mov $22, %rcx
rep movsw
nop
xor $61480, %rax
lea addresses_WC_ht+0x109b4, %rsi
lea addresses_WC_ht+0x15d4, %rdi
nop
nop
nop
nop
dec %r11
mov $31, %rcx
rep movsw
nop
nop
nop
nop
add $9475, %r14
lea addresses_WT_ht+0xf474, %rsi
lea addresses_D_ht+0x7e64, %rdi
nop
nop
nop
add %r11, %r11
mov $39, %rcx
rep movsb
sub $33307, %rax
lea addresses_D_ht+0x1e64c, %rdi
nop
nop
sub %r12, %r12
movb $0x61, (%rdi)
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x439e, %r11
nop
nop
add %r14, %r14
mov (%r11), %ecx
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x1e074, %rdi
nop
nop
nop
nop
nop
cmp $50047, %r11
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x99b4, %rsi
lea addresses_WC_ht+0x17c94, %rdi
nop
nop
nop
xor $13539, %r9
mov $27, %rcx
rep movsb
and %r12, %r12
lea addresses_WT_ht+0x11b4, %r12
nop
nop
xor $61313, %rsi
movb (%r12), %r11b
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_WC+0x87b4, %rbp
nop
add $37310, %rax
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'40': 80, '59': 9425, '06': 2948, '00': 9376}
00 00 06 06 06 00 06 06 06 06 00 06 00 06 06 00 00 06 00 06 06 06 06 06 00 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 00 06 06 06 00 06 06 06 00 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 00 06 00 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 00 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 00 06 06 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 00 00 06 06 06 00 06 00 06 06 06 06 06 00 06 06 00 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 00 06 06 06 06 06 06 06 06 00 00 06 06 06 06 06 00 06 06 06 06 06 06 06 00 06 06 00 06 06 00 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 00 06 06 06 06 00 06 06 00 00 06 00 06 06 00 06 06 00 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 00 06 06 06 00 06 06 06 06 06 06 06 06 00 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 00 06 06 00 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 00 00 06 06 06 06 06 00 06 06 06 00 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 00 06 06 00 06 00 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 00 00 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 00 06 06 06 06 00 06 06 00 06 06 06 06 06 06 00 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 06 00 06 06 06 06
*/
