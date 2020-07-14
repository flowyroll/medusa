.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1e3a3, %rsi
lea addresses_WT_ht+0x19bb7, %rdi
nop
nop
nop
cmp %r9, %r9
mov $9, %rcx
rep movsl
and $64288, %r9
lea addresses_WT_ht+0xe7af, %rsi
nop
cmp %rcx, %rcx
movups (%rsi), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x1a903, %rbx
nop
nop
nop
add $60373, %rbp
movb $0x51, (%rbx)
nop
nop
nop
dec %r8

// Store
mov $0xa83, %r10
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovaps %ymm5, (%r10)
nop
nop
add $28758, %rbx

// Faulty Load
lea addresses_RW+0x16983, %r10
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r10), %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'32': 1}
32
*/
