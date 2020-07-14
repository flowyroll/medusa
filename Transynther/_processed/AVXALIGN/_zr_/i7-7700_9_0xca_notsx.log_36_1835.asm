.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_A+0x505a, %rsi
nop
nop
nop
and %r15, %r15
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rdx
xor $1501, %rax

// Store
lea addresses_D+0x1bff2, %rsi
nop
nop
nop
nop
nop
add $63489, %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
cmp $34260, %r15

// REPMOV
lea addresses_RW+0x115c2, %rsi
lea addresses_D+0x1c5c2, %rdi
nop
nop
nop
nop
cmp $32384, %rax
mov $36, %rcx
rep movsw
nop
nop
nop
xor %r15, %r15

// Store
mov $0x4e3cbd00000005c2, %rdi
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
cmp %rax, %rax

// Store
lea addresses_US+0x7132, %r15
nop
inc %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
xor $9566, %r10

// Store
lea addresses_D+0x1c5c2, %r10
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movntdq %xmm5, (%r10)
nop
add $15273, %r15

// Store
lea addresses_normal+0xf734, %rsi
sub $8196, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%rsi)
nop
nop
xor $36193, %r15

// Faulty Load
lea addresses_D+0x1c5c2, %rsi
nop
nop
nop
and %rax, %rax
vmovaps (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_RW'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
