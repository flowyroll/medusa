.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x2bec, %r13
nop
nop
nop
nop
add $36077, %r9
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xefec, %rsi
lea addresses_UC_ht+0x1aaec, %rdi
nop
nop
nop
nop
nop
sub $60441, %r15
mov $25, %rcx
rep movsb
xor $15126, %rcx
lea addresses_normal_ht+0xfeec, %rsi
lea addresses_D_ht+0x108ec, %rdi
clflush (%rdi)
nop
inc %rbx
mov $122, %rcx
rep movsw
and %r15, %r15
lea addresses_D_ht+0x18ab0, %rsi
lea addresses_WT_ht+0xfca2, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $116, %rcx
rep movsq
nop
nop
nop
xor $54647, %rbx
lea addresses_WT_ht+0x436c, %rsi
nop
xor %r15, %r15
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
nop
nop
and $58702, %rbx
lea addresses_WC_ht+0x1c8ec, %rcx
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
and $0xffffffffffffffc0, %rcx
movaps %xmm4, (%rcx)
nop
nop
nop
nop
sub $7597, %rbx
lea addresses_WC_ht+0x876, %rdi
nop
nop
nop
nop
dec %rbx
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
sub $35254, %rdi
lea addresses_normal_ht+0xf0cc, %rsi
lea addresses_WT_ht+0x40ec, %rdi
xor $38819, %r15
mov $107, %rcx
rep movsq
nop
nop
nop
add $12253, %r13
lea addresses_A_ht+0x183cc, %rsi
lea addresses_WT_ht+0x1cbcc, %rdi
nop
nop
nop
nop
add $34757, %rbx
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $12672, %r15
lea addresses_UC_ht+0xceec, %rsi
nop
nop
nop
nop
nop
cmp $15856, %rcx
mov (%rsi), %rbx
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1b3ec, %rsi
lea addresses_WT_ht+0x1d6ec, %rdi
nop
nop
cmp $61416, %r13
mov $10, %rcx
rep movsw
lfence
lea addresses_A_ht+0xe4ec, %rcx
nop
nop
nop
nop
nop
cmp $49916, %r9
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
nop
lfence
lea addresses_D_ht+0x1b764, %r15
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_D+0xf0ec, %rsi
nop
nop
nop
nop
nop
dec %r11
vmovaps (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 6354, '00': 14, '47': 1, 'eb': 1, '44': 10958}
44 44 44 44 44 46 46 44 44 46 44 44 46 46 46 44 46 44 44 44 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 46 44 44 44 44 46 46 44 46 44 46 44 46 44 44 46 44 46 44 46 44 46 46 46 44 46 46 44 44 44 44 44 44 44 44 44 44 46 44 44 46 44 46 46 44 46 44 46 44 46 44 46 44 46 46 44 44 46 44 44 44 44 44 46 46 46 46 44 46 46 44 46 44 46 44 44 46 44 46 44 44 44 44 44 46 44 44 44 44 46 46 44 44 46 46 44 46 44 46 46 44 44 46 44 46 44 46 44 44 46 44 46 44 44 46 44 46 44 46 46 44 46 46 44 44 44 46 44 44 46 44 44 44 44 44 46 44 44 44 46 44 46 44 44 44 46 44 46 46 44 44 44 46 44 44 44 46 44 44 46 44 46 46 46 44 44 46 44 46 46 46 44 44 46 44 46 44 44 44 44 44 44 46 44 46 46 44 46 46 46 44 44 44 46 44 44 46 46 46 44 44 44 44 44 44 44 46 44 44 46 44 44 44 44 44 46 44 44 44 44 44 44 46 46 44 46 44 44 44 44 46 44 44 46 44 46 44 46 44 46 44 46 44 46 46 46 46 44 46 44 46 44 46 44 44 44 46 44 46 46 44 46 46 46 44 44 44 46 44 44 44 46 44 46 46 44 46 44 44 46 44 46 44 46 44 46 44 44 46 44 44 46 46 46 44 46 44 44 44 46 44 44 46 44 44 44 44 44 46 44 46 44 46 44 44 44 46 44 44 44 44 44 44 44 44 44 46 44 44 44 44 46 46 44 44 46 46 44 46 44 44 44 46 44 46 46 46 44 46 44 46 44 44 44 46 46 44 44 44 44 46 44 44 44 44 44 44 46 44 44 46 46 44 46 44 44 44 44 46 44 46 44 44 46 44 46 44 44 46 46 44 44 44 46 44 44 44 44 44 44 46 44 44 44 44 46 44 44 46 44 46 46 46 44 44 44 46 44 46 46 44 44 44 44 46 44 46 44 46 46 44 46 44 44 46 44 46 46 44 44 46 44 44 44 44 44 46 44 44 46 44 46 46 44 46 44 44 46 44 46 44 46 44 46 44 44 44 44 46 44 46 44 44 44 46 44 44 46 46 44 46 44 44 44 44 46 46 44 46 44 46 44 44 46 44 44 44 46 44 46 44 44 44 46 44 44 44 44 46 46 46 44 44 46 46 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 46 46 44 44 44 44 46 44 44 46 44 46 44 44 44 44 44 44 46 44 46 44 46 44 44 44 46 44 46 44 46 44 44 46 44 44 46 44 46 46 44 44 44 44 44 44 46 44 46 46 44 46 44 44 46 44 44 44 46 44 46 44 46 44 46 44 44 44 44 46 44 44 46 44 44 46 44 46 46 44 44 46 44 46 44 46 44 46 44 44 46 44 44 44 44 46 44 44 44 44 46 44 44 46 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 46 44 46 44 46 44 46 44 44 44 44 46 44 46 44 46 46 44 44 44 46 44 44 44 44 44 44 46 44 46 44 44 46 44 44 44 44 44 46 46 46 46 46 44 46 44 46 44 46 46 44 46 44 46 44 44 44 46 46 44 46 44 44 44 44 46 44 44 44 46 44 44 44 46 46 44 46 44 44 46 44 44 44 44 44 46 44 44 44 44 46 44 44 44 44 44 44 44 46 46 44 44 46 46 44 46 44 44 46 44 44 46 44 44 46 44 44 44 44 44 46 46 46 44 46 44 46 46 46 44 46 44 46 44 46 44 44 46 44 44 44 44 46 46 44 44 44 46 46 44 44 44 46 46 44 44 44 44 44 46 44 46 44 44 44 44 46 44 46 44 46 46 44 46 44 46 44 46 44 44 44 44 46 44 44 46 44 46 44 46 44 46 44 44 44 44 46 44 46 46 46 46 44 46 44 46 44 44 44 44 46 44 44 46 44 44 46 44 46 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 46 46 44 44 46 44 44 44 44 44 44 44 44 44 44 44 46 46 44 46 46 44 44 46 44 44 44 44 46 44 44 46 46 46 44 44 44 44 44 44 44 44 44 46 44 44 46 46 46 44 44 44 44 44 44 44 46 44 46 44 44 44 46 46 44 44 46 44 46 46 46 44 46 44 46
*/
