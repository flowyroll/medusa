.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a772, %r15
nop
nop
nop
nop
nop
mfence
movb $0x61, (%r15)
nop
dec %r9
lea addresses_D_ht+0xd8c2, %r10
nop
inc %r14
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_UC_ht+0x1860b, %rsi
lea addresses_WC_ht+0xfafe, %rdi
inc %r9
mov $65, %rcx
rep movsb
nop
lfence
lea addresses_WT_ht+0x6372, %rcx
nop
nop
nop
and %r14, %r14
movw $0x6162, (%rcx)
nop
nop
nop
inc %r13
lea addresses_A_ht+0xef72, %rsi
lea addresses_UC_ht+0x15f72, %rdi
and %r15, %r15
mov $109, %rcx
rep movsb
nop
nop
cmp %r14, %r14
lea addresses_A_ht+0x107f2, %rsi
lea addresses_UC_ht+0x968e, %rdi
nop
dec %r14
mov $53, %rcx
rep movsb
nop
nop
nop
nop
nop
and $40255, %rsi
lea addresses_D_ht+0x142f2, %rsi
lea addresses_normal_ht+0x36b2, %rdi
nop
nop
cmp $35912, %r9
mov $78, %rcx
rep movsq
cmp $8051, %rsi
lea addresses_WC_ht+0xcd72, %r8
nop
nop
add $37409, %r10
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm0
vpextrq $0, %xmm0, %rcx
nop
inc %r13
lea addresses_UC_ht+0x1b472, %rsi
lea addresses_UC_ht+0x15b3e, %rdi
dec %r8
mov $52, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1a52c, %rsi
lea addresses_WT_ht+0x7b72, %rdi
clflush (%rsi)
sub $17340, %rbp
mov $91, %rcx
rep movsq
nop
cmp %r14, %r14
lea addresses_UC_ht+0x18472, %rsi
lea addresses_normal_ht+0x1b772, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rbp, %rbp
mov $48, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $40761, %rdi
lea addresses_normal_ht+0x63b2, %rdi
nop
nop
sub $29817, %r14
movb $0x61, (%rdi)
nop
nop
and %r9, %r9
lea addresses_D_ht+0xac02, %r8
nop
nop
nop
sub $47371, %rdi
movb (%r8), %r10b
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rbx
push %rdi

// Load
lea addresses_normal+0xe472, %rbp
nop
nop
and %rdi, %rdi
movb (%rbp), %r13b
nop
and $8458, %rdi

// Store
mov $0x185e720000000b92, %rbx
nop
nop
nop
nop
nop
cmp $37680, %r10
movw $0x5152, (%rbx)
nop
nop
nop
dec %r10

// Store
lea addresses_RW+0x14472, %r11
dec %rbx
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
and $58532, %rbp

// Load
lea addresses_UC+0x1b406, %rdi
nop
nop
nop
nop
xor $34215, %r11
vmovups (%rdi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
dec %rdi

// Store
lea addresses_D+0x1bcb2, %rbx
nop
nop
nop
dec %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%rbx)
nop
nop
cmp %r10, %r10

// Store
lea addresses_RW+0x144d4, %rbx
nop
xor $257, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
nop
add $18202, %r13

// Faulty Load
lea addresses_D+0x2f72, %r10
clflush (%r10)
nop
nop
nop
xor %rbp, %rbp
vmovups (%r10), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdi
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 23}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
