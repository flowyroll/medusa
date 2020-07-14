.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb5f8, %r12
nop
nop
sub $57105, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
and $31927, %r11
lea addresses_A_ht+0x676, %rsi
nop
nop
nop
cmp $25727, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
and $63194, %r12
lea addresses_WC_ht+0x1ca98, %rsi
lea addresses_WC_ht+0xd178, %rdi
nop
cmp %r12, %r12
mov $92, %rcx
rep movsw
nop
cmp $64884, %r15
lea addresses_WT_ht+0xce78, %rsi
nop
nop
nop
xor $27621, %rcx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %r8
inc %rcx
lea addresses_A_ht+0x39da, %r12
nop
nop
nop
sub $20238, %r11
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm0
vpextrq $1, %xmm0, %r15
nop
xor $24330, %rdi
lea addresses_normal_ht+0x19858, %r12
clflush (%r12)
nop
xor $12895, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%r12)
cmp %rdi, %rdi
lea addresses_normal_ht+0x1ac14, %r11
nop
nop
nop
and %r15, %r15
mov (%r11), %r12
nop
nop
xor $38162, %r8
lea addresses_WT_ht+0x175df, %rcx
nop
nop
nop
cmp $60728, %rsi
mov (%rcx), %r11
nop
nop
nop
sub $43192, %r11
lea addresses_WC_ht+0xdd8, %r12
nop
nop
and %rdi, %rdi
mov (%r12), %r8
nop
add $58835, %rcx
lea addresses_UC_ht+0x16378, %rdi
nop
nop
add %rsi, %rsi
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
inc %rsi
lea addresses_normal_ht+0x18f78, %rdi
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r12
nop
cmp $28588, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_A+0x12a78, %r15
nop
nop
nop
add $29038, %rdx
movl $0x51525354, (%r15)
nop
nop
nop
nop
nop
and $41442, %r9

// Faulty Load
mov $0x34a14e0000000d78, %r12
nop
nop
nop
cmp $47010, %rdi
movaps (%r12), %xmm5
vpextrq $0, %xmm5, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'48': 2, '00': 11932, '5c': 9894, '08': 1}
00 00 00 00 00 00 00 5c 00 5c 00 5c 00 00 00 00 00 00 5c 00 5c 00 5c 00 00 00 5c 5c 5c 5c 5c 5c 00 5c 00 5c 5c 5c 00 5c 5c 00 00 00 00 5c 5c 5c 5c 00 5c 5c 00 00 5c 00 00 00 5c 00 00 5c 5c 00 5c 00 5c 5c 00 00 00 5c 00 5c 5c 00 5c 00 5c 5c 00 5c 00 00 5c 00 00 00 5c 00 5c 00 5c 00 5c 00 00 00 5c 00 5c 00 5c 00 00 00 00 5c 00 5c 00 00 00 00 00 00 5c 00 00 00 00 5c 00 5c 00 5c 00 5c 5c 00 00 00 5c 5c 00 00 00 5c 00 5c 00 5c 00 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 00 00 5c 00 00 00 5c 00 00 00 5c 00 5c 00 5c 00 00 5c 00 5c 00 5c 00 5c 00 00 00 00 00 5c 5c 5c 00 00 5c 5c 5c 5c 00 00 5c 5c 00 00 5c 00 5c 00 00 5c 5c 5c 00 5c 00 5c 00 00 00 00 00 00 5c 00 00 5c 5c 5c 00 00 5c 5c 00 5c 00 00 5c 5c 00 00 00 00 5c 00 5c 00 5c 00 5c 5c 5c 00 00 5c 5c 00 5c 00 5c 00 5c 00 00 5c 00 5c 00 00 5c 00 5c 5c 00 5c 00 5c 00 00 00 5c 00 00 00 00 5c 00 5c 5c 00 00 00 5c 5c 00 00 5c 00 00 5c 00 5c 5c 00 00 5c 5c 00 00 00 00 00 5c 5c 00 00 00 5c 5c 00 5c 00 00 5c 00 5c 00 5c 5c 00 00 5c 00 5c 5c 00 5c 00 5c 5c 00 5c 5c 00 00 5c 5c 00 00 5c 5c 00 5c 00 5c 00 5c 5c 00 5c 00 5c 00 5c 00 5c 5c 00 5c 5c 00 5c 00 5c 5c 5c 00 00 00 5c 5c 00 5c 00 5c 00 5c 00 5c 00 00 00 00 00 5c 00 00 5c 00 5c 00 00 5c 5c 5c 00 5c 00 5c 00 00 5c 5c 00 5c 00 00 5c 5c 5c 00 5c 00 00 00 00 5c 5c 00 5c 00 00 5c 5c 00 5c 00 5c 00 5c 00 5c 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 00 00 00 00 00 5c 00 5c 5c 00 00 5c 00 5c 00 00 5c 00 5c 00 00 00 5c 00 00 00 00 00 00 5c 5c 5c 00 5c 5c 00 5c 00 5c 5c 00 00 5c 00 00 5c 00 5c 00 5c 00 00 5c 00 00 5c 5c 00 00 00 00 5c 5c 5c 00 5c 00 00 00 5c 00 00 00 5c 00 5c 00 5c 00 5c 00 5c 00 5c 00 00 5c 00 00 5c 00 5c 00 5c 5c 5c 00 5c 00 5c 00 5c 5c 00 5c 00 00 00 5c 00 00 00 00 00 5c 00 00 00 00 00 5c 00 5c 5c 5c 00 5c 5c 5c 00 5c 00 00 00 5c 00 00 5c 00 00 5c 00 5c 5c 5c 00 00 5c 5c 00 5c 00 5c 00 00 00 5c 5c 00 5c 00 00 5c 00 5c 00 00 5c 00 00 00 5c 5c 00 00 5c 00 5c 5c 5c 00 5c 00 5c 00 00 00 5c 5c 00 00 5c 00 00 5c 5c 00 00 5c 5c 5c 00 00 5c 00 00 00 5c 00 00 5c 5c 00 00 5c 00 5c 00 00 00 5c 00 00 00 5c 5c 00 5c 5c 00 5c 5c 5c 5c 00 00 5c 00 5c 00 00 00 5c 00 00 00 00 5c 00 5c 00 5c 00 00 5c 00 5c 5c 5c 00 5c 00 5c 00 5c 00 5c 5c 00 5c 00 5c 00 5c 00 00 5c 5c 00 5c 5c 5c 5c 00 00 5c 00 00 00 5c 00 00 5c 5c 5c 00 5c 5c 00 00 5c 5c 00 5c 00 00 00 5c 00 5c 00 5c 5c 5c 00 00 5c 5c 00 5c 5c 00 5c 00 5c 00 5c 5c 5c 00 5c 00 00 5c 5c 00 00 5c 00 00 00 00 5c 00 00 00 00 00 00 00 00 5c 00 5c 00 5c 5c 00 5c 00 5c 00 5c 00 5c 5c 00 00 00 00 5c 00 00 5c 00 00 00 5c 00 00 5c 5c 00 00 5c 00 00 00 5c 00 00 00 5c 00 5c 5c 00 5c 00 00 00 5c 00 00 5c 5c 00 5c 00 5c 00 00 5c 00 5c 00 5c 00 5c 00 00 5c 00 00 5c 00 5c 00 5c 00 00 5c 00 00 00 5c 00 00 5c 00 5c 00 5c 00 00 00 5c 00 00 00 5c 00 5c 5c 00 00 5c 00 00 00 00 5c 5c 5c 00 00 5c 00 5c 00 5c 00 5c 5c 00 5c 00 5c 00 00 5c 00 00 5c 00 00 00 5c 00 5c 5c 00 5c 00 5c 00 00 5c 5c 00 5c 00 5c 00 00 00 5c 00 5c 00 00 00 5c 00 00 00 00 5c 00 5c 00 5c 00 5c 00 00 5c 00 5c 00 5c 00 00 00 5c 00 5c 00 00 00 5c
*/
