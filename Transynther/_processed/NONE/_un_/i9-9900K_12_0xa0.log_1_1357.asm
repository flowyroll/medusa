.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x1f463, %r15
nop
nop
nop
nop
nop
dec %r12
movb $0x51, (%r15)
nop
nop
nop
nop
nop
add $32541, %r14

// Load
lea addresses_US+0x5bf8, %rcx
add %r14, %r14
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
add %r15, %r15

// REPMOV
lea addresses_D+0x1d44e, %rsi
lea addresses_WC+0x10fb6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $24498, %rdx
mov $4, %rcx
rep movsb
cmp $29571, %r14

// Faulty Load
lea addresses_A+0x18816, %rcx
nop
nop
nop
nop
add %rdx, %rdx
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'07': 1}
07
*/
