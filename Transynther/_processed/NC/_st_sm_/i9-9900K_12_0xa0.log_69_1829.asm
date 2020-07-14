.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rbx
push %rcx
lea addresses_UC_ht+0x19aea, %r14
nop
nop
nop
nop
add %rbx, %rbx
movups (%r14), %xmm6
vpextrq $0, %xmm6, %rcx
dec %r8
pop %rcx
pop %rbx
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_US+0x14532, %r14
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
inc %rbx

// Store
mov $0x20f71000000096a, %rax
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
add $37989, %r8

// Store
lea addresses_D+0x156ea, %r13
nop
nop
add $23911, %r14
movb $0x51, (%r13)
nop
nop
nop
sub $52303, %r14

// Faulty Load
mov $0x20f71000000096a, %r8
nop
nop
nop
and %r14, %r14
mov (%r8), %eax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'58': 69}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
