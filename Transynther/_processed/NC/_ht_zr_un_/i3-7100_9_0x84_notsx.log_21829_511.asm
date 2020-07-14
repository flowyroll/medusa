.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3c42, %r14
xor $12131, %r13
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x12c12, %rsi
lea addresses_UC_ht+0x7d02, %rdi
nop
nop
inc %r15
mov $98, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x10112, %rsi
lea addresses_D_ht+0x146f2, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $80, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x12a82, %rdi
nop
sub $3537, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
dec %r13
lea addresses_WC_ht+0x3a12, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm3
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm3, (%rcx)
nop
nop
nop
and $52247, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rsi

// Store
lea addresses_WC+0x15553, %rcx
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rcx)
nop
nop
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x16cf2, %r14
nop
nop
nop
nop
add $46341, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
mov $0x17bb4d0000000212, %rax
sub %r12, %r12
movups (%rax), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'49': 4239, '00': 17589, '08': 1}
00 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 00 00 49 00 00 49 00 00 00 49
*/
