.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rdi
lea addresses_A_ht+0x18783, %r13
dec %rdi
movw $0x6162, (%r13)
nop
xor %r11, %r11
lea addresses_D_ht+0xe707, %r9
nop
sub $27314, %rbp
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_A_ht+0x4bb, %rax
nop
nop
and %rdi, %rdi
movups (%rax), %xmm2
vpextrq $1, %xmm2, %r13
nop
nop
nop
nop
nop
and $9713, %r13
lea addresses_A_ht+0x15ee5, %r11
nop
nop
nop
nop
nop
cmp $49320, %rdi
mov (%r11), %rax
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x171bb, %rbp
clflush (%rbp)
nop
cmp $9455, %r8
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1bf47, %rax
nop
nop
nop
and $35700, %r9
mov (%rax), %bp
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x121b5, %r13
nop
nop
nop
nop
nop
cmp %r9, %r9
movb $0x61, (%r13)
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x15bb, %r13
nop
nop
nop
nop
nop
sub %rdi, %rdi
movb (%r13), %r8b
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0xc1bb, %r9
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
add %r11, %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %r9
push %rax

// Faulty Load
lea addresses_D+0x13bb, %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
vmovaps (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 33, 'a8': 28}
00 a8 00 a8 a8 00 00 00 a8 a8 a8 00 00 00 00 a8 00 a8 00 00 a8 00 a8 00 a8 00 a8 a8 a8 a8 a8 a8 00 a8 a8 00 00 a8 00 00 00 00 00 a8 00 a8 a8 00 00 a8 00 a8 00 a8 a8 00 00 00 a8 00 00
*/
