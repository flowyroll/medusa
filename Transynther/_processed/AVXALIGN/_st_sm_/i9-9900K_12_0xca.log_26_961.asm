.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0xa83d, %rsi
add %rcx, %rcx
movb $0x51, (%rsi)
nop
and $29255, %rcx

// Store
mov $0x59ba8900000001fd, %rdx
add $15312, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdx)
nop
sub $9359, %rcx

// Store
lea addresses_US+0x107ed, %rcx
nop
nop
nop
sub %rbx, %rbx
movw $0x5152, (%rcx)
nop
nop
nop
nop
add $29361, %rcx

// Store
lea addresses_RW+0x16899, %rdx
nop
nop
dec %rsi
movb $0x51, (%rdx)
nop
sub %rbx, %rbx

// Faulty Load
mov $0x59ba8900000001fd, %r8
nop
nop
nop
nop
nop
and $39062, %rbp
mov (%r8), %esi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'58': 26}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
