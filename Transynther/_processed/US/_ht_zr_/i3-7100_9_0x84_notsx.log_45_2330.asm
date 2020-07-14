.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xda2c, %rsi
lea addresses_A_ht+0x1d96c, %rdi
nop
nop
nop
nop
add $32903, %r15
mov $65, %rcx
rep movsq
nop
nop
nop
nop
sub $19536, %rsi
lea addresses_normal_ht+0x18a2c, %rbp
nop
nop
sub $36429, %r14
mov (%rbp), %edx
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xf02c, %rbp
xor $22962, %r15
movl $0x61626364, (%rbp)
nop
nop
nop
nop
inc %rdx
lea addresses_WC_ht+0x1a2c, %rdi
nop
nop
nop
dec %r15
mov (%rdi), %esi
nop
nop
nop
nop
nop
add $31848, %rcx
lea addresses_normal_ht+0xe4ec, %r15
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
add $41659, %r14
lea addresses_WT_ht+0x1dac, %rsi
lea addresses_WC_ht+0x16e3c, %rdi
nop
cmp $56385, %r13
mov $125, %rcx
rep movsw
nop
nop
nop
nop
cmp $65096, %r15
lea addresses_A_ht+0x1b1c6, %r14
nop
nop
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%r14)
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x17f2c, %rsi
lea addresses_UC_ht+0x1a2c, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $82, %rcx
rep movsw
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rbx
push %rsi

// Faulty Load
lea addresses_US+0x13a2c, %r11
nop
nop
nop
nop
add $64936, %rbx
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %r10
and $0xff, %rsi
shlq $12, %rsi
mov (%r10,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'46': 39, '00': 2, '49': 4}
46 46 46 46 49 46 46 46 46 46 46 49 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46 46 46 46 46 46 46 49 46 46 46 46
*/
