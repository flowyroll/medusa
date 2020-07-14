.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x15bb9, %r11
clflush (%r11)
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r8
movq %r8, (%r11)
nop
nop
nop
nop
nop
mfence
lea addresses_UC_ht+0x1499, %rsi
clflush (%rsi)
nop
nop
nop
dec %r12
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x185d9, %rsi
nop
nop
nop
inc %r9
mov (%rsi), %r12
nop
add %r11, %r11
lea addresses_WC_ht+0x19757, %rsi
lea addresses_normal_ht+0x6099, %rdi
clflush (%rsi)
nop
nop
dec %r8
mov $65, %rcx
rep movsl
nop
sub $6058, %rdi
lea addresses_UC_ht+0x1c059, %rdx
nop
add $29020, %r8
mov $0x6162636465666768, %r12
movq %r12, (%rdx)
nop
cmp %r15, %r15
lea addresses_A_ht+0x3d59, %r9
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x10bb9, %rsi
nop
nop
nop
nop
xor $11208, %rcx
mov (%rsi), %r8d
sub %rdx, %rdx
lea addresses_normal_ht+0xec79, %rsi
lea addresses_normal_ht+0x11899, %rdi
nop
sub $34943, %rdx
mov $91, %rcx
rep movsb
nop
and $60052, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x99, %rsi
nop
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
cmp %r8, %r8

// REPMOV
lea addresses_normal+0x7799, %rsi
lea addresses_D+0x13899, %rdi
nop
nop
nop
inc %rdx
mov $92, %rcx
rep movsb
sub $14711, %rdi

// Load
lea addresses_UC+0x10c1d, %rsi
nop
cmp $47247, %rdx
mov (%rsi), %r11d
nop
nop
nop
nop
nop
xor $43602, %r15

// Store
lea addresses_RW+0xd299, %r8
add %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
nop
and $52205, %rdi

// Store
lea addresses_WC+0x2899, %r12
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r12)
nop
nop
nop
nop
nop
sub $13987, %rcx

// Load
lea addresses_D+0x10099, %rdx
and %rcx, %rcx
movups (%rdx), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
dec %r15

// Store
lea addresses_PSE+0x1b19, %rcx
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_D+0x10099, %r15
nop
nop
nop
nop
nop
add $10060, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
cmp $30438, %r8

// Load
mov $0x121f010000000499, %r12
nop
nop
nop
nop
nop
add $22386, %rsi
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_D+0x10099, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add %rcx, %rcx
mov (%r11), %dx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
