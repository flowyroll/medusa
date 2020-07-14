.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xe238, %r10
nop
and $9494, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x32b3, %r13
dec %r9
movb $0x61, (%r13)
cmp %rsi, %rsi
lea addresses_normal_ht+0x16f13, %r13
cmp $57593, %r14
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1d2b3, %r14
nop
nop
and %rdx, %rdx
mov (%r14), %di
nop
add %r14, %r14
lea addresses_D_ht+0x1c173, %rsi
lea addresses_WC_ht+0x126b3, %rdi
nop
and %rdx, %rdx
mov $106, %rcx
rep movsw
and $38014, %rdx
lea addresses_WC_ht+0x8533, %r10
clflush (%r10)
cmp $30576, %rdx
mov (%r10), %rdi
and $32717, %rsi
lea addresses_normal_ht+0x166b3, %r10
and $38457, %rcx
mov (%r10), %r13
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x154b3, %rsi
lea addresses_WT_ht+0x42b3, %rdi
nop
nop
nop
nop
add $8937, %r13
mov $90, %rcx
rep movsq
nop
nop
xor $31522, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_WT+0x16eb3, %rbp
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
cmp $49649, %rdi

// Load
lea addresses_D+0x130b3, %r14
nop
nop
and $2919, %rsi
mov (%r14), %ax
nop
nop
nop
nop
nop
add $677, %r14

// Store
lea addresses_RW+0x76b3, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_D+0x130e7, %rbp
nop
nop
nop
nop
cmp $19820, %rax
movb $0x51, (%rbp)
nop
nop
sub $64133, %rsi

// Faulty Load
lea addresses_RW+0x76b3, %rsi
nop
nop
nop
nop
nop
sub $65031, %r14
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rdi
lea oracles, %r14
and $0xff, %rdi
shlq $12, %rdi
mov (%r14,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 9}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'58': 95}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
