.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x6aef, %rdx
nop
add %r14, %r14
mov (%rdx), %r9d
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x1abcf, %rbx
nop
nop
xor $58204, %rdi
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_D_ht+0x17c2f, %rdi
nop
nop
nop
add $56037, %rbp
movw $0x6162, (%rdi)
nop
nop
add $33274, %r14
lea addresses_normal_ht+0x13b8f, %rsi
lea addresses_A_ht+0x3eef, %rdi
clflush (%rsi)
nop
and %r8, %r8
mov $46, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi

// Load
lea addresses_RW+0x7829, %rbp
nop
add $41508, %r13
movups (%rbp), %xmm3
vpextrq $1, %xmm3, %rcx
and $25640, %r14

// Store
lea addresses_WT+0x18eaf, %r14
and $26757, %r9
movl $0x51525354, (%r14)
nop
nop
nop
nop
inc %r9

// Store
lea addresses_A+0x13def, %r14
nop
nop
nop
nop
cmp $31968, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
nop
nop
and $48004, %r13

// Faulty Load
lea addresses_RW+0x196ef, %rbp
nop
and $50425, %rcx
vmovaps (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'44': 8, '00': 2}
44 44 44 00 44 44 44 00 44 44
*/
