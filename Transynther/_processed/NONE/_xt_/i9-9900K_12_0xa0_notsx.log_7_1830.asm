.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rsi
lea addresses_normal_ht+0x1db70, %r9
nop
nop
nop
nop
nop
dec %r15
movw $0x6162, (%r9)
nop
nop
nop
xor %rsi, %rsi
pop %rsi
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_US+0x13578, %rsi
lea addresses_UC+0x193b8, %rdi
nop
nop
nop
sub %rax, %rax
mov $65, %rcx
rep movsb
nop
nop
nop
nop
nop
add $46271, %rcx

// Faulty Load
lea addresses_D+0x156b8, %rdi
nop
nop
nop
nop
cmp %r10, %r10
vmovups (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 8, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'36': 7}
36 36 36 36 36 36 36
*/
