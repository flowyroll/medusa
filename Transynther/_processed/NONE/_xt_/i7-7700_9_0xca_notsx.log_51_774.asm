.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0x5fc4, %r12
nop
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r12)
nop
nop
dec %rsi

// Load
lea addresses_PSE+0x173c4, %r13
nop
nop
nop
nop
add $4774, %rcx
movaps (%r13), %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
nop
inc %rdi

// Store
mov $0x1c4, %rdx
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%rdx)
nop
and $8963, %rsi

// Store
lea addresses_normal+0x1c3c4, %r12
nop
nop
nop
nop
cmp %r13, %r13
movw $0x5152, (%r12)
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_A+0x4fc4, %rax
nop
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
xor $46688, %rdx

// Faulty Load
lea addresses_PSE+0x173c4, %rcx
nop
nop
nop
nop
inc %r12
movb (%rcx), %dl
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'33': 51}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
