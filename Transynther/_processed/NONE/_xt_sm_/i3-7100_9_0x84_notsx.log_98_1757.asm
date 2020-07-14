.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1dc70, %r12
nop
nop
nop
nop
cmp %rdx, %rdx
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
xor $57077, %r11
lea addresses_WT_ht+0x38, %rsi
lea addresses_UC_ht+0xbeb4, %rdi
nop
nop
add %r11, %r11
mov $29, %rcx
rep movsb
nop
nop
dec %r12
lea addresses_WC_ht+0x11c5c, %r13
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
and $22193, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x1470c, %r11
nop
nop
nop
nop
nop
sub $14936, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
nop
sub %r14, %r14

// REPMOV
lea addresses_PSE+0x18818, %rsi
lea addresses_D+0xd610, %rdi
nop
nop
xor $19718, %r12
mov $41, %rcx
rep movsw
nop
nop
cmp %r14, %r14

// Store
lea addresses_A+0x1d9d0, %r12
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
cmp %r12, %r12

// Store
mov $0x990, %rdi
nop
nop
nop
sub $37401, %rcx
movw $0x5152, (%rdi)
nop
nop
nop
nop
add $10537, %r14

// Store
lea addresses_PSE+0x1c10, %rdi
nop
nop
and $60963, %r14
movl $0x51525354, (%rdi)
nop
sub %rdi, %rdi

// Load
lea addresses_A+0x19c10, %rsi
nop
nop
nop
xor $49348, %rcx
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
nop
nop
add %rsi, %rsi

// Store
mov $0xd20, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rsi
movb $0x51, (%r12)
inc %r12

// Store
lea addresses_A+0x19c10, %r11
nop
nop
dec %r15
movw $0x5152, (%r11)
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0x10190, %r12
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovaps %ymm7, (%r12)
nop
nop
nop
nop
nop
add $41592, %r14

// Store
lea addresses_WC+0x7804, %r14
nop
sub %rsi, %rsi
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
xor $944, %r9

// Faulty Load
lea addresses_A+0x19c10, %rdi
nop
xor %r14, %r14
mov (%rdi), %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': True, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'52': 98}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
