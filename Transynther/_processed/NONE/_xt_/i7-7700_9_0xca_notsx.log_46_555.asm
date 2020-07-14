.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rax
push %rbp
push %rdi

// Store
lea addresses_D+0x1a71a, %rbp
nop
nop
nop
nop
cmp $25456, %rax
movw $0x5152, (%rbp)
nop
cmp $3798, %r12

// Store
lea addresses_PSE+0x422a, %rdi
add $13973, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm0
movups %xmm0, (%rdi)
nop
nop
cmp %r10, %r10

// Load
mov $0xa7a, %r12
nop
nop
and $21134, %r10
movb (%r12), %al
nop
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WT+0x129ba, %rax
nop
nop
nop
nop
and %rdi, %rdi
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
cmp $60349, %r15

// Store
mov $0xaa, %rax
nop
nop
nop
nop
cmp $13664, %r9
movb $0x51, (%rax)
dec %rax

// Load
lea addresses_WT+0x917a, %r10
cmp %rdi, %rdi
vmovups (%r10), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
nop
cmp $26888, %r12

// Faulty Load
lea addresses_WT+0xd4aa, %r15
nop
nop
nop
nop
inc %rbp
movups (%r15), %xmm3
vpextrq $0, %xmm3, %r12
lea oracles, %r10
and $0xff, %r12
shlq $12, %r12
mov (%r10,%r12,1), %r12
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'39': 46}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
