.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x16a2b, %rsi
lea addresses_normal_ht+0x13f7b, %rdi
nop
sub %r12, %r12
mov $116, %rcx
rep movsl
nop
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x1417b, %r10
sub $47982, %r15
movb (%r10), %cl
nop
nop
dec %r10
lea addresses_A_ht+0x1357b, %rsi
lea addresses_normal_ht+0xf9b, %rdi
clflush (%rsi)
nop
add $59000, %r14
mov $75, %rcx
rep movsb
nop
xor $41429, %rsi
lea addresses_normal_ht+0xfdbb, %r15
nop
xor %rsi, %rsi
movb (%r15), %r10b
nop
nop
nop
nop
nop
xor $35520, %r10
lea addresses_WC_ht+0x128ab, %rsi
lea addresses_WC_ht+0x14d3b, %rdi
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $59, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $20030, %r9
lea addresses_A_ht+0x877b, %rsi
lea addresses_UC_ht+0x9177, %rdi
clflush (%rsi)
sub %r12, %r12
mov $69, %rcx
rep movsq
nop
nop
sub %r15, %r15
lea addresses_UC_ht+0x1b97b, %rsi
lea addresses_A_ht+0xbb7b, %rdi
nop
nop
cmp %r15, %r15
mov $106, %rcx
rep movsw
nop
nop
nop
nop
sub $25829, %r9
lea addresses_UC_ht+0x1ce9b, %rsi
lea addresses_WC_ht+0xdd23, %rdi
add %r9, %r9
mov $58, %rcx
rep movsq
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x1837b, %rsi
nop
nop
nop
nop
sub $54497, %r15
mov (%rsi), %rdi
nop
inc %r10
lea addresses_A_ht+0x155b1, %r14
nop
dec %r15
movb (%r14), %r12b
nop
add %r10, %r10
lea addresses_WC_ht+0x1e0b, %rcx
nop
nop
nop
sub %rdi, %rdi
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r15
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Store
lea addresses_WC+0x1687b, %r13
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovaps %ymm7, (%r13)
nop
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_RW+0xe17b, %rsi
clflush (%rsi)
add $6431, %r13
vmovups (%rsi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 63}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
