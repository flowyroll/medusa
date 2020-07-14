.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x2a06, %r11
nop
nop
and $165, %r14
movb (%r11), %r9b
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_A_ht+0xe386, %rbx
nop
nop
nop
xor %r9, %r9
mov (%rbx), %r10
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x1db86, %rbx
nop
nop
nop
nop
nop
xor $12182, %rdx
mov $0x6162636465666768, %r11
movq %r11, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
inc %r11
lea addresses_WT_ht+0x1d4c6, %rbx
add $55571, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
dec %r12
lea addresses_WC_ht+0x944e, %rsi
lea addresses_normal_ht+0x1dac2, %rdi
nop
nop
nop
nop
and $64998, %r10
mov $13, %rcx
rep movsq
add %r10, %r10
lea addresses_WC_ht+0x7f06, %r14
nop
nop
nop
nop
nop
cmp $60231, %r12
mov (%r14), %dx
nop
sub %r9, %r9
lea addresses_WC_ht+0x13686, %r11
and %r14, %r14
mov (%r11), %r10
and %rsi, %rsi
lea addresses_D_ht+0xaa4f, %rdi
clflush (%rdi)
nop
nop
and $51431, %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x19926, %rsi
lea addresses_WC_ht+0xdbde, %rdi
nop
nop
sub %r12, %r12
mov $6, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x1e386, %rsi
lea addresses_WC_ht+0x506, %rdi
nop
nop
and $38330, %r14
mov $78, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $42333, %r12
lea addresses_UC_ht+0xdf86, %rsi
lea addresses_A_ht+0xa706, %rdi
nop
nop
nop
add %r12, %r12
mov $85, %rcx
rep movsl
nop
nop
nop
nop
nop
and $11158, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rdx

// Store
mov $0x8c3, %r13
nop
nop
nop
nop
sub $6205, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0xf86, %r12
nop
nop
and $12052, %r13
movl $0x51525354, (%r12)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_RW+0x14044, %r11
nop
nop
xor $51824, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
movups %xmm5, (%r11)
add $61699, %r12

// Store
lea addresses_D+0x18146, %r8
nop
nop
nop
nop
nop
and $55085, %rdx
movw $0x5152, (%r8)
sub $41426, %r13

// Store
lea addresses_WC+0x1596, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rbx)
nop
sub $15056, %rdx

// Store
lea addresses_A+0x1b086, %rbx
nop
add $61803, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_RW+0xf186, %r13
clflush (%r13)
and %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
sub $26450, %r11

// Store
lea addresses_A+0xf86, %r8
nop
nop
xor %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
cmp $50322, %r13

// Faulty Load
lea addresses_A+0xf86, %rdx
clflush (%rdx)
nop
nop
and %rbp, %rbp
movb (%rdx), %bl
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
