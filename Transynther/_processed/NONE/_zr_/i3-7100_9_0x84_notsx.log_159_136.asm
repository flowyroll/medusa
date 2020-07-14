.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x7eb9, %rsi
nop
nop
nop
nop
add $43262, %rdx
movw $0x6162, (%rsi)
nop
nop
sub $12629, %r9
lea addresses_normal_ht+0xa07f, %r9
nop
nop
nop
cmp $36730, %r14
mov (%r9), %r12d
nop
nop
dec %r14
lea addresses_UC_ht+0xb85f, %r14
nop
nop
nop
nop
nop
and %r11, %r11
mov (%r14), %r13
nop
nop
nop
nop
nop
and $15340, %r11
lea addresses_D_ht+0xbcef, %rsi
lea addresses_A_ht+0xde1f, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $100, %rcx
rep movsl
nop
nop
nop
dec %r13
lea addresses_D_ht+0x1285f, %r9
nop
sub %r14, %r14
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
sub $44534, %rcx
lea addresses_A_ht+0x1b77f, %rsi
lea addresses_WT_ht+0x2c5f, %rdi
clflush (%rdi)
nop
dec %r13
mov $57, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_normal_ht+0x68df, %rsi
lea addresses_A_ht+0x1682f, %rdi
nop
nop
dec %r14
mov $27, %rcx
rep movsw
add $54940, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x563a, %rsi
nop
nop
cmp $2280, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
cmp %r14, %r14

// Store
lea addresses_UC+0x5f, %r11
nop
nop
nop
nop
nop
cmp $29156, %r12
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x1349330000000e3f, %rbx
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub %r12, %r12

// Faulty Load
lea addresses_A+0xe85f, %rbx
nop
cmp %rsi, %rsi
mov (%rbx), %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'00': 159}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
