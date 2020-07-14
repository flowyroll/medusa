.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rsi

// Store
lea addresses_A+0x1d70f, %r10
nop
nop
nop
cmp $18398, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r10)
inc %rsi

// Store
mov $0x62af6500000003df, %rcx
clflush (%rcx)
nop
and $53842, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rcx)
cmp %rcx, %rcx

// Load
lea addresses_A+0x725b, %r10
clflush (%r10)
nop
and $13860, %r13
movb (%r10), %cl
nop
nop
nop
nop
and $6563, %r8

// Faulty Load
lea addresses_D+0xf93f, %r15
inc %rbp
movb (%r15), %r13b
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_D', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'36': 40}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
