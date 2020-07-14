.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x12835, %rbx
clflush (%rbx)
nop
nop
and %rsi, %rsi
movb (%rbx), %r12b
nop
nop
nop
nop
cmp $42648, %r15
lea addresses_WT_ht+0x8355, %rsi
lea addresses_D_ht+0x6955, %rdi
nop
nop
and %r12, %r12
mov $123, %rcx
rep movsb
sub $64900, %rdi
lea addresses_WC_ht+0x3255, %rsi
lea addresses_WT_ht+0x555, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r9
mov $117, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1dbfd, %rsi
lea addresses_A_ht+0x1820f, %rdi
nop
nop
nop
dec %r9
mov $117, %rcx
rep movsb
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x6cf9, %rsi
lea addresses_WC_ht+0x9055, %rdi
nop
nop
nop
nop
cmp $33164, %rbp
mov $69, %rcx
rep movsb
nop
nop
nop
sub $37013, %rcx
lea addresses_normal_ht+0x1a815, %rsi
lea addresses_WT_ht+0x6135, %rdi
nop
nop
and %r9, %r9
mov $17, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_D_ht+0x2d55, %r9
nop
nop
nop
nop
nop
sub $14883, %rdi
mov (%r9), %bp
nop
nop
nop
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x17375, %r12
nop
nop
nop
inc %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%r12)
nop
nop
add $5540, %rcx
lea addresses_D_ht+0x19555, %rbp
nop
cmp $65290, %rbx
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
nop
nop
add $639, %rbx
lea addresses_normal_ht+0x15555, %r9
nop
nop
add %rdi, %rdi
movups (%r9), %xmm0
vpextrq $0, %xmm0, %rbx
nop
inc %r15
lea addresses_WC_ht+0x7955, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rsi), %r15b
nop
nop
xor $13325, %r12
lea addresses_WT_ht+0xb715, %rcx
nop
add $64469, %r12
mov (%rcx), %r15w
nop
nop
nop
nop
and $42250, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdx

// Load
mov $0x5e8ebc000000028b, %r15
nop
nop
sub %r11, %r11
movb (%r15), %dl
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_normal+0x7c55, %r8
clflush (%r8)
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r8)
dec %r8

// Store
lea addresses_A+0x1bd1d, %r15
nop
nop
nop
nop
dec %rbp
movb $0x51, (%r15)
nop
nop
nop
nop
nop
xor $57540, %rbp

// Store
lea addresses_US+0x14d55, %rcx
xor %r15, %r15
movl $0x51525354, (%rcx)
nop
nop
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x6d55, %r11
nop
nop
xor %rdx, %rdx
mov (%r11), %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'54': 18}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
