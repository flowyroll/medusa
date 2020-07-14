.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d4b1, %rsi
lea addresses_normal_ht+0x17371, %rdi
nop
sub $46256, %rbx
mov $89, %rcx
rep movsl
cmp $7711, %rbp
lea addresses_WT_ht+0x14071, %rcx
nop
nop
dec %r13
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x19a71, %rsi
lea addresses_UC_ht+0x4851, %rdi
nop
and $34192, %rbp
mov $62, %rcx
rep movsl
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x441, %rsi
sub $32105, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
add $9761, %rcx
lea addresses_A_ht+0xbf71, %rsi
nop
nop
nop
cmp %r8, %r8
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rdx
push %rsi

// Load
lea addresses_WT+0x11871, %r10
nop
xor %rbp, %rbp
movb (%r10), %dl
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0x6f71, %r8
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%r8)
and $2146, %r13

// Store
lea addresses_normal+0xfa71, %r10
nop
nop
nop
nop
nop
and $33362, %r13
movb $0x51, (%r10)
nop
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_A+0x19f1, %r8
nop
cmp %r10, %r10
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_D+0x9f71, %rax
nop
cmp $25643, %r13
movb (%rax), %r10b
nop
dec %r8

// Store
lea addresses_RW+0x149d5, %r13
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
cmp $64851, %rdx

// Store
lea addresses_A+0x1971, %r10
add %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movntdq %xmm4, (%r10)
and %r8, %r8

// Store
lea addresses_US+0xfd71, %r8
nop
nop
sub $38343, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movaps %xmm6, (%r8)
xor $14534, %rax

// Load
lea addresses_US+0x1a507, %rdx
clflush (%rdx)
nop
nop
nop
add %r13, %r13
mov (%rdx), %rsi
nop
nop
nop
xor $53842, %rsi

// Store
lea addresses_US+0xfd71, %rax
nop
nop
nop
and %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%rax)
nop
nop
nop
nop
and %rax, %rax

// Load
lea addresses_US+0xfd71, %r10
nop
sub $11563, %rax
mov (%r10), %dx
nop
nop
nop
nop
xor $31249, %r10

// Store
mov $0x133, %r10
nop
nop
nop
nop
cmp $7702, %rdx
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
cmp $2069, %rdx

// Store
lea addresses_UC+0xac19, %rsi
nop
nop
add %rbp, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WT+0x1a571, %rax
and $714, %r10
movb $0x51, (%rax)
nop
nop
and $5542, %rdx

// Store
lea addresses_RW+0xe471, %r13
nop
nop
nop
nop
xor $52806, %r10
movw $0x5152, (%r13)
nop
nop
nop
inc %rax

// Faulty Load
lea addresses_US+0xfd71, %rax
nop
nop
cmp $26357, %r10
mov (%rax), %rbp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'58': 5257}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
