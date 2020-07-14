.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbx
push %rdx
lea addresses_D_ht+0x1d7dc, %r15
nop
nop
nop
nop
nop
and %r12, %r12
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
cmp $7876, %rdx
pop %rdx
pop %rbx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x179dc, %r11
nop
nop
nop
nop
cmp $52886, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r11)
cmp %r9, %r9

// Store
lea addresses_D+0x1edc8, %rsi
nop
nop
xor $44177, %r13
movw $0x5152, (%rsi)
nop
nop
cmp %r11, %r11

// Store
mov $0x4d8, %r9
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r9)
nop
nop
and $46225, %r15

// Store
mov $0x6920ec000000009c, %rcx
nop
nop
nop
xor $1763, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
cmp $52445, %r15

// Faulty Load
lea addresses_D+0x21dc, %r15
nop
nop
nop
and %rdx, %rdx
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'36': 354}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
