.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x3810, %rsi
lea addresses_WC+0x1b762, %rdi
nop
nop
nop
add %r8, %r8
mov $20, %rcx
rep movsb
nop
nop
cmp $62257, %rcx

// REPMOV
lea addresses_PSE+0x16010, %rsi
lea addresses_WT+0x1f810, %rdi
clflush (%rsi)
nop
nop
nop
add %r14, %r14
mov $54, %rcx
rep movsb
nop
nop
cmp $5048, %r8

// REPMOV
lea addresses_WT+0xc9b0, %rsi
lea addresses_PSE+0x1ff26, %rdi
nop
dec %r8
mov $77, %rcx
rep movsq
nop
nop
nop
nop
cmp $64580, %r15

// Store
lea addresses_normal+0x7010, %rdi
nop
nop
and $14458, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%rdi)
nop
nop
nop
and $27265, %r15

// Store
lea addresses_WC+0x19c86, %r15
clflush (%r15)
nop
nop
nop
nop
and $23977, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm4
movups %xmm4, (%r15)
and $33394, %rbx

// Load
lea addresses_A+0x10d50, %r14
nop
nop
nop
nop
nop
dec %rbx
vmovntdqa (%r14), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
xor %rcx, %rcx

// Store
lea addresses_WC+0x12114, %r14
clflush (%r14)
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm1
vmovaps %ymm1, (%r14)
sub %rsi, %rsi

// Load
mov $0x183a0200000002d4, %r14
add $4977, %rbx
movntdqa (%r14), %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
dec %r15

// Store
lea addresses_PSE+0x16010, %rcx
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movaps %xmm1, (%rcx)
add %r15, %r15

// Store
mov $0x170, %r8
nop
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r8)
nop
nop
nop
nop
xor $15478, %r8

// Faulty Load
lea addresses_PSE+0x16010, %rcx
nop
nop
nop
nop
cmp $192, %r14
movb (%rcx), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'58': 14}
58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
