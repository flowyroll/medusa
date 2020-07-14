.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rbx
lea addresses_D_ht+0x14301, %r14
clflush (%r14)
nop
nop
nop
nop
and $1806, %r9
mov (%r14), %r13
nop
nop
nop
xor $23004, %rbx
pop %rbx
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_D+0x9e01, %rdx
nop
nop
nop
and $26082, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rdx)
nop
nop
nop
nop
sub %rax, %rax

// Load
lea addresses_D+0xe701, %rcx
clflush (%rcx)
nop
nop
nop
and %r12, %r12
mov (%rcx), %r15
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0xbb01, %r15
nop
nop
and $29672, %rax
movb $0x51, (%r15)
nop
nop
cmp %r15, %r15

// Store
lea addresses_UC+0x1f8ed, %rax
nop
cmp $28390, %rdx
movw $0x5152, (%rax)
nop
xor %rcx, %rcx

// Store
lea addresses_WC+0x5001, %r9
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r9)
nop
nop
inc %r15

// Faulty Load
lea addresses_RW+0x6701, %rdx
nop
nop
nop
nop
nop
and %r14, %r14
movb (%rdx), %cl
lea oracles, %rax
and $0xff, %rcx
shlq $12, %rcx
mov (%rax,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_RW', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'32': 23}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
