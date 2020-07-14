.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x5c56, %r11
and %rcx, %rcx
vmovups (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
nop
cmp $7944, %r10
lea addresses_D_ht+0x1cc8c, %rsi
lea addresses_A_ht+0x3fec, %rdi
nop
nop
nop
nop
nop
add $27402, %r12
mov $89, %rcx
rep movsq
nop
and %rsi, %rsi
lea addresses_WC_ht+0x326c, %r10
nop
nop
xor $4782, %rdi
mov (%r10), %r11w
nop
add $46526, %rdi
lea addresses_A_ht+0x1d5d2, %rsi
lea addresses_UC_ht+0x18d0c, %rdi
and $15816, %r10
mov $5, %rcx
rep movsq
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x135ec, %rcx
nop
and $53692, %rax
movb (%rcx), %r11b
xor %r10, %r10
lea addresses_normal_ht+0x1160c, %rdi
nop
nop
xor $5634, %r12
movl $0x61626364, (%rdi)
nop
xor %r11, %r11
lea addresses_UC_ht+0x1e78c, %rsi
lea addresses_normal_ht+0x5dfc, %rdi
nop
nop
nop
nop
cmp $16583, %rbx
mov $109, %rcx
rep movsw
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0xc0ec, %rsi
nop
nop
nop
cmp $65442, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %rsi
movaps %xmm1, (%rsi)
nop
nop
sub $5892, %rbx
lea addresses_A_ht+0x1768c, %rax
nop
nop
sub $31642, %r10
vmovups (%rax), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
add %rbx, %rbx
lea addresses_WC_ht+0x1868c, %rsi
lea addresses_D_ht+0x3b1c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $29912, %rbx
mov $32, %rcx
rep movsl
nop
cmp $41376, %r12
lea addresses_WT_ht+0xa88c, %rsi
lea addresses_A_ht+0x928c, %rdi
nop
nop
nop
nop
inc %rax
mov $103, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0xa58c, %r12
clflush (%r12)
nop
nop
add $41818, %rdi
movb $0x61, (%r12)
xor $33597, %r12
lea addresses_D_ht+0x1aa34, %rdi
nop
nop
nop
and $36276, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x1a48c, %rsi
lea addresses_normal_ht+0x1b7ec, %rdi
nop
cmp %rax, %rax
mov $86, %rcx
rep movsb
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rbp
push %rbx
push %rsi

// Faulty Load
mov $0x5f9f8b0000000a8c, %rsi
nop
nop
xor $45776, %rbx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'f8': 1, '48': 765, '46': 52, '49': 503, '00': 20116, '45': 392}
00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 49 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 45 00 00 00 48 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 45 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 45 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 45 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 48 00 00 00 00 00 49 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 45 00 00 00 00 00 45 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 49 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 48 00 00 49 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 49 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 49 45 45 00 00 00 00 00 00 00 48 45 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 45 00 00 48 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 48 00 00 00 00 00 00 00 00
*/
