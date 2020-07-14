.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r9
push %rdi
push %rdx
lea addresses_WT_ht+0x18735, %r14
nop
nop
sub $11713, %r12
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm4
vpextrq $0, %xmm4, %rdi
nop
add $7599, %r9
lea addresses_UC_ht+0x45d9, %rdx
nop
nop
sub $56632, %r10
mov $0x6162636465666768, %r15
movq %r15, (%rdx)
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x4635, %r14
nop
nop
nop
xor %r15, %r15
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
nop
nop
and $22320, %rdx
lea addresses_WT_ht+0x11e35, %r10
nop
and %rdi, %rdi
movw $0x6162, (%r10)
nop
nop
nop
add %r10, %r10
lea addresses_normal_ht+0x19535, %r14
nop
xor %r10, %r10
mov (%r14), %r15w
nop
nop
nop
sub $10190, %rdx
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x192f5, %rsi
lea addresses_UC+0xe7d, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
sub $39172, %r14
mov $72, %rcx
rep movsq
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0x6535, %r8
nop
nop
nop
sub %rcx, %rcx
movl $0x51525354, (%r8)
dec %r8

// Load
mov $0x384a470000000535, %r14
nop
nop
nop
nop
nop
xor $57996, %r10
mov (%r14), %r8

// Exception!!!
nop
mov (0), %r14
nop
nop
nop
nop
cmp $35191, %rdi

// Store
lea addresses_US+0xaeeb, %rdx
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rdx)
add %rsi, %rsi

// Load
lea addresses_WC+0x1f4f9, %r10
sub $5757, %rsi
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r8
sub %r14, %r14

// Store
lea addresses_RW+0x1b935, %r14
nop
inc %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0x935, %rsi
nop
nop
nop
nop
add $47374, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub $9313, %rsi

// Store
lea addresses_WC+0x19867, %rdi
nop
cmp %rcx, %rcx
movb $0x51, (%rdi)
nop
nop
add $62488, %r14

// Store
mov $0x384a470000000535, %r10
nop
nop
nop
add $58408, %r8
movb $0x51, (%r10)
cmp $35864, %r8

// Faulty Load
mov $0x384a470000000535, %r8
dec %rdx
vmovntdqa (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rsi
lea oracles, %rdx
and $0xff, %rsi
shlq $12, %rsi
mov (%rdx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'54': 1455, '37': 193, '51': 20007, '00': 174}
54 51 51 51 51 51 51 51 51 51 51 51 51 51 37 51 54 51 51 51 51 37 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 00 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 37 51 51 51 51 51 51 51 54 51 51 51 51 00 51 51 51 37 51 51 51 51 51 51 51 51 51 54 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 37 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 37 51 51 51 51 54 51 51 51 51 54 51 51 51 51 51 51 51 51 54 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 54 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 54 51 51 51 54 51 54 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 00 51 54 51 54 51 54 51 51 51 51 51 51 51 51 51 54 51 54 51 51 51 54 51 51 51 54 51 51 51 51 54 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 54 54 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 37 51 51 54 51 51 51 51 54 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 37 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 54 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 00 51 51 51 51 51 51 51 54 51 51 51 54 51 51 51 00 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 54 37 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 54 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 54 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 37 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
