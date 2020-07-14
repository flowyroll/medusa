.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10ad5, %rsi
lea addresses_WC_ht+0xa7d5, %rdi
nop
nop
nop
nop
nop
sub %r11, %r11
mov $89, %rcx
rep movsl
nop
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x12095, %r15
nop
and $2885, %rdi
movl $0x61626364, (%r15)
nop
nop
nop
nop
dec %r11
lea addresses_D_ht+0x1df97, %rsi
lea addresses_A_ht+0x83d5, %rdi
nop
nop
nop
sub $65291, %r14
mov $76, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %r11
lea addresses_A_ht+0x7be3, %rsi
lea addresses_normal_ht+0xa6d5, %rdi
clflush (%rsi)
nop
nop
nop
add $22752, %r8
mov $18, %rcx
rep movsq
nop
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x180d9, %rsi
lea addresses_normal_ht+0x36d5, %rdi
nop
nop
nop
nop
nop
cmp $38902, %r15
mov $22, %rcx
rep movsw
nop
cmp %r10, %r10
lea addresses_D_ht+0x5485, %r8
clflush (%r8)
nop
nop
nop
nop
xor %r14, %r14
movb $0x61, (%r8)
nop
nop
inc %rdi
lea addresses_UC_ht+0x17d, %rsi
lea addresses_normal_ht+0x10ad5, %rdi
nop
cmp $5727, %r15
mov $97, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x11b5d, %rsi
lea addresses_UC_ht+0x1d577, %rdi
xor $38322, %r14
mov $43, %rcx
rep movsb
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rsi

// Store
lea addresses_WT+0x13545, %r11
nop
nop
xor $46968, %rax
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%r11)
nop
cmp $39265, %r11

// Faulty Load
lea addresses_US+0x18ad5, %r12
nop
sub $7778, %rsi
mov (%r12), %ax
lea oracles, %r12
and $0xff, %rax
shlq $12, %rax
mov (%r12,%rax,1), %rax
pop %rsi
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'00': 6}
00 00 00 00 00 00
*/
