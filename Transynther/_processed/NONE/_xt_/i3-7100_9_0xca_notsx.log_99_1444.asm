.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c55c, %r13
nop
nop
add %r12, %r12
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
and $22898, %r11
lea addresses_normal_ht+0xda5c, %r8
nop
nop
nop
and $30071, %r10
movb (%r8), %r12b
dec %rsi
lea addresses_WC_ht+0x10b5c, %rsi
lea addresses_WC_ht+0x567c, %rdi
nop
nop
xor $37260, %r8
mov $70, %rcx
rep movsl
nop
nop
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x1ea9c, %r10
nop
nop
sub %r13, %r13
movw $0x6162, (%r10)
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0xfa3e, %rcx
nop
nop
cmp %r8, %r8
mov (%rcx), %r11d
xor %rcx, %rcx
lea addresses_WC_ht+0x6d9c, %r8
clflush (%r8)
nop
nop
cmp $20132, %r12
movb $0x61, (%r8)
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x134dc, %r12
and $18948, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_normal_ht+0x49dc, %rsi
lea addresses_D_ht+0x5b50, %rdi
clflush (%rdi)
nop
nop
nop
inc %r11
mov $88, %rcx
rep movsl
nop
nop
add $41000, %r8
lea addresses_D_ht+0x14ffa, %r11
nop
nop
nop
nop
nop
and %r8, %r8
movb $0x61, (%r11)
and %r10, %r10
lea addresses_WT_ht+0x8269, %rsi
lea addresses_normal_ht+0x108dc, %rdi
nop
nop
nop
nop
nop
and $33754, %r13
mov $99, %rcx
rep movsw
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x52dc, %rdi
nop
cmp $4035, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
xor $43596, %r13
lea addresses_D_ht+0x17c5c, %r12
nop
xor %rsi, %rsi
vmovups (%r12), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
sub $40184, %r13
lea addresses_WC_ht+0xed85, %r11
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %r12
movq %r12, %xmm1
and $0xffffffffffffffc0, %r11
movntdq %xmm1, (%r11)
nop
nop
nop
nop
cmp %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Load
lea addresses_normal+0x1e15c, %r9
nop
and $56818, %rdx
movaps (%r9), %xmm6
vpextrq $0, %xmm6, %r12
nop
dec %r12

// Load
lea addresses_A+0x11efc, %rbp
nop
nop
add %r12, %r12
movb (%rbp), %cl
nop
nop
add $55070, %rdx

// Store
mov $0x95c, %r12
nop
nop
nop
nop
add $25657, %rdx
movw $0x5152, (%r12)
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_normal+0x1e15c, %rcx
nop
nop
nop
and $31008, %r13
mov (%rcx), %r9d
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
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
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'34': 99}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
