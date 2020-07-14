.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d96, %rcx
sub %rdx, %rdx
mov (%rcx), %eax
nop
nop
cmp $19683, %rdx
lea addresses_normal_ht+0x3112, %rsi
lea addresses_WC_ht+0xce94, %rdi
nop
nop
nop
nop
nop
cmp $19947, %r14
mov $39, %rcx
rep movsb
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xb696, %rdx
nop
nop
nop
nop
add $62514, %r12
mov (%rdx), %rsi
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x17d96, %rsi
lea addresses_WC_ht+0x65d6, %rdi
nop
cmp $38417, %rdx
mov $26, %rcx
rep movsl
nop
add $34739, %rdi
lea addresses_WC_ht+0x1634e, %r14
sub %rsi, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %r14
movaps %xmm7, (%r14)
cmp $44666, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x12796, %rdi
nop
nop
nop
sub $4764, %r14
movw $0x5152, (%rdi)
nop
lfence

// Store
lea addresses_normal+0xb53, %r11
nop
nop
nop
nop
xor %r12, %r12
movl $0x51525354, (%r11)
nop
nop
nop
sub $10894, %r14

// Store
lea addresses_PSE+0x1d896, %r12
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
xor $60456, %rdi

// REPMOV
mov $0x4064c000000031e, %rsi
lea addresses_normal+0x1e96, %rdi
clflush (%rdi)
nop
xor %r14, %r14
mov $78, %rcx
rep movsb
nop
and %r14, %r14

// Load
lea addresses_RW+0xb442, %rdi
xor %rsi, %rsi
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_normal+0x1e96, %r15
nop
nop
cmp %r14, %r14
mov (%r15), %di
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
