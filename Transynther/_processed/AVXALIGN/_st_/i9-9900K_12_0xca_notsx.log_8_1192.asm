.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xcd35, %rsi
lea addresses_D_ht+0x93b5, %rdi
sub %r14, %r14
mov $125, %rcx
rep movsb
nop
add $4016, %r12
lea addresses_D_ht+0x535, %rsi
lea addresses_A_ht+0xa875, %rdi
nop
nop
and $14735, %rdx
mov $12, %rcx
rep movsq
nop
nop
and %r12, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Load
mov $0x3b1030000000e51, %rdx
nop
nop
and %r15, %r15
movb (%rdx), %r12b
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_D+0x15c35, %r15
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r15)
nop
nop
nop
inc %rsi

// Store
lea addresses_D+0x1bcb5, %rcx
cmp %rdx, %rdx
movb $0x51, (%rcx)
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_normal+0x19f25, %rbx
nop
nop
add $59450, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movaps %xmm7, (%rbx)
nop
nop
and $53856, %rdx

// Faulty Load
lea addresses_D+0x1f135, %rdx
nop
nop
nop
and $33459, %rbx
mov (%rdx), %ebp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'36': 8}
36 36 36 36 36 36 36 36
*/
