.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14563, %rax
nop
nop
nop
nop
nop
and %r9, %r9
mov (%rax), %r11d
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0xb303, %r8
nop
cmp $50465, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r8)
inc %r11
lea addresses_A_ht+0x15c63, %r13
nop
nop
cmp %r8, %r8
mov (%r13), %r9w
xor %rcx, %rcx
lea addresses_D_ht+0x1d903, %r8
nop
nop
nop
nop
nop
sub $54633, %rbx
movups (%r8), %xmm5
vpextrq $0, %xmm5, %rcx
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x2101, %rax
cmp %r9, %r9
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x9903, %rsi
lea addresses_normal_ht+0x19f91, %rdi
nop
nop
inc %r11
mov $33, %rcx
rep movsq
nop
nop
cmp $53183, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Load
mov $0x810df0000000f03, %rsi
inc %r11
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
xor %r15, %r15

// Store
lea addresses_D+0x12d03, %rsi
nop
nop
nop
nop
add $58156, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
xor %r15, %r15

// Store
lea addresses_WT+0x16903, %r15
nop
nop
nop
sub $36027, %r12
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
nop
add $35331, %r15

// Store
lea addresses_A+0x17783, %rsi
nop
and $33548, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
sub $13282, %r8

// Store
lea addresses_US+0x5903, %r8
nop
nop
nop
inc %r12
movl $0x51525354, (%r8)
nop
nop
nop
nop
add %r12, %r12

// Load
mov $0x38df2b0000000103, %r11
nop
sub $36710, %r12
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
cmp %r8, %r8

// Store
mov $0x2bacee00000009fb, %r8
nop
nop
nop
nop
sub $5884, %rsi
mov $0x5152535455565758, %rbx
movq %rbx, (%r8)
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
mov $0x39ded40000000103, %r11
xor $2326, %r8
movb (%r11), %bl
lea oracles, %r14
and $0xff, %rbx
shlq $12, %rbx
mov (%r14,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'00': 1}
00
*/
