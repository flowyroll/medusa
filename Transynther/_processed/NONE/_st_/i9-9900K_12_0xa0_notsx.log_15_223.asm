.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_PSE+0x6ed2, %rax
clflush (%rax)
nop
nop
cmp %rbp, %rbp
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %rbp, %rbp

// Store
mov $0x68ddb50000000f52, %r9
nop
nop
nop
xor $30886, %r10
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp $26729, %r14

// Faulty Load
lea addresses_A+0x15f52, %r9
xor %rdi, %rdi
movups (%r9), %xmm7
vpextrq $0, %xmm7, %r14
lea oracles, %rbp
and $0xff, %r14
shlq $12, %r14
mov (%rbp,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'51': 15}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
