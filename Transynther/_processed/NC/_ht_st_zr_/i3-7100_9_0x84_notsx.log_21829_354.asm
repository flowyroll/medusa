.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x6882, %r11
nop
nop
inc %r14
movb (%r11), %r9b
nop
nop
xor $14243, %r9
lea addresses_D_ht+0xef02, %rsi
lea addresses_UC_ht+0x63da, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $52, %rcx
rep movsl
xor $10475, %rdi
lea addresses_WT_ht+0x1786a, %r11
nop
nop
nop
sub $8159, %rax
mov (%r11), %rdi
cmp %r14, %r14
lea addresses_WT_ht+0x7159, %rsi
lea addresses_UC_ht+0xfabf, %rdi
nop
nop
nop
cmp $30294, %r11
mov $93, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_WC_ht+0x9c6a, %rsi
lea addresses_WC_ht+0xe38a, %rdi
clflush (%rdi)
nop
and $59494, %rbx
mov $118, %rcx
rep movsl
nop
nop
nop
nop
cmp $34954, %rcx
lea addresses_normal_ht+0xebc2, %rax
clflush (%rax)
nop
nop
nop
nop
nop
add %r14, %r14
movb $0x61, (%rax)
xor $2134, %rcx
lea addresses_WT_ht+0x18bea, %rsi
lea addresses_D_ht+0xbdaa, %rdi
nop
nop
xor %rbx, %rbx
mov $35, %rcx
rep movsl
nop
xor %rbx, %rbx
lea addresses_WT_ht+0xd06a, %rax
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdi

// Store
lea addresses_UC+0x846a, %r11
nop
nop
nop
and $19221, %r13
mov $0x5152535455565758, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r11)
nop
add %rax, %rax

// Store
lea addresses_normal+0xa0a, %r14
nop
dec %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_normal+0x19bee, %rdi
nop
nop
and $20409, %rax
movl $0x51525354, (%rdi)
add $39911, %rax

// Store
lea addresses_normal+0x12a6a, %r8
nop
inc %r10
movl $0x51525354, (%r8)
nop
nop
nop
nop
sub $28930, %rax

// Store
mov $0x6a, %r8
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%r8)

// Exception!!!
nop
nop
nop
mov (0), %r13
nop
nop
inc %rax

// Store
mov $0x41c0080000000084, %r13
nop
and %rdi, %rdi
movw $0x5152, (%r13)
nop
nop
nop
xor $60199, %r13

// Faulty Load
mov $0x76c308000000006a, %r8
nop
nop
and $38493, %r14
mov (%r8), %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'46': 1, '00': 309, '52': 21519}
00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
