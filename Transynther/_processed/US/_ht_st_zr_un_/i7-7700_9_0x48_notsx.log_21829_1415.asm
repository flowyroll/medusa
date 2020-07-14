.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1c59e, %r15
mfence
mov (%r15), %rbp
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x314e, %rsi
lea addresses_A_ht+0x1af0e, %rdi
cmp %rbp, %rbp
mov $115, %rcx
rep movsb
nop
nop
sub $9756, %rsi
lea addresses_D_ht+0x1c65e, %rbx
nop
nop
nop
cmp %r15, %r15
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x10f4e, %rsi
lea addresses_D_ht+0x1e9fe, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $28, %rcx
rep movsq
nop
dec %rcx
lea addresses_UC_ht+0x1270e, %rsi
lea addresses_A_ht+0x105d6, %rdi
nop
nop
nop
nop
nop
cmp $28164, %rdx
mov $94, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xd59a, %rsi
lea addresses_WC_ht+0x1cf0e, %rdi
nop
nop
dec %rdx
mov $82, %rcx
rep movsb
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x15e6, %r14
clflush (%r14)
nop
nop
nop
nop
cmp %r15, %r15
movb (%r14), %cl
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x170e, %rdi
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rdi
movaps %xmm6, (%rdi)
nop
nop
nop
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x981e, %rsi
lea addresses_WT+0x1d30e, %rdi
nop
nop
add $29732, %r8
mov $43, %rcx
rep movsb

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rdi
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x570e, %rdx
nop
nop
nop
add %rbx, %rbx
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
add $28586, %rdx

// Store
lea addresses_US+0x5253, %rcx
clflush (%rcx)
nop
nop
sub $37724, %r8
mov $0x5152535455565758, %rdx
movq %rdx, (%rcx)
nop
nop
nop
nop
sub $48766, %rdx

// Store
lea addresses_WT+0x118c3, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_US+0x470e, %rdi
nop
nop
nop
nop
xor $40350, %rbx
vmovups (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'04': 87, '44': 8826, '00': 12911, '08': 3, '20': 1, '33': 1}
20 44 44 00 44 00 44 44 00 44 00 00 00 44 44 00 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 00 44 44 44 44 44 00 00 44 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 44 44 44 00 00 00 44 00 44 44 44 44 00 44 00 44 00 04 44 00 44 44 00 44 44 44 44 44 44 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 44 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 44 00 00 44 00 44 44 44 00 44 00 44 44 44 00 00 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 44 00 44 44 00 44 00 00 44 00 00 44 00 00 00 00 44 00 00 44 44 44 00 00 00 44 00 00 00 44 00 44 44 00 44 00 00 00 00 44 44 44 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 44 00 44 00 44 44 00 44 44 00 00 44 44 00 00 44 00 44 00 00 44 44 00 00 00 00 44 00 00 44 44 44 00 00 44 44 00 00 44 00 44 44 00 44 00 00 44 44 44 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 00 44 00 00 00 44 44 00 44 00 44 44 00 44 00 44 44 44 00 44 44 00 44 00 00 44 00 00 00 44 44 44 44 44 00 00 44 00 44 00 00 44 00 44 00 44 44 44 00 00 44 00 00 00 44 44 00 00 00 44 44 00 44 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 44 00 44 00 00 00 44 44 00 00 44 00 00 00 00 00 44 44 00 44 00 00 00 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 04 44 00 00 00 00 00 00 00 44 44 00 00 00 44 00 44 00 44 00 44 44 00 00 00 00 00 44 00 44 00 44 44 00 44 44 00 44 00 00 00 00 44 00 44 00 00 00 44 00 00 44 44 44 00 00 00 44 00 00 44 00 44 44 44 44 44 00 00 44 00 44 00 00 00 44 44 00 00 44 44 00 00 00 00 00 00 00 00 44 00 44 44 00 44 44 44 00 00 00 00 00 00 44 44 00 00 44 00 44 44 44 44 44 44 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 44 00 04 00 00 00 00 44 00 00 44 44 44 44 44 00 00 00 00 00 44 00 00 00 44 00 44 00 44 44 44 44 44 00 00 00 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 44 00 00 00 00 44 44 00 00 44 00 00 00 44 00 00 44 00 00 00 00 44 44 00 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 00 44 44 44 44 00 44 00 44 44 44 00 44 00 00 00 00 00 44 00 00 00 00 00 44 44 44 44 00 00 00 00 00 44 44 44 00 00 44 44 00 00 00 00 44 44 44 00 00 44 44 00 44 44 00 00 44 44 00 00 00 44 44 00 44 00 44 44 00 44 00 00 00 00 44 44 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 44 00 44 00 44 44 00 00 44 44 44 44 00 44 00 00 44 44 44 00 44 00 44 00 44 00 00 00 44 44 00 44 00 00 00 00 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 04 00 44 44 44 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 00 44 00 00 44 44 00 44 00 00 00 44 00 00 00 44 00 00 00 00 44 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 44 44 00 44 44 00 00 44 00 00 44 44 44 44 44 44 00 00 00 44 44 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 00 44 00 44 44 00 44 00 44 44 00 44 00 00 00 44 00 44 44 00 44 00 44 44 44 44 44 00 00 44 00 00 00 00 00 00 00 44 44 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 00 00 00 44 00
*/
