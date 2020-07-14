.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rsi

// Store
mov $0x28a4a30000000ee3, %r12
clflush (%r12)
nop
nop
nop
nop
nop
cmp $7876, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x1a561, %rbx
nop
nop
nop
xor $28496, %rbp
movb $0x51, (%rbx)
nop
nop
nop
xor $42165, %r12

// Load
lea addresses_D+0x13fe3, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r8), %r12
nop
nop
nop
nop
and $4077, %r8

// Store
lea addresses_A+0x784b, %r10
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovntdq %ymm7, (%r10)
nop
nop
and $41891, %r12

// Store
lea addresses_A+0x174e3, %rbp
nop
nop
xor $8028, %r10
movw $0x5152, (%rbp)
nop
nop
and %r12, %r12

// Faulty Load
mov $0x1b0aa600000006e3, %rsi
nop
nop
nop
nop
nop
add $51588, %r10
vmovaps (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_NC', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
