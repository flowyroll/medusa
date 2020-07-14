.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1b996, %r12
cmp %rax, %rax
mov (%r12), %r14d
sub $26998, %r12
lea addresses_WC_ht+0xe856, %rsi
lea addresses_normal_ht+0x1e7e6, %rdi
clflush (%rsi)
nop
nop
add %r13, %r13
mov $112, %rcx
rep movsl
nop
add $53976, %r13
lea addresses_WT_ht+0x1b256, %rsi
lea addresses_A_ht+0x10c96, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r13, %r13
mov $49, %rcx
rep movsb
nop
xor %r13, %r13
lea addresses_WC_ht+0x42b6, %rdi
nop
nop
nop
nop
cmp %r12, %r12
movups (%rdi), %xmm7
vpextrq $1, %xmm7, %rax
and %rdi, %rdi
lea addresses_normal_ht+0x3586, %rax
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %r12
movq %r12, (%rax)
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x17dc0, %rsi
lea addresses_A_ht+0x1746, %rdi
nop
nop
nop
inc %r9
mov $52, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x188ca, %rsi
clflush (%rsi)
nop
nop
nop
cmp $61962, %r9
mov (%rsi), %r13d
nop
nop
nop
lfence
lea addresses_normal_ht+0x1a0e9, %r9
dec %rax
movb (%r9), %cl
nop
nop
nop
inc %rcx
lea addresses_A_ht+0xbef4, %rsi
lea addresses_WT_ht+0x1ae36, %rdi
nop
nop
nop
nop
nop
add %r9, %r9
mov $54, %rcx
rep movsq
add %rdi, %rdi
lea addresses_WT_ht+0xf2e7, %rdi
nop
nop
and $2024, %rax
movb (%rdi), %r14b
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x3856, %rsi
lea addresses_A_ht+0x1a1a6, %rdi
clflush (%rdi)
xor %r14, %r14
mov $113, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_WC_ht+0x79d6, %rdi
sub %r13, %r13
mov (%rdi), %r12d
cmp $19689, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_UC+0x11356, %r12
nop
nop
nop
cmp $64142, %rbx
movl $0x51525354, (%r12)
sub $6526, %rcx

// Store
lea addresses_A+0x1cd6, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
and $32561, %r12

// Store
lea addresses_PSE+0x1bd2, %rbp
nop
nop
sub $21794, %rbx
movw $0x5152, (%rbp)
nop
nop
nop
add %rcx, %rcx

// Load
lea addresses_US+0x1d078, %rdx
nop
nop
nop
nop
add $36421, %rcx
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
cmp $23503, %rdi

// Load
lea addresses_A+0x13856, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov (%rdi), %ebp
nop
nop
sub $17545, %rcx

// Store
lea addresses_D+0x42e2, %rbx
nop
nop
cmp $58975, %rdx
movb $0x51, (%rbx)
cmp %r11, %r11

// Store
lea addresses_US+0x76dc, %r12
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
sub $25129, %rbx

// Store
lea addresses_RW+0x1dfaa, %rdi
nop
nop
nop
and $64208, %rcx
movb $0x51, (%rdi)
sub %rcx, %rcx

// Faulty Load
lea addresses_A+0x13856, %rdx
clflush (%rdx)
nop
nop
nop
inc %rbx
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
