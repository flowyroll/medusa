.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3aae, %rsi
lea addresses_D_ht+0x1374e, %rdi
nop
inc %r10
mov $72, %rcx
rep movsq
nop
nop
add %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_UC+0x31ce, %rdx
nop
xor %rbx, %rbx
mov (%rdx), %eax
cmp $40724, %r15

// Store
lea addresses_UC+0x1b1ce, %rsi
nop
add $48697, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
nop
cmp $48771, %rdx

// Store
lea addresses_UC+0x12656, %r15
sub $30090, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
inc %rbx

// Store
lea addresses_UC+0x31ce, %rax
nop
xor %r14, %r14
mov $0x5152535455565758, %rbx
movq %rbx, (%rax)
nop
nop
nop
nop
xor $87, %r14

// Faulty Load
lea addresses_UC+0x31ce, %r8
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'37': 21829}
37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37 37
*/
