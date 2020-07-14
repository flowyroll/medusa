.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x797a, %r11
nop
nop
xor $59394, %r8
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x17eea, %rsi
lea addresses_WC_ht+0x1a4ea, %rdi
nop
nop
nop
nop
sub $13560, %r15
mov $88, %rcx
rep movsw
nop
and $4499, %r11
lea addresses_WC_ht+0xe86a, %rdi
nop
and $12807, %r8
mov (%rdi), %rdx
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x6eea, %rcx
nop
nop
nop
nop
add $56199, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $29854, %r15
lea addresses_UC_ht+0x19eea, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0xbb72, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movups (%r15), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x5472, %rsi
clflush (%rsi)
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WC+0x134ea, %rdx
inc %r9
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rdx)
nop
inc %r11

// Faulty Load
mov $0xef1790000000eea, %rdi
nop
nop
nop
nop
add $37978, %r12
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 14692, 'fe': 1, '08': 1, '44': 7135}
00 00 00 00 44 00 44 00 44 00 00 44 00 44 00 00 00 44 00 44 00 00 44 00 44 00 44 44 00 44 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 44 00 00 44 00 00 44 44 00 00 00 00 44 00 00 44 00 44 00 44 44 44 00 44 00 00 00 00 44 00 44 00 00 00 44 00 00 00 00 44 44 44 44 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 44 44 00 00 00 44 44 00 44 00 00 44 00 44 00 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 00 44 00 44 44 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 44 44 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 44 00 44 44 00 44 44 00 44 00 00 00 44 00 44 00 00 44 44 00 44 44 44 00 44 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 44 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 44 44 00 44 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 44 44 00 00 44 00 00 00 00 00 44 44 44 44 00 44 00 44 44 00 00 00 44 44 00 00 44 00 44 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 44 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 44 00 00 44 00 44 00 44 00 00 00 00 44 44 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 00 00 44 44 00 00 00 44 00 00 44 00 44 00 00 44 00 00 44 00 44 44 00 00 00 00 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 44 44 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 44 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 44 44 00 44 44 44 00 00 00 44 00 44 00 44 00 44 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 44 00 44 44 00 44 00 44 00 44 00 44 00 44 00 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 44 44 44 44 00 00 44 00 00 44 00 44 44 00 00 00 00 00 00 44 00 00 44 00 00 44 00 44 00 44 00 44 44 00 44 00 00 44 00 00 00 44 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 44 00 44 44 00 44 00 00 00 00 00 44 00 44 00 44 00 44 00 44 44 00 44 00 44 00 44 00 00 44 00 00 44 00 44 00 00 44 00 44 44 00 44 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 00 44 00 00 44 44 00 44 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 44 00 00 44 00 00 44 44 44 00 44 00 44 00 44 00 44 00 00 44 00 00 00 00 00 00 44 44 00 44 00 44 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 44 00 44 00 00 00 44 00 44 00 00 00 00 00 44 00 44 44 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 00 44 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 44 00 44 00 00 00 44 00 00 00 00 44 44 00 00 00 00 44 00 44 00 00 00 00 44 00 44 00 44 44 00 00 44 00 00 00 44 00 00 00
*/
