.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d729, %r9
nop
nop
nop
nop
add %r12, %r12
mov (%r9), %r10w
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x7791, %rsi
lea addresses_normal_ht+0x1d13b, %rdi
nop
nop
nop
add $55783, %r11
mov $11, %rcx
rep movsq
and %r10, %r10
lea addresses_WT_ht+0x10a0d, %rsi
lea addresses_A_ht+0x18069, %rdi
nop
nop
sub %r10, %r10
mov $99, %rcx
rep movsq
dec %r12
lea addresses_UC_ht+0x1b469, %rsi
nop
nop
nop
nop
nop
inc %r10
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0xddd, %rsi
nop
nop
nop
nop
nop
add $17403, %rcx
movw $0x6162, (%rsi)
and $58900, %r12
lea addresses_normal_ht+0x34b9, %rsi
lea addresses_A_ht+0x16a9, %rdi
clflush (%rsi)
nop
cmp $46862, %r11
mov $127, %rcx
rep movsl
nop
nop
nop
nop
and $42401, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r9
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x10da9, %r13
nop
nop
nop
xor %r15, %r15
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rsi
sub $59259, %r13

// Store
lea addresses_A+0x10faf, %r9
nop
nop
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%r9)
cmp %rdi, %rdi

// Store
lea addresses_WT+0x1289, %r12
clflush (%r12)
nop
nop
sub $7705, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
and $0xffffffffffffffc0, %r12
movntdq %xmm5, (%r12)
nop
sub %r9, %r9

// Faulty Load
mov $0xb05c700000006a9, %r9
nop
nop
nop
and $16585, %rdx
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'49': 387, '47': 889, '44': 20553}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 47 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 47 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 47 44 44 44 44 44 44 44 47 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 47 44 47 44 44 47 44 44 44 44 47 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 47 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 47 44 44 44 47 44 44 44 44 47 44 44 44 47 44 44 47 47 44 44 44 44 44 44 44 44 44 44 44 44 47 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 47 44 44 47 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 47 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 47 44 44 44 44 47 44 47 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 47 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 47 47 44 44 44 47 44 44 44 44 44 44 47 47 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 47 44 44 44 44 44 44 47 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44
*/
