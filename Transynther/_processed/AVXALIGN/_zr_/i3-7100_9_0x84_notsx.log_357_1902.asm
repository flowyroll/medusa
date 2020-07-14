.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xfda3, %rsi
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %rsi
movntdq %xmm7, (%rsi)
xor %r10, %r10
lea addresses_normal_ht+0xa6a3, %rbx
xor $36345, %r12
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0xd6a3, %rsi
xor $51663, %rbx
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rsi)
nop
cmp $45176, %r12
lea addresses_UC_ht+0xf1a3, %r14
clflush (%r14)
nop
nop
nop
nop
and %r10, %r10
movb $0x61, (%r14)
nop
nop
nop
nop
xor $33051, %r12
lea addresses_normal_ht+0x844b, %rsi
lea addresses_WT_ht+0x1e3a3, %rdi
nop
cmp %r10, %r10
mov $54, %rcx
rep movsw
nop
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x15011, %rsi
lea addresses_D_ht+0x195a3, %rdi
nop
nop
nop
add $22738, %r12
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $54376, %r12
lea addresses_WC_ht+0x14473, %r12
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r12)
nop
nop
nop
nop
nop
cmp $1237, %rbx
lea addresses_UC_ht+0xde8b, %rsi
lea addresses_WT_ht+0x91a3, %rdi
nop
nop
nop
nop
cmp $17542, %rax
mov $82, %rcx
rep movsw
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rbp

// Store
lea addresses_WT+0xef27, %rbp
nop
nop
nop
nop
nop
and $65147, %r10
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
add $607, %r11

// Store
lea addresses_WT+0x5fa3, %r14
nop
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movups %xmm5, (%r14)
nop
cmp %r14, %r14

// Store
lea addresses_A+0x169a3, %r11
nop
nop
nop
nop
nop
and $6301, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%r11)
nop
nop
nop
dec %r8

// Store
mov $0x14ba7e00000004d3, %r10
nop
and $41956, %r8
movb $0x51, (%r10)
nop
nop
nop
nop
cmp $59705, %rbp

// Faulty Load
lea addresses_A+0x169a3, %rax
nop
nop
nop
nop
nop
sub $24537, %r13
vmovntdqa (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'00': 357}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
