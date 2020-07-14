.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xed6c, %rsi
lea addresses_WC_ht+0x1a36c, %rdi
nop
nop
nop
nop
nop
xor $547, %r9
mov $86, %rcx
rep movsq
cmp %r10, %r10
lea addresses_WT_ht+0x19330, %rsi
lea addresses_WC_ht+0x9da8, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $102, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x1de6c, %rsi
sub $16896, %r12
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x916c, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x61, (%rcx)
nop
inc %r12
lea addresses_WC_ht+0x1b56c, %rcx
nop
nop
nop
nop
and $34775, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
and $15000, %rsi
lea addresses_A_ht+0x13dac, %rsi
nop
and %rcx, %rcx
mov (%rsi), %r12
nop
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x4f6c, %r12
nop
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %r12
vmovntdq %ymm6, (%r12)
cmp $52080, %rdi
lea addresses_WT_ht+0xf56c, %rsi
nop
dec %rbx
mov (%rsi), %edi
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1e96c, %rsi
lea addresses_WC_ht+0x1ee6c, %rdi
clflush (%rsi)
and $28657, %rbx
mov $120, %rcx
rep movsw
nop
nop
nop
add $1579, %rbx
lea addresses_UC_ht+0x1ca16, %rbx
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1bd6c, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
xor $44726, %r10
lea addresses_WC_ht+0x139ec, %r9
clflush (%r9)
nop
nop
nop
nop
add %r10, %r10
movb $0x61, (%r9)
nop
nop
nop
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi

// Store
mov $0x2ecfdd0000000e52, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and $57875, %r11
movl $0x51525354, (%r12)
and %r9, %r9

// Load
lea addresses_WT+0x18b6c, %r13
nop
nop
nop
sub %r14, %r14
movups (%r13), %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
nop
dec %rdi

// Store
mov $0xa7c, %r11
nop
nop
add %r12, %r12
movw $0x5152, (%r11)
nop
nop
nop
cmp %r9, %r9

// Faulty Load
lea addresses_PSE+0x1d56c, %r11
xor $46041, %r9
movb (%r11), %r12b
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'33': 46}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
