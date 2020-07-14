.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
lea addresses_A_ht+0x6c55, %r10
clflush (%r10)
nop
and %r8, %r8
movups (%r10), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
nop
xor $15399, %r11
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdx

// Store
lea addresses_RW+0x44dd, %rdx
nop
nop
inc %r13
mov $0x5152535455565758, %r12
movq %r12, (%rdx)

// Exception!!!
nop
nop
nop
mov (0), %r12
nop
nop
nop
nop
nop
sub $11295, %r14

// Faulty Load
mov $0x78543000000065d, %r10
and $57246, %rcx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 1}}
{'20': 22, '07': 30}
07 20 20 07 20 07 07 07 07 20 07 20 07 20 07 20 07 20 07 07 20 20 07 07 07 20 07 07 07 07 20 20 20 07 20 20 07 20 07 20 07 20 07 07 07 20 07 07 20 07 07 20
*/
