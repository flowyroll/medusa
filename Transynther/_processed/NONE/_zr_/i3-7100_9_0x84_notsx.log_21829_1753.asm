.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d91b, %r9
clflush (%r9)
nop
sub %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x10e97, %r13
cmp $16413, %rbx
movl $0x61626364, (%r13)
nop
nop
and $19543, %rax
lea addresses_D_ht+0xee1b, %r11
nop
nop
add $30697, %rdx
mov (%r11), %r9w
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1adc7, %r9
nop
nop
nop
nop
xor $58237, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r9
movaps %xmm7, (%r9)
nop
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_normal_ht+0xd91b, %rsi
lea addresses_normal_ht+0x162af, %rdi
nop
nop
nop
nop
nop
xor $62005, %rax
mov $75, %rcx
rep movsq
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x1922b, %r13
nop
nop
nop
nop
nop
add $18269, %rdx
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
xor $7704, %r9
lea addresses_normal_ht+0x2b1b, %rsi
xor %rdi, %rdi
movb (%rsi), %r11b
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x5a1b, %rdi
clflush (%rdi)
and %rax, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rdi)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0xe71b, %rsi
lea addresses_D_ht+0xdf1b, %rdi
nop
nop
nop
nop
sub $44412, %r13
mov $96, %rcx
rep movsw
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x152c7, %rsi
lea addresses_WT_ht+0x71b, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r13, %r13
mov $113, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x8f1b, %rsi
lea addresses_UC_ht+0x14017, %rdi
nop
nop
nop
nop
nop
sub $2314, %rdx
mov $65, %rcx
rep movsw
nop
add %r13, %r13
lea addresses_UC_ht+0xf1b, %r13
nop
xor %rdi, %rdi
and $0xffffffffffffffc0, %r13
movntdqa (%r13), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rdx
push %rsi

// Load
lea addresses_normal+0x1e1b, %r12
nop
nop
nop
xor $62055, %r10
vmovups (%r12), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
nop
nop
xor $7755, %r10

// Store
mov $0x41b, %r10
nop
nop
sub $8978, %r11
movw $0x5152, (%r10)
nop
cmp %r8, %r8

// Store
lea addresses_WC+0xfbdb, %rdx
nop
nop
dec %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rdx)
nop
nop
and $56931, %r8

// Faulty Load
lea addresses_A+0x17f1b, %rdx
nop
nop
nop
nop
add %rsi, %rsi
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
