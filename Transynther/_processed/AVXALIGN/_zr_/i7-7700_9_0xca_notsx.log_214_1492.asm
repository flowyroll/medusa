.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x48b7, %rsi
lea addresses_WC_ht+0x4ce1, %rdi
nop
nop
sub $34353, %rbx
mov $54, %rcx
rep movsq
nop
add $60362, %rdi
lea addresses_D_ht+0x11cb7, %rsi
lea addresses_A_ht+0xd5c7, %rdi
clflush (%rsi)
nop
nop
add %r14, %r14
mov $121, %rcx
rep movsb
nop
nop
add $39160, %rsi
lea addresses_WT_ht+0x13cb2, %r14
nop
nop
nop
cmp $30374, %r10
mov (%r14), %rbx
and $40956, %rbx
lea addresses_normal_ht+0x1407, %rsi
lea addresses_WC_ht+0x31b7, %rdi
sub %rax, %rax
mov $124, %rcx
rep movsq
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1d4b7, %rcx
xor %r10, %r10
movl $0x61626364, (%rcx)
nop
sub %r14, %r14
lea addresses_UC_ht+0xe2b7, %r14
sub $32564, %r10
mov (%r14), %bx
nop
cmp $20331, %r10
lea addresses_WT_ht+0x8537, %rdi
clflush (%rdi)
nop
nop
nop
add $54528, %rsi
movb $0x61, (%rdi)
nop
nop
nop
nop
and $51223, %r10
lea addresses_D_ht+0x11d37, %r10
nop
nop
nop
nop
nop
add $9150, %rdi
mov (%r10), %r14w
nop
nop
nop
inc %r10
lea addresses_D_ht+0x17e17, %rcx
nop
nop
nop
nop
nop
xor %rbx, %rbx
movb (%rcx), %r10b
dec %rbx
lea addresses_UC_ht+0x1caaa, %rsi
lea addresses_A_ht+0xebd7, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
nop
xor $49764, %rdi
lea addresses_UC_ht+0x16073, %rsi
lea addresses_WT_ht+0x14b7, %rdi
nop
sub $22778, %r8
mov $58, %rcx
rep movsl
xor %r8, %r8
lea addresses_WC_ht+0xa477, %r14
nop
nop
nop
nop
nop
inc %rsi
movb (%r14), %al
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x46e7, %rdx
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
cmp %rbp, %rbp

// Store
mov $0x5472310000000dcb, %rbx
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp $836, %rdi

// Store
lea addresses_US+0x98b7, %rbx
nop
nop
nop
and %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%rbx)
nop
and %rbp, %rbp

// Store
lea addresses_A+0xfbad, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %r9
movq %r9, (%rdx)
and $39969, %rbx

// Store
lea addresses_WC+0x1ee53, %rbp
clflush (%rbp)
nop
add $4445, %r15
movw $0x5152, (%rbp)
nop
nop
nop
xor %rdx, %rdx

// Faulty Load
lea addresses_PSE+0x184b7, %r15
nop
nop
nop
and $52749, %rbp
movntdqa (%r15), %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10, 'same': False, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 214}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
