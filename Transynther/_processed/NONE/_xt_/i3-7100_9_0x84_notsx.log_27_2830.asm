.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rsi

// Load
lea addresses_WT+0xf4f7, %rax
nop
inc %r14
vmovaps (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
cmp %r9, %r9

// Store
mov $0xa87, %rax
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rax)
nop
nop
dec %r14

// Store
lea addresses_WT+0x12783, %rax
nop
nop
nop
nop
nop
cmp $18534, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movntdq %xmm2, (%rax)
nop
nop
and %rsi, %rsi

// Faulty Load
lea addresses_normal+0x17d83, %r9
clflush (%r9)
nop
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'34': 27}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
