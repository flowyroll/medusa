.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc66a, %r14
nop
nop
nop
nop
sub %r15, %r15
mov (%r14), %esi
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x2bb8, %rsi
lea addresses_UC_ht+0x68c6, %rdi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $72, %rcx
rep movsb
nop
cmp $48131, %rsi
lea addresses_WT_ht+0x17e0e, %rsi
lea addresses_UC_ht+0x1ad8e, %rdi
nop
xor $20930, %r15
mov $48, %rcx
rep movsl
nop
nop
nop
nop
sub $29246, %r12
lea addresses_A_ht+0x1bb4e, %rdi
nop
nop
nop
xor $58582, %r9
mov $0x6162636465666768, %r14
movq %r14, (%rdi)
nop
nop
nop
nop
xor %r9, %r9
lea addresses_A_ht+0x17b0e, %rsi
lea addresses_A_ht+0x1a98e, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xab8e, %rsi
lea addresses_D_ht+0x998e, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $60, %rcx
rep movsl
nop
nop
nop
sub %r12, %r12
lea addresses_UC_ht+0x1d70e, %r12
cmp %rcx, %rcx
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0xdd8e, %r12
nop
nop
nop
nop
sub $23471, %r9
movups (%r12), %xmm0
vpextrq $0, %xmm0, %r8
add $5433, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_RW+0xb18e, %r14
nop
nop
xor %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r14)
xor %rax, %rax

// Store
lea addresses_A+0x318e, %r9
sub %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
inc %r14

// Store
lea addresses_WT+0x134ce, %r13
xor $18893, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm1
movntdq %xmm1, (%r13)
nop
nop
nop
nop
dec %rcx

// Store
lea addresses_UC+0x7b86, %rcx
nop
nop
nop
nop
dec %rbx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
nop
sub $63854, %rax

// Store
lea addresses_RW+0xc489, %rcx
nop
nop
nop
add %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rcx)
nop
add $32021, %r14

// Store
lea addresses_UC+0xb98e, %r13
add $27611, %rcx
movb $0x51, (%r13)
add %r13, %r13

// Store
lea addresses_US+0x2102, %rbp
nop
nop
nop
nop
cmp %rbx, %rbx
movb $0x51, (%rbp)
nop
and $44540, %r14

// Faulty Load
lea addresses_A+0x318e, %rax
nop
nop
nop
nop
sub $42547, %r13
movb (%rax), %r14b
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'58': 4}
58 58 58 58
*/
