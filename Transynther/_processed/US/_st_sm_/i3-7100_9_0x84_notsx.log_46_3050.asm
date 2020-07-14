.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %r9
push %rax
push %rdx
lea addresses_D_ht+0xb896, %r15
nop
nop
add $26127, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r15
movntdq %xmm7, (%r15)
nop
and $47893, %r8
lea addresses_WT_ht+0x15e7e, %r12
nop
nop
nop
nop
nop
dec %rax
mov $0x6162636465666768, %rdx
movq %rdx, (%r12)
nop
xor %rax, %rax
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r9
push %rax

// Store
lea addresses_US+0x14dfe, %rax
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movntdq %xmm4, (%rax)
nop
nop
nop
and $14057, %r14

// Store
lea addresses_WT+0x1bcfe, %r15
nop
nop
nop
nop
sub $36256, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r15)
nop
nop
add $51314, %r10

// Faulty Load
lea addresses_US+0x14dfe, %r15
nop
and $55178, %r14
mov (%r15), %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rax
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 46}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
