.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xff85, %r13
nop
nop
cmp %r12, %r12
mov (%r13), %rsi
nop
nop
nop
xor $62155, %r8
lea addresses_D_ht+0x1d8d5, %rsi
clflush (%rsi)
nop
nop
nop
dec %rbp
mov $0x6162636465666768, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
cmp $28764, %rbp
lea addresses_WT_ht+0x6227, %rsi
lea addresses_normal_ht+0x1b095, %rdi
nop
nop
nop
sub %r13, %r13
mov $69, %rcx
rep movsw
nop
nop
add $15019, %rsi
lea addresses_A_ht+0x18901, %rsi
lea addresses_D_ht+0x1c043, %rdi
nop
add $31178, %r13
mov $28, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0x8469, %rsi
lea addresses_A_ht+0x179d5, %rdi
xor %rbp, %rbp
mov $96, %rcx
rep movsw
add %rbp, %rbp
lea addresses_A_ht+0x1a8d5, %rsi
lea addresses_WC_ht+0x16c55, %rdi
nop
sub %r8, %r8
mov $45, %rcx
rep movsq
nop
nop
cmp $38556, %rcx
lea addresses_WT_ht+0x8995, %rcx
nop
nop
nop
nop
sub $10832, %rdx
movups (%rcx), %xmm4
vpextrq $1, %xmm4, %r12
nop
nop
nop
add $63498, %r12
lea addresses_WC_ht+0xe985, %rcx
nop
nop
nop
nop
inc %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
add $32961, %r12
lea addresses_WC_ht+0xcd5, %rdx
nop
cmp %r13, %r13
mov (%rdx), %r8w
nop
nop
nop
nop
xor $45588, %r12
lea addresses_WC_ht+0x106a1, %rsi
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x59d5, %rsi
lea addresses_WT_ht+0x179f5, %rdi
nop
nop
and $57897, %rdx
mov $97, %rcx
rep movsl
cmp %rsi, %rsi
lea addresses_WC_ht+0x1b4d5, %r12
clflush (%r12)
nop
nop
nop
add $53783, %rbp
mov (%r12), %rsi
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x12295, %r8
clflush (%r8)
dec %r13
mov (%r8), %r12
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1e6d9, %rdi
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
xor $5754, %rbp
lea addresses_UC_ht+0x1e095, %rsi
lea addresses_A_ht+0x118d5, %rdi
nop
nop
nop
nop
xor $46457, %rbp
mov $23, %rcx
rep movsb
nop
sub $39607, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi

// Store
mov $0x34881a0000000cd5, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rbp
movw $0x5152, (%rsi)
dec %r15

// Store
mov $0x24b6c80000000005, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
inc %r11
movw $0x5152, (%rcx)
xor %r15, %r15

// Load
lea addresses_D+0x190d5, %r11
nop
xor $48071, %rdi
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
sub %rsi, %rsi

// Store
mov $0x507c500000000ad5, %rsi
nop
and $13978, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_D+0x190d5, %rcx
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'36': 37}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
