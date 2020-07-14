.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x115eb, %rdi
nop
inc %r13
mov (%rdi), %dx
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x12eeb, %r15
nop
nop
nop
sub %r13, %r13
mov (%r15), %r8w
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0xb36e, %rsi
lea addresses_UC_ht+0x16ddb, %rdi
nop
nop
nop
sub %r15, %r15
mov $8, %rcx
rep movsw
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x12c2b, %r10
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x9d, %r15
nop
and $7053, %rsi
mov (%r15), %di
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xb9eb, %rsi
sub %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
xor %r8, %r8
lea addresses_D_ht+0x624b, %rsi
lea addresses_WT_ht+0x172db, %rdi
nop
nop
nop
nop
nop
add $27791, %r8
mov $40, %rcx
rep movsw
nop
dec %r10
lea addresses_normal_ht+0x7213, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %r8w
nop
and $58639, %r15
lea addresses_normal_ht+0xe9eb, %rsi
nop
cmp %r10, %r10
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
nop
sub %r13, %r13
lea addresses_A_ht+0xc5eb, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r8)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x111eb, %rsi
lea addresses_WC_ht+0x11beb, %rdi
sub $12641, %r13
mov $78, %rcx
rep movsb
nop
sub $48918, %rdi
lea addresses_A_ht+0x7feb, %rcx
nop
xor %r10, %r10
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
sub $12128, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rsi

// Store
lea addresses_WT+0x59eb, %r11
clflush (%r11)
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
nop
xor $28842, %r11

// Store
mov $0x1f9, %r9
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r9)
add $7706, %r8

// Store
lea addresses_D+0x7ceb, %rsi
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm2
movups %xmm2, (%rsi)
nop
and $12969, %r8

// Faulty Load
lea addresses_WT+0x59eb, %rbp
nop
nop
nop
nop
xor %r11, %r11
mov (%rbp), %r9w
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 64}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
