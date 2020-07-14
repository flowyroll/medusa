.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rdi
lea addresses_normal_ht+0x1a8e5, %rax
clflush (%rax)
sub $4961, %rdi
movb (%rax), %r12b
cmp %r10, %r10
pop %rdi
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0x1be65, %rbx
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%rbx), %r14b
nop
nop
add $64486, %rdi

// Load
lea addresses_WT+0x8365, %r9
nop
nop
nop
nop
nop
cmp $39074, %rdx
movb (%r9), %r8b
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_RW+0x10b15, %r8
nop
xor %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movups %xmm7, (%r8)
nop
cmp $50973, %rdx

// Store
lea addresses_WT+0x139f6, %r9
and $36670, %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
nop
add $26139, %rdx

// Store
lea addresses_WT+0x30a5, %r9
add $49029, %r14
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r9)
nop
inc %r15

// Store
lea addresses_normal+0x30e5, %rdi
nop
nop
nop
nop
sub $31895, %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
nop
cmp $20500, %rbx

// Store
lea addresses_WC+0x1b68d, %rbx
clflush (%rbx)
nop
nop
nop
nop
and $57339, %r8
movl $0x51525354, (%rbx)
nop
sub %rdi, %rdi

// Store
mov $0x8a5, %rdx
nop
nop
nop
nop
add $63238, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
add $16195, %rbx

// Faulty Load
lea addresses_normal+0xa0e5, %rdi
add $54675, %r15
mov (%rdi), %r9w
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'34': 7}
34 34 34 34 34 34 34
*/
