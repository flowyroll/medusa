.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1eee3, %r10
nop
nop
nop
nop
add %r8, %r8
mov (%r10), %r9d
nop
sub $23212, %rbp
lea addresses_A_ht+0x1976d, %rdx
cmp $23938, %r12
mov (%rdx), %r13
nop
cmp %r12, %r12
lea addresses_UC_ht+0x2e3, %rbp
nop
nop
nop
sub %r13, %r13
mov (%rbp), %r8d
nop
add %rbp, %rbp
lea addresses_UC_ht+0x4f4b, %r8
nop
nop
nop
sub $15566, %r13
movups (%r8), %xmm6
vpextrq $1, %xmm6, %r12
nop
add $18166, %r8
lea addresses_UC_ht+0x127a3, %rdx
nop
nop
nop
xor $60680, %r13
movw $0x6162, (%rdx)
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x14f43, %rsi
lea addresses_UC_ht+0x4961, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $38, %rcx
rep movsq
sub $29672, %rsi
lea addresses_D_ht+0x58e3, %r13
nop
nop
sub $59878, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
cmp $26858, %r12
lea addresses_D_ht+0xd063, %rbp
nop
cmp $8469, %r9
mov $0x6162636465666768, %r12
movq %r12, (%rbp)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_UC_ht+0x2f03, %rcx
nop
nop
nop
add %r8, %r8
mov (%rcx), %r13w
nop
nop
nop
nop
xor %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x172e3, %rsi
lea addresses_A+0x3ee3, %rdi
and $14040, %r9
mov $105, %rcx
rep movsl
nop
add $54419, %rsi

// Store
mov $0x7c60c30000000be3, %r14
nop
nop
nop
nop
nop
add $58935, %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
add %r11, %r11

// Load
lea addresses_D+0xfae3, %r14
clflush (%r14)
nop
and $35547, %rsi
mov (%r14), %ax
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_D+0x9a63, %rsi
nop
nop
nop
nop
nop
inc %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
xor $12808, %r9

// Store
mov $0x33b, %r14
nop
nop
add $14958, %r11
movw $0x5152, (%r14)
nop
nop
xor $17232, %r9

// Faulty Load
lea addresses_D+0xfae3, %rax
nop
nop
nop
nop
xor $44949, %rcx
movups (%rax), %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'36': 71}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
