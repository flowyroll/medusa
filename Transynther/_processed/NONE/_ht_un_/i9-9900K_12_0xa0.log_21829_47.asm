.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x35ad, %rsi
lea addresses_D_ht+0x42c5, %rdi
nop
nop
nop
nop
add $3602, %rbx
mov $25, %rcx
rep movsl
and %r12, %r12
lea addresses_normal_ht+0x1a9e9, %rsi
lea addresses_A_ht+0x1e3e9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %r12, %r12
mov $40, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1c509, %r8
add %r13, %r13
mov (%r8), %r12d
nop
nop
nop
nop
and $62564, %rdi
lea addresses_UC_ht+0x127e9, %r8
nop
nop
nop
dec %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r8
movaps %xmm1, (%r8)
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x173e9, %rsi
sub %r12, %r12
movw $0x6162, (%rsi)
nop
sub $13259, %rcx
lea addresses_D_ht+0xbde9, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
inc %rcx
lea addresses_A_ht+0xd81, %rdi
xor %r12, %r12
movl $0x61626364, (%rdi)
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rdi

// Faulty Load
lea addresses_WT+0x1e7e9, %r9
nop
nop
nop
add %rax, %rax
movups (%r9), %xmm4
vpextrq $1, %xmm4, %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdi
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'44': 15276, '45': 6552, 'ff': 1}
44 44 44 45 44 45 44 44 44 44 44 44 44 44 44 45 45 44 44 44 44 44 45 44 45 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 45 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 45 44 45 45 44 45 45 44 45 44 45 44 44 44 44 45 45 44 44 44 45 45 44 44 44 45 44 45 44 45 45 44 44 44 44 45 45 44 45 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 45 44 45 44 45 45 44 45 44 44 44 45 45 44 45 44 45 44 44 45 45 44 44 45 44 45 45 44 44 44 44 45 44 44 45 44 44 44 45 44 44 44 44 45 45 44 45 44 44 44 44 44 45 45 44 45 44 44 45 44 45 44 44 44 44 45 44 44 44 44 44 44 45 44 45 45 44 44 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 44 44 45 45 44 44 45 45 45 44 44 44 44 45 44 45 45 44 45 44 44 44 45 45 44 45 44 44 44 44 44 44 44 44 44 44 45 44 44 44 45 45 44 45 44 45 44 45 45 45 44 44 44 44 44 44 44 44 45 44 45 45 44 44 44 45 45 44 45 44 44 45 45 45 44 44 44 44 45 45 44 44 44 44 45 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 45 44 44 44 44 44 44 44 45 44 44 45 44 44 44 45 44 45 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 44 44 44 45 44 44 44 44 44 44 45 44 44 45 45 44 45 44 44 44 45 44 44 45 44 44 44 44 44 45 44 44 44 44 44 45 44 44 45 44 44 44 44 45 44 44 44 45 45 44 44 44 44 44 45 44 45 44 45 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 45 44 45 45 45 45 44 45 44 45 44 44 44 45 45 45 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 44 44 44 45 44 44 45 45 45 44 45 44 44 45 44 45 44 44 44 44 44 45 45 44 44 44 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 44 44 45 45 45 44 44 44 45 44 45 44 44 44 44 45 44 44 44 44 45 45 45 45 44 44 44 45 45 45 44 44 45 44 45 45 44 44 44 44 45 45 45 44 45 44 44 44 44 44 44 45 44 45 45 44 44 44 44 44 45 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 44 44 44 44 45 45 44 44 45 45 44 45 45 44 45 45 45 44 44 45 44 44 44 44 44 45 45 44 44 45 44 45 45 44 44 44 45 44 45 44 44 45 44 45 45 44 44 44 45 44 44 44 44 44 44 44 44 44 44 44 45 45 44 45 44 44 44 45 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 45 44 44 44 44 44 44 44 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 44 44 45 45 44 45 44 44 45 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 44 44 45 44 45 45 44 44 44 45 44 45 44 45 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 45 44 45 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 45 44 44 44 45 44 45 44 44 44 44 45 44 45 44 44 44 44 44 45 44 45 44 45 44 45 45 44 45 44 44 44 44 45 44 44 44 44 45 44 45 45 44 45 44 44 44 44 44 44 45 44 44 44 44 45 44 44 44 44 44 44 44 44 44 45 44 44 45 44 45 45 44 44 44 45 44 44 44 44 45 44 45 44 44 45 44 44 44 44 45 44 45 44 44 45 44 45 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 44 45 45 44 44 44 45 44 44 45 45 44 45 44 44 44 45 44 44 44 44 45 44 44 45 44 44 45 44 44 44 44 44 45 44 44 45 44 44 44 44 45 45 44 45 44 44 45 44 45 44 45 44 44 45 44 44 44 44 44 44 44 45 44 45 44 44 44 45 45 45 44 44
*/
