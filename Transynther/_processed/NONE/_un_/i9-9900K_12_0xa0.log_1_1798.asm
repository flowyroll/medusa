.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xf54, %rbx
cmp %r15, %r15
vmovups (%rbx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
inc %rcx
lea addresses_A_ht+0x1c2dc, %rsi
nop
dec %rax
movb (%rsi), %r13b
nop
nop
xor $11714, %rcx
lea addresses_UC_ht+0xbb1c, %r15
nop
nop
dec %rsi
movb (%r15), %r13b
nop
nop
nop
nop
add %rax, %rax
lea addresses_A_ht+0x1631c, %rsi
lea addresses_D_ht+0x14262, %rdi
nop
nop
nop
nop
inc %rbx
mov $87, %rcx
rep movsq
nop
nop
nop
nop
dec %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r9
push %rax
push %rbp
push %rdx

// Store
lea addresses_UC+0x115dc, %rbp
nop
xor %r13, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
nop
add %r13, %r13

// Load
mov $0x71c, %r13
nop
nop
nop
nop
xor %rax, %rax
movb (%r13), %dl
nop
nop
nop
nop
sub $31685, %r14

// Store
lea addresses_WT+0xeb1c, %rax
nop
sub $58629, %rdx
movl $0x51525354, (%rax)
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_A+0x6b1c, %rdx
sub %rbp, %rbp
mov (%rdx), %r13
lea oracles, %r13
and $0xff, %r13
shlq $12, %r13
mov (%r13,%r13,1), %r13
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dd': 1}
dd
*/
