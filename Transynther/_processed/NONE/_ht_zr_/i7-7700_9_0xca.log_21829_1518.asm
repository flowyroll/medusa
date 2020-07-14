.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14878, %rsi
lea addresses_A_ht+0xdc68, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $25, %rcx
rep movsw
nop
sub $17210, %r9
lea addresses_normal_ht+0x3c78, %rsi
lea addresses_D_ht+0x102d8, %rdi
sub $64660, %rax
mov $48, %rcx
rep movsl
nop
nop
nop
nop
nop
add $20417, %r14
lea addresses_A_ht+0x19c78, %rcx
nop
nop
nop
nop
nop
sub %r14, %r14
mov (%rcx), %rsi
nop
nop
nop
nop
nop
sub $8506, %rdi
lea addresses_WC_ht+0x1316, %rax
nop
nop
nop
nop
sub %r12, %r12
movw $0x6162, (%rax)
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0xc278, %r9
nop
nop
nop
nop
nop
xor $2798, %rsi
movb (%r9), %al
sub $55143, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_normal+0x2018, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, (%rbx)
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_WT+0xc78, %r9
nop
nop
and $15583, %rsi
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r13
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'44': 18635, '00': 3194}
44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 00 44 44 00 00 44 44 00 00 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 00 44 44 00 44 44 00 44 44 44 00 44 44 00 00 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 00 44 00 44 44 44 00 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 00 00 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 00 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 44 44 00 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 00 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 00 00 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 00 44 00 44 44 44 44 44
*/
