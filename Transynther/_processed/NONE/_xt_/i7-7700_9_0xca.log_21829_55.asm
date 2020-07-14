.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x6754, %r14
add %rdx, %rdx
mov (%r14), %rax
dec %r12
lea addresses_D_ht+0x7754, %rsi
lea addresses_A_ht+0xfc04, %rdi
nop
nop
nop
inc %r14
mov $118, %rcx
rep movsb
nop
nop
nop
nop
xor $6500, %rsi
lea addresses_WT_ht+0xf54, %rsi
lea addresses_normal_ht+0x5d54, %rdi
nop
nop
nop
add $6892, %r10
mov $16, %rcx
rep movsq
nop
xor $56670, %rcx
lea addresses_A_ht+0x1fdc, %r12
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
add $16705, %rdi
lea addresses_D_ht+0x7e75, %r14
nop
and $34701, %r12
mov (%r14), %ecx
and $21384, %rsi
lea addresses_WC_ht+0x9854, %rdx
clflush (%rdx)
nop
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0xc638, %rsi
nop
nop
nop
nop
nop
lfence
movl $0x61626364, (%rsi)
nop
nop
nop
nop
cmp $11615, %rax
lea addresses_normal_ht+0x1f54, %rsi
lea addresses_D_ht+0x1553c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $30771, %r12
mov $10, %rcx
rep movsw
nop
nop
nop
nop
nop
and $33094, %rax
lea addresses_normal_ht+0x19754, %rsi
lea addresses_WC_ht+0x1edf4, %rdi
nop
dec %r14
mov $98, %rcx
rep movsw
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x9a7c, %rsi
lea addresses_A_ht+0x17b54, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $55, %rcx
rep movsq
dec %r14
lea addresses_UC_ht+0x9304, %r10
nop
nop
nop
nop
xor $8473, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
and %r10, %r10
lea addresses_normal_ht+0x15754, %rcx
nop
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_A_ht+0xf334, %rdx
nop
nop
nop
nop
xor $38916, %rsi
movl $0x61626364, (%rdx)
nop
nop
nop
and %r12, %r12
lea addresses_UC_ht+0x8054, %rsi
lea addresses_D_ht+0x1ac54, %rdi
nop
nop
and %rax, %rax
mov $103, %rcx
rep movsw
nop
nop
nop
xor $35390, %r12
lea addresses_UC_ht+0x16f54, %rsi
lea addresses_normal_ht+0x90f4, %rdi
clflush (%rdi)
nop
dec %rdx
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x22d4, %rcx
dec %rbx
mov $0x5152535455565758, %r9
movq %r9, (%rcx)
nop
nop
nop
sub $332, %r11

// Store
lea addresses_UC+0x130b4, %rdx
nop
and %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rdx)
nop
add $12859, %r11

// Store
lea addresses_PSE+0x1c054, %r11
nop
nop
inc %r9
movw $0x5152, (%r11)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_normal+0x98d4, %r15
nop
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r15)
cmp %r15, %r15

// Store
mov $0xad4, %r15
nop
nop
nop
nop
sub $37723, %rdx
movl $0x51525354, (%r15)
nop
add $51859, %r13

// Faulty Load
lea addresses_RW+0xb754, %r11
clflush (%r11)
nop
nop
cmp $29225, %rbx
mov (%r11), %cx
lea oracles, %rdx
and $0xff, %rcx
shlq $12, %rcx
mov (%rdx,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
