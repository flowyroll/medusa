.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x2758, %rdx
nop
nop
nop
inc %rbx
mov (%rdx), %r11d
nop
nop
nop
nop
nop
xor $44349, %r14
lea addresses_WC_ht+0xbcc0, %rsi
lea addresses_WC_ht+0x19ce8, %rdi
nop
cmp $52770, %r9
mov $36, %rcx
rep movsb
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x17500, %rdi
nop
nop
nop
nop
sub $44303, %rbx
mov (%rdi), %r9
xor $59529, %r11
lea addresses_D_ht+0x9900, %rsi
lea addresses_UC_ht+0x500, %rdi
nop
nop
inc %r9
mov $47, %rcx
rep movsl
nop
nop
nop
nop
xor $24272, %rdi
lea addresses_UC_ht+0xcfe0, %rsi
lea addresses_normal_ht+0x5f00, %rdi
nop
nop
xor $45983, %r11
mov $71, %rcx
rep movsq
nop
nop
nop
sub $55907, %r9
lea addresses_WT_ht+0xa100, %rsi
lea addresses_normal_ht+0xa500, %rdi
nop
nop
nop
and $3608, %r14
mov $68, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_normal_ht+0xeb30, %rcx
nop
nop
cmp %r11, %r11
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
nop
add $27317, %r11
lea addresses_WC_ht+0x2e0d, %r11
nop
nop
add $18299, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
nop
nop
nop
sub $54023, %r11
lea addresses_normal_ht+0x17a00, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%rcx), %r11w
nop
sub $19075, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi

// Store
lea addresses_D+0x9500, %r12
nop
nop
nop
nop
sub $37324, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r12)
nop
nop
inc %rdi

// Faulty Load
lea addresses_US+0x8d00, %r12
nop
nop
nop
nop
inc %rbp
vmovups (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 52}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
