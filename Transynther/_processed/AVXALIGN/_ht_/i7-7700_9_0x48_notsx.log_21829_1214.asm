.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1387b, %rbp
nop
nop
cmp $10528, %r8
movl $0x61626364, (%rbp)
nop
add %r9, %r9
lea addresses_D_ht+0x14223, %r14
nop
nop
nop
nop
nop
dec %rax
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r15
add %r9, %r9
lea addresses_WT_ht+0x5483, %rsi
lea addresses_A_ht+0x12123, %rdi
nop
sub $28398, %rax
mov $77, %rcx
rep movsl
nop
nop
nop
nop
nop
add $52385, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_WC+0xfaeb, %rbp
nop
and $57870, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%rbp)
nop
nop
nop
nop
add $59193, %r12

// Load
lea addresses_UC+0xa923, %r9
nop
nop
nop
nop
sub $31882, %rcx
mov (%r9), %rbp
nop
nop
sub $31463, %r9

// Store
lea addresses_normal+0x1a7e3, %r12
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%r12)

// Exception!!!
mov (0), %r12
nop
nop
nop
nop
nop
cmp %rax, %rax

// Load
lea addresses_PSE+0x1f8a3, %r10
nop
nop
nop
cmp %rax, %rax
movups (%r10), %xmm0
vpextrq $1, %xmm0, %rbx
nop
and $6679, %rbp

// Faulty Load
mov $0x623, %rcx
nop
nop
add $11202, %rax
movaps (%rcx), %xmm4
vpextrq $1, %xmm4, %r10
lea oracles, %rax
and $0xff, %r10
shlq $12, %r10
mov (%rax,%r10,1), %r10
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'46': 3841, '49': 17988}
49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 46 46 46 46 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 46 46 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 46 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 49 49 46 49 49 46 49 49 49 49 49 49 49 46 49 49 46 49 49 46 46 49 49 46 49 46 49 46 49 46 46 49 49 46 46 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 46 46 49 46 46 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 46 46 46 49 49 49 49 49 46 46 46 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 46 49 49 49 46 49 49 49 46 46 49 49 49 49 49 46 49 46 46 49 49 49 46 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 46 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 46 49 46 49 49 49 49 46 46 49 49 46 49 49 46 46 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 46 49 49 46 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 46 46 49 49 49 46 49 49 49 49 49 49 49 49 46 49 46 46 46 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 49 46 49 49 49 49 49 46 46 49 49 49 49 46 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 49 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 49 46 49 46 49 49 49 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 49 49 49 49 46 46 49 46 49 49 49 46 49 46 46 49 49 49 49 49 46 46 49 46 46 49 46 49 49 49 49 49 49 49 49 49 49 46 46 49 49 49 49 46 49 46 49 49 46 49 49 49 49 46 46 49 46 49 46 49 46 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 46 49 49 46 49 49 49 49 49 46 49 49 46 49 46 49 49 49 49 49 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 46 49 46 49 46 46 49 49 46 49 49 49 49 49 46 49 49 49 49 49 49 49 49 46 49 49 49 49 49 46 49 46 49 49 49 49 49 46 49 49 49 46 49
*/
