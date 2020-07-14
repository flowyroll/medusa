.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x4bcb, %rdi
nop
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %rdi
movntdq %xmm7, (%rdi)
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x15833, %rsi
nop
nop
nop
nop
nop
and %rcx, %rcx
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
nop
nop
and $60642, %r14
lea addresses_WC_ht+0xb728, %r14
clflush (%r14)
nop
nop
nop
nop
dec %rdx
movw $0x6162, (%r14)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x5313, %r14
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
add $31358, %rdx
lea addresses_WT_ht+0x16833, %rdx
nop
nop
nop
mfence
mov (%rdx), %cx
nop
nop
dec %rdi
lea addresses_normal_ht+0x8713, %r15
clflush (%r15)
nop
nop
nop
xor %rsi, %rsi
mov (%r15), %cx
nop
nop
nop
nop
nop
add $47402, %rdx
lea addresses_normal_ht+0x5c23, %rdx
nop
nop
nop
nop
nop
and $65133, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x1a993, %rsi
lea addresses_WT_ht+0x1649b, %rdi
nop
nop
nop
add %rbp, %rbp
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $18256, %rdx
lea addresses_WC_ht+0x1e4c1, %rsi
lea addresses_WT_ht+0x189d3, %rdi
nop
nop
nop
cmp %r9, %r9
mov $69, %rcx
rep movsq
sub %rdx, %rdx
lea addresses_WC_ht+0x13513, %rsi
lea addresses_WC_ht+0x141eb, %rdi
nop
nop
nop
add %rdx, %rdx
mov $38, %rcx
rep movsw
nop
nop
dec %rcx
lea addresses_normal_ht+0x11b13, %r14
nop
nop
sub $49996, %rcx
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
and $30395, %r15
lea addresses_UC_ht+0x1c533, %rdx
nop
nop
nop
nop
and $49329, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rdx)
nop
and $14253, %r15
lea addresses_D_ht+0x5dab, %rbp
sub %rcx, %rcx
mov (%rbp), %r9d
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x18113, %r9
clflush (%r9)
nop
xor $28388, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r9
vmovntdq %ymm7, (%r9)
nop
nop
nop
cmp %r14, %r14
lea addresses_WT_ht+0x19713, %rsi
lea addresses_WT_ht+0xbc13, %rdi
nop
nop
nop
dec %rdx
mov $83, %rcx
rep movsl
nop
nop
cmp %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x461f, %rsi
lea addresses_PSE+0x1a90b, %rdi
nop
nop
cmp %r12, %r12
mov $45, %rcx
rep movsb
nop
nop
xor %r12, %r12

// Faulty Load
mov $0x65b8100000000f13, %rsi
lfence
movb (%rsi), %cl
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}}
{'00': 393}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
