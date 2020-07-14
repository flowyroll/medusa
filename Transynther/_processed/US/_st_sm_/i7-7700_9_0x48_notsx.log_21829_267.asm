.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x5b83, %r13
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
nop
nop
nop
cmp $63083, %rbp
lea addresses_normal_ht+0xa683, %rdx
nop
nop
nop
nop
nop
and $49063, %rsi
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm4
vpextrq $1, %xmm4, %rdi
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0xd32b, %rsi
lea addresses_normal_ht+0x1a2fb, %rdi
sub %rdx, %rdx
mov $57, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1763, %rcx
nop
nop
nop
xor %r10, %r10
movw $0x6162, (%rcx)
nop
nop
add %rdx, %rdx
lea addresses_WT_ht+0x8083, %r13
cmp $60989, %rdx
movw $0x6162, (%r13)
nop
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x13653, %rsi
lea addresses_D_ht+0x14863, %rdi
add $42429, %r15
mov $16, %rcx
rep movsl
nop
nop
mfence
lea addresses_D_ht+0xffb3, %rdi
nop
add %rdx, %rdx
movb (%rdi), %r10b
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1bc83, %rsi
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
sub $28183, %r13
lea addresses_WC_ht+0x5c83, %r15
nop
nop
nop
nop
xor %rsi, %rsi
movb (%r15), %cl
sub $45525, %rdx
lea addresses_A_ht+0xc686, %rsi
lea addresses_D_ht+0x90df, %rdi
nop
nop
xor %rdx, %rdx
mov $56, %rcx
rep movsb
nop
and $11051, %rdi
lea addresses_normal_ht+0x4943, %r15
nop
nop
nop
add %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0x10483, %r13
nop
nop
nop
nop
nop
inc %r10
movb $0x61, (%r13)
nop
nop
and $28978, %rcx
lea addresses_WC_ht+0x86d3, %r15
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x6162, (%r15)
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WT_ht+0x12283, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $61109, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
nop
add %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
mov $0x5c7, %rax
nop
nop
nop
sub $16929, %r14
movw $0x5152, (%rax)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x1b483, %r14
nop
nop
xor $38019, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r14)
nop
nop
inc %rbp

// Load
mov $0x483, %r9
nop
add %rdx, %rdx
movb (%r9), %al
nop
xor %rbp, %rbp

// Store
lea addresses_PSE+0x12853, %rax
sub %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rax)
nop
nop
xor %r9, %r9

// Store
mov $0x77d4ca0000000fe3, %rbp
nop
nop
nop
nop
nop
and $59218, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
cmp $55442, %rbp

// Store
lea addresses_normal+0x70c, %r13
nop
nop
nop
nop
nop
dec %r14
movw $0x5152, (%r13)
nop
nop
cmp %rbp, %rbp

// Store
mov $0x6c94270000000203, %rdx
sub $44266, %r13
movb $0x51, (%rdx)
nop
cmp %rcx, %rcx

// Faulty Load
lea addresses_US+0x1b483, %rbp
nop
cmp %rdx, %rdx
mov (%rbp), %ax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
