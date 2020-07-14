.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x12ac0, %rcx
nop
nop
nop
nop
nop
sub $5994, %rbx
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
dec %rax
lea addresses_WT_ht+0x9dc0, %r14
add $320, %r10
movb (%r14), %r15b
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_WC_ht+0x88c0, %rax
sub %rdx, %rdx
movw $0x6162, (%rax)
nop
nop
nop
nop
nop
xor $678, %rbx
lea addresses_WC_ht+0x1c040, %rcx
add $41492, %r15
movb (%rcx), %r14b
nop
and $28220, %r14
lea addresses_UC_ht+0x199b8, %rsi
lea addresses_WT_ht+0x15b20, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $119, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x1be58, %r10
nop
nop
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%r10)
nop
nop
nop
dec %rax
lea addresses_D_ht+0x56f0, %rsi
lea addresses_D_ht+0x1e700, %rdi
nop
sub %rax, %rax
mov $38, %rcx
rep movsb
xor $45708, %r15
lea addresses_normal_ht+0x5dc0, %rsi
nop
nop
nop
dec %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
xor %rax, %rax
lea addresses_UC_ht+0x146c0, %rsi
lea addresses_D_ht+0x5c0, %rdi
nop
nop
nop
xor $36622, %rax
mov $46, %rcx
rep movsb
nop
and $44680, %rsi
lea addresses_WT_ht+0x95c0, %r14
add %rcx, %rcx
mov (%r14), %rbx
cmp $58748, %rax
lea addresses_A_ht+0x66e, %rsi
lea addresses_D_ht+0xce00, %rdi
nop
sub $59407, %r10
mov $69, %rcx
rep movsw
nop
cmp %r15, %r15
lea addresses_normal_ht+0x7dc0, %rdx
nop
nop
add $29132, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x9c80, %rsi
lea addresses_A_ht+0x13c0, %rdi
nop
nop
sub $18463, %r15
mov $62, %rcx
rep movsb
nop
nop
add %r14, %r14
lea addresses_WT_ht+0xe8f8, %rsi
lea addresses_UC_ht+0x74c0, %rdi
dec %r14
mov $96, %rcx
rep movsw
nop
nop
nop
nop
cmp $64622, %rsi
lea addresses_A_ht+0x12640, %rsi
lea addresses_UC_ht+0x9e10, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r10
mov $11, %rcx
rep movsb
nop
dec %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x1cdc0, %rdx
nop
nop
xor $8299, %rdi
movw $0x5152, (%rdx)
nop
nop
nop
nop
sub $58371, %r13

// Store
mov $0xef0, %r8
nop
nop
add %rax, %rax
movw $0x5152, (%r8)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
mov $0x640, %rbp
nop
nop
nop
nop
nop
and $40022, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rbp)
nop
nop
xor $1405, %r8

// Store
lea addresses_normal+0x1ddc0, %r8
inc %rbp
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0xc160, %rbx
nop
and $30920, %r13
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
nop
nop
nop
add $32900, %r13

// Faulty Load
lea addresses_D+0x4dc0, %rdx
xor %rbx, %rbx
movb (%rdx), %r13b
lea oracles, %r8
and $0xff, %r13
shlq $12, %r13
mov (%r8,%r13,1), %r13
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
