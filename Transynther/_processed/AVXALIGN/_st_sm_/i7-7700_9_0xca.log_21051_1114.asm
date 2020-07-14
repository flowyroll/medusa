.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xb85b, %rsi
lea addresses_A_ht+0x1e53b, %rdi
and $11638, %rbx
mov $109, %rcx
rep movsl
nop
nop
nop
and $7925, %r14
lea addresses_WC_ht+0xc97b, %r15
nop
nop
nop
nop
nop
sub $34495, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
sub $40703, %rcx
lea addresses_normal_ht+0xa87b, %rcx
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1677b, %rsi
lea addresses_A_ht+0xeebb, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $9, %rcx
rep movsb
nop
nop
sub $56908, %r12
lea addresses_D_ht+0x1e9fb, %rdi
nop
nop
nop
nop
nop
dec %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
cmp $31762, %r15
lea addresses_D_ht+0x174bf, %r15
nop
nop
nop
add $32253, %r14
mov (%r15), %cx
nop
nop
nop
nop
dec %r12
lea addresses_WC_ht+0x2b7b, %rsi
lea addresses_UC_ht+0xef7b, %rdi
nop
nop
xor %r14, %r14
mov $122, %rcx
rep movsl
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x112ab, %rsi
lea addresses_D_ht+0xbf7b, %rdi
xor %r12, %r12
mov $68, %rcx
rep movsq
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1dd7b, %rcx
nop
nop
nop
cmp $2988, %r14
movb $0x61, (%rcx)
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x154b3, %r14
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r14)
nop
nop
dec %rdi
lea addresses_A_ht+0x1a4a3, %r14
xor $45153, %r12
movw $0x6162, (%r14)
nop
nop
cmp $12676, %r14
lea addresses_normal_ht+0x17c4b, %rcx
nop
nop
add %r14, %r14
mov (%rcx), %r12d
nop
nop
nop
nop
cmp $9064, %r14
lea addresses_UC_ht+0x142fb, %rsi
lea addresses_A_ht+0x81fb, %rdi
clflush (%rdi)
nop
nop
nop
mfence
mov $121, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_WC_ht+0x18cd3, %rsi
lea addresses_normal_ht+0x4f7b, %rdi
nop
nop
nop
add %r12, %r12
mov $14, %rcx
rep movsl
nop
nop
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_D+0x13cfb, %rcx
clflush (%rcx)
dec %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rcx)
nop
nop
nop
xor %r13, %r13

// Store
lea addresses_normal+0x1ef7b, %rcx
nop
nop
nop
and $45609, %rsi
movw $0x5152, (%rcx)
nop
nop
nop
and $24252, %r15

// Store
lea addresses_UC+0xbd7b, %r13
nop
nop
nop
and %rcx, %rcx
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp $31880, %r15

// Store
lea addresses_US+0xc573, %rbx
nop
nop
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
cmp %rdx, %rdx

// Faulty Load
lea addresses_normal+0x1ef7b, %rbp
add %rcx, %rcx
mov (%rbp), %bx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'52': 21051}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
