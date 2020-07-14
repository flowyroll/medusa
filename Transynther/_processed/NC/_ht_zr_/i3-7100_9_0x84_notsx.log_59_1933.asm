.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x30c1, %r9
nop
nop
xor $26841, %rbx
mov (%r9), %rbp
and %r11, %r11
lea addresses_WC_ht+0xdce5, %rsi
lea addresses_UC_ht+0x1b9a1, %rdi
nop
nop
nop
nop
cmp %r9, %r9
mov $5, %rcx
rep movsq
nop
sub %rbp, %rbp
lea addresses_normal_ht+0x183c1, %r11
nop
nop
sub $29401, %rbp
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x17077, %rsi
nop
nop
nop
nop
cmp %rbx, %rbx
movl $0x61626364, (%rsi)
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x48c1, %rsi
lea addresses_normal_ht+0x70c1, %rdi
nop
nop
nop
dec %rbp
mov $13, %rcx
rep movsl
nop
nop
nop
xor $52929, %rdi
lea addresses_WT_ht+0x1a981, %rdi
nop
nop
nop
nop
cmp $62529, %rbx
mov (%rdi), %r11w
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x42a1, %rbp
nop
nop
nop
sub %r11, %r11
movups (%rbp), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
nop
nop
add $12929, %rsi
lea addresses_A_ht+0x10490, %rbx
nop
sub $47922, %rdi
movb $0x61, (%rbx)
nop
nop
nop
sub $2301, %rcx
lea addresses_WT_ht+0x106c1, %rsi
lea addresses_WC_ht+0x12f61, %rdi
nop
nop
nop
dec %r12
mov $37, %rcx
rep movsw
nop
inc %rcx
lea addresses_D_ht+0x103c1, %rdi
add $37075, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%rdi)
nop
nop
xor $48183, %rsi
lea addresses_UC_ht+0x1e533, %r9
clflush (%r9)
nop
nop
nop
nop
and $1348, %rcx
movb $0x61, (%r9)
nop
and %rbx, %rbx
lea addresses_WT_ht+0x1a1c1, %r11
nop
nop
nop
nop
dec %rbx
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
dec %r9
lea addresses_A_ht+0xd1c1, %r12
nop
nop
nop
nop
xor $6851, %r9
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
nop
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0xc569, %rsi
nop
nop
xor $42026, %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movaps %xmm0, (%rsi)
nop
nop
nop
nop
dec %r8

// Load
lea addresses_WT+0x34c1, %rsi
nop
nop
cmp %r11, %r11
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rbp
and %r13, %r13

// Load
lea addresses_PSE+0x1cc31, %rbp
clflush (%rbp)
nop
nop
add %rsi, %rsi
mov (%rbp), %r11d
nop
nop
nop
xor %r8, %r8

// Load
lea addresses_normal+0x1fdc1, %r11
clflush (%r11)
nop
nop
nop
nop
inc %rsi
movb (%r11), %dl
nop
xor $29701, %rdx

// Store
mov $0x54637100000000c1, %r12
nop
nop
nop
add $55096, %r8
movl $0x51525354, (%r12)
nop
cmp $21141, %r8

// Faulty Load
mov $0x54637100000000c1, %r8
nop
nop
nop
nop
nop
and $50291, %r11
movups (%r8), %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r12
and $0xff, %rsi
shlq $12, %rsi
mov (%r12,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'49': 7, '00': 51, '48': 1}
00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 48 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00
*/
