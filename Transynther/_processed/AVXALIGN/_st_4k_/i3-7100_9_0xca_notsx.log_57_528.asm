.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a003, %r9
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x6b03, %rdx
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x1504, %rsi
lea addresses_WT_ht+0x1a103, %rdi
clflush (%rdi)
nop
nop
nop
sub $18256, %r13
mov $3, %rcx
rep movsb
cmp %rcx, %rcx
lea addresses_A_ht+0x1d703, %r13
nop
nop
nop
nop
inc %r10
mov (%r13), %rsi
nop
add $16798, %r9
lea addresses_D_ht+0x2871, %rcx
add $7964, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm3, (%rcx)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1bb03, %r13
nop
nop
add $21240, %r10
vmovups (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
xor %r13, %r13
lea addresses_D_ht+0x4903, %rcx
nop
nop
nop
nop
xor $407, %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x14583, %rcx
xor $17407, %r13
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r14
nop
nop
sub $34458, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdx

// Store
lea addresses_normal+0x17703, %r12
xor $56574, %rcx
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%r12)
nop
nop
nop
nop
xor %r8, %r8

// Store
lea addresses_D+0x17a83, %r14
nop
nop
add %rdx, %rdx
movb $0x51, (%r14)
nop
nop
nop
nop
sub $39684, %r10

// Store
mov $0xb0f5c0000000f03, %r8
cmp %r10, %r10
movw $0x5152, (%r8)
nop
nop
nop
nop
dec %r14

// Store
mov $0x133e6b000000096f, %rcx
nop
nop
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movaps %xmm4, (%rcx)
nop
nop
nop
nop
cmp $50683, %r14

// Store
mov $0x540bbb000000000f, %r11
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r11)
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_US+0x1bf03, %r11
nop
nop
and %rcx, %rcx
mov (%r11), %r10w
lea oracles, %rdx
and $0xff, %r10
shlq $12, %r10
mov (%rdx,%r10,1), %r10
pop %rdx
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': True, 'type': 'addresses_NC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'52': 57}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
