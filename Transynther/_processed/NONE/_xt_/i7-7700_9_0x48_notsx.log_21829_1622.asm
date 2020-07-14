.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x15461, %r9
nop
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
sub $52540, %rdi
lea addresses_D_ht+0x4ee1, %rax
xor %r13, %r13
mov (%rax), %di
nop
add $28919, %r9
lea addresses_WT_ht+0x7d81, %rsi
lea addresses_WT_ht+0x1c061, %rdi
clflush (%rsi)
nop
nop
nop
nop
add $6694, %r10
mov $124, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $32418, %r14
lea addresses_D_ht+0x14861, %rsi
lea addresses_UC_ht+0x1d1cb, %rdi
lfence
mov $65, %rcx
rep movsq
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x5521, %r10
nop
nop
nop
nop
nop
add %rax, %rax
mov $0x6162636465666768, %r9
movq %r9, (%r10)
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x122e1, %r9
nop
nop
nop
sub $45865, %rax
movb (%r9), %r14b
and %r10, %r10
lea addresses_WC_ht+0x56e1, %rax
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov (%rax), %r13
nop
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x1b5e1, %r9
nop
xor $20541, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
sub $55049, %rcx
lea addresses_D_ht+0x18d, %r13
nop
nop
nop
nop
add $11230, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
add $46257, %r13
lea addresses_WC_ht+0x72e1, %rcx
nop
nop
cmp $18794, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x10ea9, %rdi
clflush (%rdi)
nop
nop
nop
xor %rax, %rax
mov (%rdi), %r9d
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x10a79, %rsi
lea addresses_WT_ht+0x143e1, %rdi
nop
nop
nop
nop
nop
and $60376, %r10
mov $108, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0x7671, %rsi
lea addresses_WC_ht+0x5ee1, %rdi
clflush (%rdi)
nop
cmp %rax, %rax
mov $37, %rcx
rep movsq
nop
xor %r10, %r10
lea addresses_UC_ht+0x4a11, %r14
nop
nop
nop
add $16605, %rsi
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
nop
and $18226, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x708d, %rbx
clflush (%rbx)
nop
nop
sub $5206, %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
xor $37572, %rdi

// Load
lea addresses_PSE+0x147e1, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
mov (%rcx), %r13d
sub $53464, %rbp

// Load
lea addresses_D+0x26e1, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%r15), %r12b
nop
nop
xor $40636, %r12

// Store
lea addresses_A+0x15ae1, %r15
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
nop
nop
nop
nop
nop
xor $56381, %rcx

// Store
lea addresses_PSE+0x524f, %rdi
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
xor %r13, %r13

// Store
lea addresses_A+0x2091, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovaps %ymm4, (%rcx)
nop
nop
nop
nop
dec %rbp

// Faulty Load
lea addresses_D+0x26e1, %r13
nop
nop
nop
nop
add %rcx, %rcx
mov (%r13), %r15w
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 1}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 2}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
