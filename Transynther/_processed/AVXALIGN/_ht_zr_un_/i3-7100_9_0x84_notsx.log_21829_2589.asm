.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x3291, %r9
add $16009, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
and $52255, %r12
lea addresses_WT_ht+0x1cd91, %rsi
lea addresses_A_ht+0xf351, %rdi
nop
add %r11, %r11
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x4891, %rsi
lea addresses_normal_ht+0x1be91, %rdi
clflush (%rsi)
add %r11, %r11
mov $64, %rcx
rep movsq
nop
dec %r11
lea addresses_UC_ht+0x2e91, %r9
nop
xor $49373, %rsi
movw $0x6162, (%r9)
nop
nop
xor %r9, %r9
lea addresses_D_ht+0x2239, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp $39615, %r9
mov (%rsi), %r12d
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x95ef, %r11
nop
nop
nop
nop
nop
xor $61619, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
nop
cmp $27807, %r14
lea addresses_D_ht+0xba91, %rsi
lea addresses_WT_ht+0x16c91, %rdi
nop
nop
nop
nop
nop
xor $64306, %r14
mov $103, %rcx
rep movsb
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1291, %r9
nop
dec %r14
mov (%r9), %r12d
nop
nop
nop
xor $61860, %r12
lea addresses_WT_ht+0x18cd1, %rsi
lea addresses_A_ht+0x1bdf1, %rdi
nop
nop
sub $65067, %rbp
mov $18, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xb791, %rsi
lea addresses_A_ht+0xb515, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $26, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xe291, %rsi
lea addresses_WT_ht+0x7db9, %rdi
inc %rbp
mov $33, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_A_ht+0x15891, %rdi
nop
nop
nop
nop
xor $27737, %r11
movw $0x6162, (%rdi)
and %r12, %r12
lea addresses_normal_ht+0x1ea91, %rsi
lea addresses_UC_ht+0x11a91, %rdi
nop
nop
nop
nop
inc %r9
mov $16, %rcx
rep movsw
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbp
push %rcx

// Store
lea addresses_D+0xce91, %r14
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r12
movq %r12, (%r14)
nop
cmp %r13, %r13

// Faulty Load
lea addresses_WT+0x1d291, %r12
nop
nop
nop
add $27764, %r11
movaps (%r12), %xmm6
vpextrq $1, %xmm6, %r14
lea oracles, %r13
and $0xff, %r14
shlq $12, %r14
mov (%r13,%r14,1), %r14
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'49': 2024, '46': 11381, '45': 4520, '44': 3869, 'a8': 1, '00': 34}
46 46 46 44 46 46 45 46 46 44 49 46 44 49 46 44 45 46 44 46 44 46 46 45 46 46 44 46 46 45 46 46 45 46 46 44 46 46 44 46 46 45 44 46 46 45 46 46 44 46 46 44 44 46 44 49 46 44 45 46 45 44 49 46 46 44 49 46 45 46 46 44 46 45 44 45 46 45 46 46 44 46 46 44 49 46 46 44 49 46 44 46 46 45 49 46 46 45 49 46 44 46 46 45 46 46 44 49 46 45 49 46 46 44 46 46 45 46 46 44 46 46 44 49 46 45 46 46 45 44 46 46 45 44 46 44 46 46 46 44 46 46 45 49 46 45 46 46 44 46 46 45 46 46 45 46 45 46 46 45 49 46 45 44 46 46 44 46 45 46 46 45 44 46 44 46 46 44 49 46 45 49 46 45 46 45 49 46 45 46 46 45 46 46 45 44 46 46 46 45 46 44 46 46 45 44 46 44 46 49 46 45 46 46 45 46 44 46 46 45 46 46 44 46 45 44 46 49 46 44 46 44 44 46 49 49 46 46 46 46 49 46 46 49 45 46 46 44 46 49 46 46 44 00 46 46 46 49 45 44 00 46 44 00 46 46 46 46 45 46 46 49 46 46 46 46 45 46 44 46 44 46 46 46 46 49 46 46 46 44 49 46 45 49 44 46 44 45 46 45 46 46 46 46 46 46 46 46 46 49 46 45 46 46 46 49 46 45 49 46 46 49 44 46 46 46 46 46 49 44 45 49 45 46 46 46 45 49 45 46 46 46 44 44 46 45 44 46 46 44 46 46 45 46 46 45 46 44 46 45 49 46 44 46 46 44 46 46 45 44 46 44 46 45 46 46 44 44 46 44 49 46 45 46 46 49 46 45 49 46 45 49 46 44 46 46 44 46 44 46 46 44 46 45 44 46 46 44 46 46 45 46 46 44 46 46 46 49 46 44 46 46 44 46 46 44 49 46 46 44 49 46 44 46 44 46 45 44 46 46 44 46 44 46 46 44 46 44 46 46 44 49 46 44 46 46 44 49 44 46 45 49 46 44 46 46 44 46 46 44 46 46 44 46 44 49 46 44 46 46 45 45 46 45 49 46 45 46 46 44 49 46 45 46 46 46 45 49 46 45 49 46 44 46 45 45 46 45 49 46 44 49 46 45 46 46 45 46 46 45 44 46 46 45 49 46 46 44 49 46 46 49 46 45 44 46 44 46 46 45 46 45 46 46 45 46 46 45 46 46 44 49 46 45 44 46 46 46 45 46 44 49 46 45 49 46 45 46 46 45 46 46 44 49 46 45 46 46 45 46 46 45 44 49 46 45 44 46 46 45 46 46 45 44 46 46 44 46 46 44 46 44 46 46 45 46 46 44 49 46 45 46 46 45 46 46 45 46 46 45 46 46 46 49 46 45 46 46 44 46 46 45 49 46 46 45 46 46 45 46 45 46 46 45 44 46 46 45 49 46 45 49 46 45 49 46 45 46 46 44 46 46 44 49 46 46 44 46 46 45 49 46 45 46 46 45 46 46 45 46 46 45 46 46 44 46 45 44 46 45 46 46 44 49 46 45 46 46 45 49 46 46 45 44 46 45 49 46 45 46 46 45 46 46 46 45 46 46 45 46 46 45 46 46 44 46 46 44 46 46 45 46 46 44 46 46 44 49 46 46 44 49 46 44 46 46 45 44 46 44 46 46 44 49 46 45 46 46 44 46 46 44 46 46 45 44 46 46 44 46 46 45 46 46 45 46 46 45 44 49 46 45 46 46 44 49 46 45 44 49 46 46 44 49 46 45 49 46 44 46 46 44 46 46 45 46 46 45 44 46 46 45 44 46 46 45 44 46 44 46 46 45 46 46 45 44 49 46 46 45 45 46 46 45 46 44 46 46 49 46 45 44 46 46 44 46 46 45 44 46 46 45 46 46 46 46 49 46 45 46 45 44 46 45 49 46 45 46 46 45 46 46 45 46 46 45 49 46 45 46 46 45 46 46 45 46 46 45 46 46 45 49 46 45 46 46 44 49 46 45 46 46 45 44 49 46 45 46 46 45 49 46 46 44 49 46 45 46 46 44 49 46 45 46 46 45 49 46 44 49 46 45 44 46 46 44 46 46 44 49 46 46 44 46 46 44 49 46 45 49 46 44 45 46 44 46 46 45 46 46 45 49 46 44 45 46 45 46 46 45 44 46 46 46 45 46 46 45 49 46 45 44 46 45 46 46 44 49 46 46 45 44 45 46 46 44 46 45 44 46
*/
