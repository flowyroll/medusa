.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x732b, %rdx
sub $47368, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rdx)
nop
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x1076b, %rbx
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
nop
add $21945, %r12
lea addresses_normal_ht+0x19b2b, %r14
inc %rbx
mov (%r14), %r13w
nop
add %r8, %r8
lea addresses_D_ht+0x10d2f, %r14
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r14)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x1032b, %rsi
lea addresses_normal_ht+0x15e2b, %rdi
nop
nop
nop
inc %rbx
mov $56, %rcx
rep movsb
nop
cmp $26774, %rbx
lea addresses_UC_ht+0xdeab, %rsi
nop
nop
nop
xor $50266, %r12
mov (%rsi), %rbx
nop
nop
nop
nop
and $46293, %rbx
lea addresses_normal_ht+0xf7d3, %rcx
nop
nop
nop
and $39898, %rdx
mov (%rcx), %r14
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x7183, %rsi
lea addresses_WC_ht+0x1438b, %rdi
clflush (%rsi)
inc %rbx
mov $7, %rcx
rep movsq
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x332b, %r12
clflush (%r12)
nop
nop
nop
nop
and %r8, %r8
mov (%r12), %rdx
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x1ebab, %r14
nop
nop
nop
nop
add $9547, %r13
mov (%r14), %rsi
nop
sub %r12, %r12
lea addresses_WC_ht+0x1e12b, %r14
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
vmovups %ymm1, (%r14)
add %rdi, %rdi
lea addresses_normal_ht+0xdbab, %rsi
nop
nop
xor $60423, %rcx
mov (%rsi), %r12d
nop
xor $59085, %rcx
lea addresses_A_ht+0x168a3, %rsi
lea addresses_D_ht+0x52cb, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $5, %rcx
rep movsl
nop
nop
and $22232, %r9
lea addresses_A_ht+0x1332b, %rsi
lea addresses_normal_ht+0x140ab, %rdi
nop
dec %rdx
mov $25, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x566b, %r12
nop
nop
nop
nop
nop
cmp $25399, %r9
movl $0x61626364, (%r12)
nop
nop
cmp $9632, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_D+0x1adeb, %rsi
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rsi), %bx
nop
nop
sub $17892, %rsi

// Store
lea addresses_A+0x672b, %rbp
clflush (%rbp)
nop
nop
add $47446, %r15
movb $0x51, (%rbp)
nop
nop
nop
nop
and $42502, %rbp

// REPMOV
lea addresses_normal+0x7c7d, %rsi
lea addresses_A+0x15efa, %rdi
nop
nop
nop
inc %rbp
mov $92, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_US+0xe32b, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
add $15074, %rbp

// Faulty Load
lea addresses_US+0xe32b, %rsi
nop
nop
nop
nop
and %rbx, %rbx
movb (%rsi), %r9b
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'58': 213}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
