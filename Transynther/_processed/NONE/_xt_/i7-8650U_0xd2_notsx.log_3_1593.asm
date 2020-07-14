.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x131, %r14
and $1091, %rsi
movl $0x51525354, (%r14)
nop
nop
add %rbp, %rbp

// Store
mov $0x5c3b1e0000000af5, %rbp
nop
nop
nop
nop
sub $34673, %r13
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rbp)
nop
nop
cmp $63436, %r13

// Faulty Load
lea addresses_D+0x10b75, %r13
clflush (%r13)
add $47037, %rsi
mov (%r13), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'36': 3}
36 36 36
*/
