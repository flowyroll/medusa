.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10826, %rax
clflush (%rax)
sub $19560, %r10
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rax)
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x7826, %rax
nop
nop
nop
nop
xor $33651, %r8
movw $0x6162, (%rax)
cmp %rax, %rax
lea addresses_WT_ht+0x67a6, %rsi
lea addresses_normal_ht+0x18da6, %rdi
clflush (%rsi)
nop
nop
add $49242, %r9
mov $22, %rcx
rep movsw
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x7346, %rsi
nop
nop
nop
nop
nop
cmp $42207, %rdi
mov (%rsi), %r12w
add %r10, %r10
lea addresses_A_ht+0x3826, %rax
nop
xor %rdi, %rdi
movb (%rax), %r8b
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xbd13, %rsi
lea addresses_A_ht+0x11e86, %rdi
nop
nop
cmp $53780, %r8
mov $85, %rcx
rep movsq
nop
nop
sub %r12, %r12
lea addresses_normal_ht+0x8dae, %rsi
lea addresses_normal_ht+0x93de, %rdi
clflush (%rsi)
nop
and $47839, %rax
mov $95, %rcx
rep movsb
nop
nop
nop
xor %r8, %r8
lea addresses_UC_ht+0x18826, %rdi
clflush (%rdi)
nop
cmp %r12, %r12
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1be16, %r15
add $29772, %r9
movw $0x5152, (%r15)
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_PSE+0x1d826, %r10
nop
xor %r12, %r12
mov (%r10), %rsi
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0x1d826, %r15
inc %r11
movb $0x51, (%r15)
nop
nop
nop
dec %r9

// REPMOV
lea addresses_WT+0xa296, %rsi
lea addresses_D+0xe6ba, %rdi
dec %r10
mov $69, %rcx
rep movsq
xor $18250, %rsi

// Store
lea addresses_WC+0xb4b6, %r10
nop
nop
nop
nop
and $10824, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
inc %rsi

// Store
lea addresses_RW+0x17026, %r11
nop
nop
nop
add $28726, %rsi
movb $0x51, (%r11)
cmp %r11, %r11

// Faulty Load
lea addresses_PSE+0x1d826, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
vmovntdqa (%r9), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'33': 1, '47': 92, '2a': 5, '44': 2795, '08': 1, '68': 1, '39': 3848, '46': 5510, '49': 2326, '00': 7248, '23': 1, '40': 1}
00 39 44 46 39 46 46 46 46 44 49 46 39 39 39 39 46 00 39 49 00 00 44 00 46 44 46 49 46 46 49 39 00 49 39 46 39 46 49 00 00 46 00 39 00 44 00 49 00 49 39 46 00 39 00 46 00 00 39 46 00 39 39 46 44 46 49 39 00 44 39 46 00 00 00 00 39 39 46 00 46 46 39 46 44 39 46 00 00 46 00 47 00 39 49 39 46 44 39 46 49 39 00 49 00 39 44 00 39 46 00 00 49 39 46 39 39 00 49 39 46 49 00 46 39 46 46 00 00 44 46 39 00 49 39 46 46 00 00 46 39 46 39 00 46 46 49 39 00 44 00 39 44 46 00 46 46 49 44 46 39 46 49 39 49 49 46 49 39 46 49 39 46 46 46 46 44 39 46 44 00 39 44 46 00 46 00 00 46 00 46 39 46 00 44 46 49 46 00 46 46 49 00 39 00 00 44 39 00 44 46 39 39 00 46 39 00 44 00 00 46 46 46 46 44 46 44 00 39 46 44 00 44 00 46 46 00 46 00 39 00 00 46 49 00 39 00 00 00 44 39 39 46 46 49 39 46 46 46 46 00 00 44 46 49 39 49 39 00 00 39 39 39 39 44 44 46 46 39 00 39 46 44 46 44 44 39 46 46 39 00 00 00 00 00 44 00 49 00 46 00 49 00 44 46 00 46 46 44 46 46 00 00 00 44 00 46 46 46 00 44 39 46 46 39 46 39 46 44 39 46 00 00 00 00 00 00 46 00 46 44 39 00 46 00 49 39 49 44 46 46 00 00 39 44 46 46 00 39 00 39 00 46 46 46 00 00 39 46 00 00 00 46 44 46 46 44 46 46 00 46 00 46 49 00 44 46 00 44 39 49 39 00 00 39 39 44 46 00 46 46 49 39 46 00 39 00 46 44 44 46 46 46 00 46 00 39 49 00 46 00 00 49 39 44 00 39 44 00 00 00 00 46 00 00 00 46 44 39 00 00 39 49 00 44 00 39 46 44 00 49 46 00 39 46 49 00 46 00 49 44 46 49 46 00 00 00 46 46 46 00 44 49 46 00 39 00 44 00 46 39 00 47 39 00 00 39 39 44 39 46 49 00 00 44 39 00 39 39 39 39 46 44 46 00 00 39 00 49 39 46 00 39 00 00 44 46 00 46 00 46 00 39 39 00 39 39 00 46 00 46 00 49 46 44 39 00 00 44 46 00 39 49 00 46 49 39 46 49 44 46 49 39 00 46 39 49 46 00 00 00 46 44 46 00 46 00 39 46 00 49 39 46 00 44 46 49 39 39 49 00 39 00 47 39 00 00 44 00 46 46 00 39 44 46 00 39 46 39 39 44 00 39 46 49 46 39 00 00 44 39 00 44 00 39 46 39 00 44 00 44 46 49 00 00 46 00 39 39 46 00 00 44 00 00 44 39 44 44 44 46 00 39 46 00 00 00 46 00 49 39 49 46 47 39 00 00 46 49 44 39 00 39 00 49 46 46 00 44 00 39 44 39 00 46 00 00 00 00 39 00 00 46 46 49 46 00 39 46 44 00 00 44 39 46 00 46 00 44 44 49 44 46 44 39 46 49 46 44 00 49 00 39 39 46 00 39 00 00 39 39 00 39 00 46 46 39 00 39 00 44 44 39 00 49 00 46 39 39 49 49 46 44 39 39 00 00 49 46 44 44 39 44 00 39 00 49 46 46 00 44 46 47 39 39 46 46 46 46 46 46 39 00 39 00 00 39 46 44 46 46 39 46 44 39 46 44 00 00 46 46 46 46 00 39 00 49 39 39 00 46 49 39 00 44 46 46 46 00 44 44 39 00 39 39 46 46 44 39 44 00 49 46 44 46 46 44 39 00 00 39 00 00 46 00 46 46 00 00 44 39 49 39 46 00 39 00 47 44 00 44 39 46 44 00 00 39 00 46 00 44 46 46 49 46 49 39 00 39 00 46 46 44 46 44 39 49 46 00 00 00 46 00 00 00 00 46 00 46 00 44 00 46 00 49 00 39 44 46 46 00 49 49 00 49 46 00 44 39 49 39 46 00 49 46 00 49 00 00 46 00 00 46 39 39 00 44 46 49 39 46 00 44 49 39 46 00 44 46 49 00 39 00 00 39 00 49 39 39 00 39 00 46 49 46 00 44 39 49 39 46 44 39 00 00 00 00 39 44 00 46 46 49 46 39 44 46 49 00 46 49 39 46 44 46 00 44 00 39 00 39 46 39 00 49 39 00 39 00 46
*/
