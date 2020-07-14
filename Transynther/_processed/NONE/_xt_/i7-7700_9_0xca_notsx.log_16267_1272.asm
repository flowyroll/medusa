.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x724c, %rsi
lea addresses_WT_ht+0x1d48c, %rdi
nop
nop
nop
nop
nop
xor $59771, %rbx
mov $115, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $21072, %rbx
lea addresses_UC_ht+0xb34c, %r13
nop
nop
nop
nop
nop
lfence
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x7a1c, %rsi
lea addresses_WT_ht+0x15c78, %rdi
nop
nop
xor %r15, %r15
mov $19, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_A_ht+0x1b74c, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rbx), %ecx
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x5acc, %rsi
lea addresses_A_ht+0x11a64, %rdi
clflush (%rdi)
nop
cmp $64448, %rbx
mov $61, %rcx
rep movsl
nop
nop
sub %r10, %r10
lea addresses_D_ht+0x214c, %r13
nop
xor %r10, %r10
mov (%r13), %r15w
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x124fe, %r13
nop
nop
nop
nop
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r13)
nop
nop
nop
add $4363, %rdx
lea addresses_normal_ht+0x1471c, %rdx
nop
nop
nop
dec %rcx
movl $0x61626364, (%rdx)
nop
nop
nop
nop
nop
xor $13043, %r15
lea addresses_WC_ht+0x12b4c, %rsi
nop
nop
dec %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
xor $23101, %r10
lea addresses_UC_ht+0x293a, %rsi
lea addresses_WC_ht+0x1e664, %rdi
clflush (%rdi)
add %r13, %r13
mov $108, %rcx
rep movsb
nop
nop
nop
sub $28761, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_A+0x852c, %r9
nop
dec %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r9)
nop
nop
nop
nop
nop
cmp %r10, %r10

// Store
lea addresses_WC+0xcd04, %r14
nop
nop
nop
nop
cmp $22814, %rax
movb $0x51, (%r14)
sub $30440, %r9

// REPMOV
lea addresses_WT+0x1794c, %rsi
lea addresses_WT+0x1794c, %rdi
sub $8081, %r14
mov $0, %rcx
rep movsq
cmp %r10, %r10

// Store
lea addresses_UC+0xf6cc, %rdi
nop
nop
sub $56877, %r10
movw $0x5152, (%rdi)
nop
nop
add %rbp, %rbp

// REPMOV
lea addresses_PSE+0xb14c, %rsi
lea addresses_RW+0x56e4, %rdi
nop
nop
nop
nop
nop
add $56047, %r9
mov $35, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $3070, %rdi

// Store
lea addresses_RW+0x9d9a, %rax
nop
add %rsi, %rsi
movw $0x5152, (%rax)
nop
dec %rax

// Store
lea addresses_D+0x137cc, %rsi
nop
nop
nop
cmp %rcx, %rcx
movb $0x51, (%rsi)
nop
nop
nop
xor $63736, %r10

// Store
lea addresses_WT+0x954c, %rdi
add %rax, %rax
movw $0x5152, (%rdi)
nop
nop
and $57870, %rax

// Faulty Load
lea addresses_WT+0x1794c, %rsi
nop
xor %rdi, %rdi
mov (%rsi), %ebp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 7, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_RW'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'39': 16267}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
