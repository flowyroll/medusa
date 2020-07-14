.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf4ae, %rsi
lea addresses_WT_ht+0x1a24e, %rdi
add %r12, %r12
mov $86, %rcx
rep movsw
nop
nop
and $21931, %r11
lea addresses_WC_ht+0x1194e, %rsi
lea addresses_WT_ht+0x1e24e, %rdi
nop
dec %rbx
mov $86, %rcx
rep movsq
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0xa64e, %rsi
lea addresses_UC_ht+0xb24e, %rdi
nop
nop
nop
nop
inc %rax
mov $3, %rcx
rep movsb
nop
nop
nop
nop
sub $28788, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x18ace, %r9
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r9)
nop
inc %rbp

// Store
lea addresses_UC+0xbc32, %r13
nop
nop
nop
nop
nop
and $51838, %r8
mov $0x5152535455565758, %r9
movq %r9, (%r13)
nop
nop
add $55541, %r14

// REPMOV
lea addresses_A+0xd24e, %rsi
lea addresses_WT+0x131ae, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $104, %rcx
rep movsl
sub %r10, %r10

// REPMOV
lea addresses_WC+0x1f92e, %rsi
lea addresses_UC+0x15e0e, %rdi
nop
nop
nop
nop
lfence
mov $15, %rcx
rep movsq
nop
inc %r10

// Store
lea addresses_D+0xdc8e, %r10
nop
nop
nop
nop
nop
xor $9350, %r8
movb $0x51, (%r10)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
mov $0x603421000000002e, %r8
xor %rsi, %rsi
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
and $32005, %r13

// Store
lea addresses_WT+0x15ace, %r10
nop
nop
nop
add $42290, %r13
movl $0x51525354, (%r10)

// Exception!!!
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
inc %r14

// Store
lea addresses_US+0x1a1fe, %rsi
nop
nop
nop
nop
nop
and %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%rsi)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0x64dd, %r10
and $60595, %r13
movb $0x51, (%r10)
sub $29318, %rbp

// Store
lea addresses_normal+0xa876, %rcx
nop
nop
nop
nop
nop
dec %rdi
movw $0x5152, (%rcx)
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_UC+0x1d9ee, %rcx
nop
nop
xor %rsi, %rsi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r8
xor %r10, %r10

// Store
lea addresses_A+0x824e, %rsi
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
movups %xmm4, (%rsi)
nop
nop
nop
inc %r10

// Faulty Load
lea addresses_A+0x824e, %r10
nop
nop
xor $46120, %r13
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %r14
and $0xff, %r9
shlq $12, %r9
mov (%r14,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 2}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'58': 760}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
