.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1e9a3, %r13
nop
nop
nop
add %r9, %r9
movb $0x61, (%r13)
nop
cmp $62459, %rbp
lea addresses_D_ht+0xd063, %rsi
nop
nop
sub %r9, %r9
mov (%rsi), %rax
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x7223, %rbp
nop
nop
nop
nop
nop
lfence
mov (%rbp), %rax
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1413, %rsi
lea addresses_A_ht+0x121b3, %rdi
nop
nop
add $45575, %rax
mov $43, %rcx
rep movsl
nop
inc %rbp
lea addresses_WT_ht+0xe9a9, %rsi
lea addresses_A_ht+0x7923, %rdi
clflush (%rdi)
nop
add %rax, %rax
mov $20, %rcx
rep movsq
nop
nop
nop
nop
sub $7544, %rsi
lea addresses_WT_ht+0x577d, %rsi
lea addresses_normal_ht+0x1eb23, %rdi
nop
nop
nop
nop
nop
xor $26565, %r13
mov $121, %rcx
rep movsl
nop
sub $49, %r8
lea addresses_WC_ht+0xe453, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
add $30504, %rcx
lea addresses_A_ht+0x4c23, %rdi
sub %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
add %rcx, %rcx
lea addresses_UC_ht+0x12123, %rsi
lea addresses_D_ht+0x18f23, %rdi
clflush (%rsi)
nop
nop
xor %r13, %r13
mov $54, %rcx
rep movsw
nop
nop
nop
add $27986, %r9
lea addresses_normal_ht+0x4d69, %rdi
nop
nop
nop
add $50300, %r9
movb (%rdi), %r13b
nop
nop
nop
and $17328, %r13
lea addresses_D_ht+0x15323, %r8
nop
nop
nop
nop
and $45617, %rax
movb $0x61, (%r8)
nop
nop
nop
nop
nop
cmp $20656, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rcx

// Faulty Load
lea addresses_US+0xaf23, %rcx
nop
nop
and $27147, %r15
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 6, 'NT': True, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'00': 45, '49': 3, '47': 3}
00 00 00 00 00 00 00 00 00 47 49 00 00 00 00 49 00 00 00 00 00 47 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 47 00
*/
