.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf1b3, %r14
nop
and %r13, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
xor $56577, %rdx
lea addresses_normal_ht+0x171ef, %rsi
lea addresses_A_ht+0x1844f, %rdi
nop
nop
nop
nop
nop
and $40410, %r11
mov $119, %rcx
rep movsw
nop
nop
dec %r11
lea addresses_A_ht+0xa06e, %rdx
nop
nop
nop
cmp $55708, %rdi
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
xor $53386, %r14
lea addresses_D_ht+0x22f, %r13
nop
nop
nop
nop
and %rdi, %rdi
movw $0x6162, (%r13)
nop
nop
and $42631, %rdx
lea addresses_WT_ht+0x792a, %r11
nop
nop
cmp %rcx, %rcx
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1fef, %rsi
lea addresses_D_ht+0x121ef, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $55, %rcx
rep movsl
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0xa941, %rsi
nop
nop
sub $27908, %rcx
mov (%rsi), %r14w
nop
nop
dec %r14
lea addresses_WT_ht+0xbeb0, %rdi
cmp $23878, %r13
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x19cef, %rsi
nop
nop
add $2903, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
and $30803, %rcx
lea addresses_WC_ht+0x1d16f, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r14, %r14
movb $0x61, (%rsi)
cmp $716, %r11
lea addresses_WC_ht+0x224f, %r13
nop
nop
nop
nop
nop
sub $46475, %r11
mov (%r13), %dx
nop
sub $32195, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1694f, %r10
nop
nop
nop
nop
add %r11, %r11
movw $0x5152, (%r10)
nop
add %r13, %r13

// Faulty Load
lea addresses_US+0x17ef, %rsi
nop
nop
nop
sub %rdx, %rdx
mov (%rsi), %r9d
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 296}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
