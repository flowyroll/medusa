.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x10afa, %rdx
nop
and $35271, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %rdx
movntdq %xmm7, (%rdx)
nop
xor %r10, %r10
lea addresses_D_ht+0x1267a, %r9
nop
nop
nop
sub $46824, %r12
vmovups (%r9), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rax
nop
sub $62459, %rdx
lea addresses_A_ht+0x1063a, %r10
nop
nop
nop
nop
add $22484, %rdi
movb (%r10), %r9b
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x197e5, %rdi
nop
nop
cmp %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, (%rdi)
nop
nop
dec %r10
lea addresses_A_ht+0x1bd5a, %r12
nop
nop
nop
nop
nop
cmp $2765, %r11
movb $0x61, (%r12)
nop
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x297a, %r12
clflush (%r12)
nop
nop
nop
nop
add $53145, %r9
movl $0x61626364, (%r12)
nop
and $65130, %rax
lea addresses_normal_ht+0x4afa, %rsi
lea addresses_WT_ht+0x1ae1a, %rdi
nop
nop
nop
cmp %r12, %r12
mov $25, %rcx
rep movsb
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x1dada, %rsi
lea addresses_WC_ht+0x707a, %rdi
nop
nop
nop
nop
xor $43356, %rax
mov $61, %rcx
rep movsb
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x6d27, %r9
clflush (%r9)
nop
nop
nop
xor $26173, %rsi
and $0xffffffffffffffc0, %r9
vmovntdqa (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
cmp $13962, %r9
lea addresses_A_ht+0x13bfa, %rsi
lea addresses_UC_ht+0x106fa, %rdi
nop
nop
nop
nop
dec %r10
mov $72, %rcx
rep movsl
nop
inc %r10
lea addresses_WT_ht+0x96fa, %r10
nop
cmp %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r10)
inc %r10
lea addresses_WC_ht+0x41fe, %r12
dec %rcx
mov (%r12), %ax
and $13652, %r12
lea addresses_WC_ht+0x76fa, %rsi
lea addresses_normal_ht+0x1d387, %rdi
nop
nop
nop
nop
dec %r11
mov $52, %rcx
rep movsb
sub $25551, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0xf2fa, %rsi
lea addresses_RW+0x134ac, %rdi
nop
nop
sub %r10, %r10
mov $66, %rcx
rep movsw
sub $56616, %rbx

// Faulty Load
mov $0x771d1200000006fa, %rdx
nop
nop
cmp $44418, %rsi
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'00': 2}
00 00
*/
