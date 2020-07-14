.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rdx
lea addresses_D_ht+0x2ecf, %rdx
nop
inc %r10
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm5
vpextrq $1, %xmm5, %r14
nop
cmp $13080, %r8
pop %rdx
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0xa9, %r11
nop
nop
nop
nop
sub %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_D+0x777f, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
nop
sub $24091, %rcx

// Store
lea addresses_WC+0x17bff, %rcx
nop
nop
and $12844, %r11
movb $0x51, (%rcx)
nop
nop
nop
cmp $13937, %r11

// Store
lea addresses_D+0x162c7, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rdi)
nop
and %rcx, %rcx

// Store
lea addresses_RW+0x124ff, %r14
nop
nop
nop
nop
nop
and $32785, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovaps %ymm2, (%r14)
nop
and %r14, %r14

// Store
lea addresses_RW+0x1958b, %r11
nop
nop
cmp $17664, %rcx
movb $0x51, (%r11)
nop
xor %r11, %r11

// Store
lea addresses_RW+0x7ff, %rsi
nop
and $44607, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor $19062, %rsi

// Store
mov $0x1536ee0000000f5f, %r14
nop
sub $19390, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
nop
sub %rdx, %rdx

// Store
lea addresses_RW+0x7ff, %rdi
clflush (%rdi)
nop
nop
nop
cmp $7484, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
add $61876, %r14

// Faulty Load
lea addresses_RW+0x7ff, %r14
nop
nop
nop
nop
xor $61015, %rdx
mov (%r14), %r15w
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 52}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
