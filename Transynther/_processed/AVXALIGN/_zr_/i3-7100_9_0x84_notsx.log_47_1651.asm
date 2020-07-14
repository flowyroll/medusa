.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xcf74, %rsi
lea addresses_WT_ht+0xce5c, %rdi
nop
nop
nop
nop
cmp $57962, %rbx
mov $85, %rcx
rep movsb
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_D_ht+0x1609e, %r13
nop
nop
sub $18557, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
xor $38446, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rdx

// Store
lea addresses_RW+0x6ca6, %r10
nop
nop
and $32844, %rdx
movw $0x5152, (%r10)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_WC+0x1034e, %r15
nop
add $49238, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
cmp $22222, %r13

// Store
lea addresses_D+0x13cc3, %r10
nop
nop
nop
nop
sub $50019, %rdx
movw $0x5152, (%r10)
sub %r15, %r15

// Store
mov $0x8ee, %rbx
nop
xor $26765, %rbp
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
sub %r13, %r13

// Store
lea addresses_RW+0x14ace, %r12
nop
nop
nop
xor $50863, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
sub $51442, %rdx

// Store
mov $0xc0e, %rbp
nop
nop
nop
sub $47895, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
and %r13, %r13

// Store
lea addresses_RW+0x1b562, %rbp
nop
nop
cmp $22412, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%rbp)
add $53529, %rbp

// Store
mov $0x6b9f61000000044e, %rbx
nop
nop
nop
nop
nop
add $7779, %rbp
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
xor %r10, %r10

// Store
mov $0x710a5b000000074e, %rbp
nop
nop
nop
and $13966, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbp)
add %r15, %r15

// Load
mov $0xcda, %r13
nop
nop
nop
xor $35618, %r15
mov (%r13), %rbp
nop
nop
nop
nop
nop
sub %r10, %r10

// Faulty Load
lea addresses_US+0x11f4e, %r12
nop
nop
nop
nop
nop
sub %r10, %r10
movntdqa (%r12), %xmm0
vpextrq $0, %xmm0, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 47}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
