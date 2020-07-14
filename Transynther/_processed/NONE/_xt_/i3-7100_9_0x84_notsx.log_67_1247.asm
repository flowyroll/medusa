.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10147, %rsi
nop
and $49421, %rcx
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r12
nop
nop
nop
and $36563, %rsi
lea addresses_D_ht+0xa971, %rsi
lea addresses_WT_ht+0x3ab0, %rdi
clflush (%rsi)
nop
nop
nop
cmp %r13, %r13
mov $110, %rcx
rep movsq
xor $23523, %rsi
lea addresses_A_ht+0x123c7, %r9
nop
nop
nop
dec %r12
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
cmp $47527, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdx

// Load
lea addresses_PSE+0x18bc7, %rcx
nop
nop
nop
nop
nop
add $9633, %rdx
mov (%rcx), %r13d
xor $36001, %r9

// Load
lea addresses_RW+0x116c7, %r13
nop
nop
nop
nop
nop
cmp $17382, %r15
vmovntdqa (%r13), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
and $35758, %r9

// Store
lea addresses_WC+0x14bc7, %rcx
nop
nop
nop
inc %r12
movl $0x51525354, (%rcx)
nop
and $11415, %rdx

// Store
lea addresses_WC+0x17fc7, %rdx
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
sub $29416, %rcx

// Faulty Load
lea addresses_PSE+0x18bc7, %r12
nop
xor %r13, %r13
mov (%r12), %r15w
lea oracles, %r13
and $0xff, %r15
shlq $12, %r15
mov (%r13,%r15,1), %r15
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'same': False, 'size': 4, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'33': 67}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
