.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x2ab4, %rsi
lea addresses_normal_ht+0x9f54, %rdi
nop
nop
nop
nop
inc %r13
mov $36, %rcx
rep movsw
nop
nop
cmp $36142, %r11
lea addresses_normal_ht+0x8a64, %rsi
lea addresses_WT_ht+0xa3d4, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x17f5c, %r11
nop
and $18208, %r12
movb (%r11), %cl
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x10c68, %r9
nop
cmp %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x81d4, %rsi
lea addresses_normal_ht+0x334, %rdi
nop
nop
nop
nop
add $50952, %r14
mov $110, %rcx
rep movsl
nop
nop
nop
nop
sub $51151, %rdi
lea addresses_UC_ht+0x1730, %rsi
lea addresses_WC_ht+0x12f54, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $57, %rcx
rep movsl
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0xbdd4, %r13
clflush (%r13)
and %rcx, %rcx
vmovups (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
nop
and $31548, %r12
lea addresses_A_ht+0x7d4, %rsi
lea addresses_WC_ht+0x1af69, %rdi
nop
cmp $52793, %r14
mov $108, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_normal_ht+0x1ce54, %r9
nop
nop
nop
sub %r14, %r14
movups (%r9), %xmm4
vpextrq $0, %xmm4, %rsi
nop
xor $20631, %rcx
lea addresses_WT_ht+0x1c7d4, %rsi
nop
nop
nop
nop
nop
dec %r12
mov (%rsi), %r11d
nop
nop
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x1db88, %r14
clflush (%r14)
nop
nop
nop
inc %rcx
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm5
vpextrq $1, %xmm5, %r12
nop
nop
nop
inc %r13
lea addresses_normal_ht+0x15bd4, %rcx
nop
and $21439, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rcx)
nop
nop
nop
nop
nop
cmp $20256, %rsi
lea addresses_normal_ht+0xbdd4, %rsi
lea addresses_A_ht+0x1b9d4, %rdi
mfence
mov $79, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x5194, %rsi
clflush (%rsi)
nop
cmp $14135, %r9
mov (%rsi), %r11
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xffd4, %rsi
nop
nop
nop
mfence
movl $0x61626364, (%rsi)
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbp
push %rbx
push %rsi

// Store
lea addresses_WC+0x58a0, %r10
nop
nop
nop
nop
nop
cmp $49251, %rbp
movb $0x51, (%r10)
nop
nop
nop
nop
cmp $46087, %rsi

// Store
lea addresses_UC+0x12490, %r14
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
cmp %r14, %r14

// Load
lea addresses_WT+0x46d4, %rsi
nop
cmp %r14, %r14
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
nop
nop
sub $33414, %rbp

// Store
mov $0x39e5b400000009d4, %r10
nop
nop
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
xor $60557, %r14

// Faulty Load
lea addresses_WT+0xfd4, %r10
nop
nop
nop
sub $9485, %r15
movntdqa (%r10), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 4, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'45': 5135, '46': 14088, '49': 961, '48': 462, '00': 716, '44': 467}
00 46 46 46 45 45 44 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 49 49 45 45 48 46 46 46 46 46 45 45 46 46 46 46 46 45 45 44 46 46 46 46 45 45 46 46 46 46 49 45 45 46 46 46 46 46 46 45 46 46 46 49 45 45 45 46 46 46 46 49 45 45 44 46 46 46 46 46 49 45 48 46 46 46 46 45 45 46 46 46 46 49 45 45 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 46 45 45 48 46 46 46 46 45 45 44 46 46 46 46 45 45 46 46 46 46 46 45 45 46 46 46 46 46 46 46 46 45 46 46 46 46 49 45 45 00 46 46 46 46 45 45 46 46 46 46 46 45 45 44 46 46 46 46 46 45 48 46 46 46 46 45 45 46 46 46 46 46 46 46 45 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 48 46 46 46 46 46 45 45 44 46 46 46 46 45 45 44 46 46 46 46 45 45 48 46 46 46 46 46 45 45 45 46 46 46 49 45 45 48 46 46 46 46 45 49 45 46 46 46 46 46 46 45 46 46 46 46 46 45 45 46 46 46 46 45 49 45 45 45 46 46 46 46 46 45 45 46 46 46 46 45 45 46 46 46 46 45 49 45 45 46 46 46 46 46 45 45 46 46 46 46 45 45 46 46 46 46 46 46 45 46 46 46 46 46 49 45 45 46 46 46 46 46 46 45 45 46 46 46 46 46 46 45 48 46 46 46 46 46 46 48 46 46 46 49 45 45 46 46 46 46 46 45 45 45 46 46 46 46 46 46 46 00 46 46 46 49 45 45 46 46 49 49 45 45 00 46 46 46 46 46 46 45 44 46 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 46 45 45 46 46 46 46 46 46 45 45 00 46 46 49 45 45 45 46 46 46 46 46 45 45 46 46 46 46 46 45 45 46 46 46 46 46 46 45 45 46 46 46 46 46 46 45 49 45 46 46 46 46 46 46 45 45 00 46 46 46 46 46 45 45 46 46 46 46 46 46 45 46 46 46 46 49 45 45 46 46 46 46 49 45 45 46 46 46 46 46 46 46 45 45 46 46 46 46 45 45 46 46 46 46 46 46 45 44 46 46 46 46 45 45 48 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 49 45 45 00 46 46 46 49 45 45 46 46 46 46 45 45 46 46 46 46 46 45 45 45 00 46 46 46 46 45 45 46 46 46 46 46 45 46 46 46 46 46 45 45 45 46 46 46 46 46 45 45 46 46 46 46 46 45 45 45 46 46 46 46 49 49 45 00 46 46 46 46 46 45 46 46 46 49 45 48 46 46 46 45 44 46 46 46 46 46 46 45 45 46 46 46 46 46 45 45 44 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 49 45 46 46 46 49 49 45 44 46 46 46 46 46 49 45 46 46 46 46 46 45 45 46 46 46 46 46 45 46 46 46 46 46 45 44 46 46 46 46 46 45 44 46 46 46 46 45 45 46 46 46 46 46 45 45 46 46 46 46 46 45 45 46 46 46 46 46 46 46 45 00 46 46 46 46 45 45 46 46 46 49 45 46 46 46 49 49 45 45 46 46 46 49 45 45 46 46 46 46 46 45 45 44 46 46 46 46 46 46 49 45 45 46 46 46 46 46 46 45 46 46 46 46 46 45 44 00 46 46 46 46 45 48 46 46 46 46 46 49 45 00 46 46 46 46 46 00 46 46 46 46 46 46 45 46 46 46 46 46 45 45 46 46 46 46 45 49 45 46 46 46 46 46 46 45 45 45 48 46 46 49 45 45 46 46 46 46 46 46 45 45 00 46 46 46 46 46 46 46 46 46 46 46 46 45 48 46 46 46 46 49 45 45 48 46 46 46 46 46 45 46 46 46 46 46 45 46 46 46 46 49 45 45 45 46 46 46 46 46 46 46 45 45 44 46 46 46 46 46 46 45 48 46 46 46 46 46 46 46 45 46 46 46 46 45 45 48 46 46 46 46 45 45 46 46 46 46 46 45 45 44 46 46 46 46 45 45 48 46 46 46 46 46 45 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 46 46 46 46 46 45 45 00 46 46 46 46 45 45 46 46 46 46 45 46 46 46 46 00 45 45 46 46 46 46 45 45 44 46
*/
