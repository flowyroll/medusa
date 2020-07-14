.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11790, %rsi
nop
nop
dec %rbp
mov (%rsi), %r8d
nop
inc %r12
lea addresses_A_ht+0xcf00, %rbp
nop
nop
nop
nop
inc %r12
movw $0x6162, (%rbp)
nop
nop
nop
and $3210, %r12
lea addresses_D_ht+0xf710, %rcx
nop
nop
mfence
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x1726c, %r10
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r10), %r8w
nop
nop
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x17ed0, %r8
nop
nop
nop
nop
xor %r12, %r12
movb (%r8), %cl
nop
nop
nop
nop
add $39794, %rcx
lea addresses_normal_ht+0x1df90, %r8
clflush (%r8)
nop
nop
nop
add %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm2
and $0xffffffffffffffc0, %r8
vmovaps %ymm2, (%r8)
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x19c90, %rcx
nop
xor %r10, %r10
mov (%rcx), %r13w
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x17c10, %rsi
nop
nop
dec %r13
movl $0x61626364, (%rsi)
add %r10, %r10
lea addresses_A_ht+0x15590, %rsi
lea addresses_UC_ht+0x1ee4, %rdi
nop
nop
add $20482, %r10
mov $61, %rcx
rep movsb
nop
nop
nop
nop
nop
and $2764, %r13
lea addresses_D_ht+0xf1a6, %rsi
lea addresses_normal_ht+0x561e, %rdi
nop
nop
add $57416, %r13
mov $101, %rcx
rep movsq
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x5810, %rsi
nop
nop
sub %rbp, %rbp
mov (%rsi), %rdi
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1ce10, %r12
nop
nop
nop
inc %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
cmp $39591, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1e624, %rbp
clflush (%rbp)
inc %r8
movb $0x51, (%rbp)
add $60081, %rax

// Faulty Load
lea addresses_normal+0x9390, %rbp
nop
nop
nop
nop
inc %rcx
vmovntdqa (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': True, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
