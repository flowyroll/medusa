.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1d012, %rsi
lea addresses_WT_ht+0x1e542, %rdi
nop
nop
nop
xor $8534, %r15
mov $82, %rcx
rep movsb
cmp $22421, %r12
lea addresses_D_ht+0xe142, %rdi
nop
nop
nop
nop
sub $43593, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_WC_ht+0x7b02, %r12
and $26722, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r12)
nop
and %r15, %r15
lea addresses_D_ht+0xa4c2, %rsi
lea addresses_WC_ht+0x1617a, %rdi
clflush (%rsi)
nop
nop
nop
cmp $57018, %r9
mov $106, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x1b742, %rsi
lea addresses_normal_ht+0x1c142, %rdi
nop
nop
cmp $64008, %r15
mov $27, %rcx
rep movsq
nop
nop
sub $13468, %r15
lea addresses_WC_ht+0x1ba42, %rcx
nop
nop
nop
nop
inc %r9
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbx
nop
nop
nop
nop
nop
sub $58347, %rsi
lea addresses_A_ht+0xbb96, %r13
nop
nop
add %r15, %r15
movups (%r13), %xmm1
vpextrq $1, %xmm1, %r12
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0xc9c2, %r12
nop
nop
nop
sub %r9, %r9
vmovups (%r12), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r15
nop
and %rsi, %rsi
lea addresses_UC_ht+0x142, %r12
cmp $51294, %rcx
movups (%r12), %xmm4
vpextrq $0, %xmm4, %r9
nop
nop
nop
and $34826, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rdi
push %rdx

// Store
mov $0x5d71c80000000542, %r9
nop
nop
nop
nop
nop
xor $17302, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
nop
sub $31876, %r9

// Store
lea addresses_WC+0x16742, %r9
nop
cmp %r14, %r14
movl $0x51525354, (%r9)
nop
sub %rdi, %rdi

// Store
lea addresses_US+0x15d42, %rdi
sub $3899, %rdx
movw $0x5152, (%rdi)
nop
nop
and $51637, %r15

// Faulty Load
mov $0x5d71c80000000542, %rdx
cmp $28939, %r11
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %rdx
and $0xff, %r14
shlq $12, %r14
mov (%rdx,%r14,1), %r14
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 1, '00': 271, '45': 2}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
