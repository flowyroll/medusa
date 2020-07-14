.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4aa3, %rsi
nop
nop
nop
nop
xor $11902, %r15
mov (%rsi), %r12d
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x1b1a3, %rsi
lea addresses_WT_ht+0x1237f, %rdi
nop
sub %r15, %r15
mov $122, %rcx
rep movsw
add %rcx, %rcx
lea addresses_D_ht+0x17ea3, %rsi
nop
nop
nop
nop
nop
add %rax, %rax
mov (%rsi), %r11w
nop
add %rax, %rax
lea addresses_WT_ht+0x18aa3, %r12
nop
nop
nop
nop
sub $47163, %rcx
mov (%r12), %r15d
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1cdf3, %rax
clflush (%rax)
and $1081, %r15
movl $0x61626364, (%rax)
xor $1355, %rdi
lea addresses_D_ht+0x54a3, %rsi
nop
nop
nop
nop
nop
add $32115, %r12
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdi
nop
inc %rcx
lea addresses_D_ht+0x1e72b, %rax
nop
nop
nop
nop
and %r12, %r12
mov (%rax), %edi
nop
nop
nop
nop
add $26145, %r12
lea addresses_WC_ht+0xd86a, %rsi
lea addresses_D_ht+0xc6a3, %rdi
nop
nop
sub $33702, %r8
mov $73, %rcx
rep movsw
nop
nop
inc %r15
lea addresses_WT_ht+0x14f63, %rdi
nop
nop
add $62706, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub $5348, %rax
lea addresses_A_ht+0x7ca3, %rax
nop
add $37903, %rcx
movb (%rax), %r11b
nop
nop
nop
nop
xor %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_US+0xd6a3, %rdx
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
cmp $52644, %rdx

// Store
lea addresses_A+0x110c4, %rdx
nop
nop
sub %r11, %r11
movw $0x5152, (%rdx)
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_D+0x7ea3, %r11
nop
nop
nop
nop
nop
cmp $30694, %r8
movntdqa (%r11), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'44': 12682, '48': 835, '00': 8233, '46': 79}
44 44 00 48 44 44 00 44 00 44 44 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 48 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 00 44 00 00 44 48 00 44 44 44 44 00 44 00 44 44 44 00 44 00 00 44 00 44 44 44 00 44 44 44 44 00 00 44 00 00 44 00 00 44 48 00 44 00 44 44 00 44 00 44 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 48 44 44 00 44 44 00 44 00 44 44 44 44 00 44 44 44 44 48 00 44 48 00 44 00 44 44 00 44 48 00 44 00 44 00 00 44 00 00 44 00 44 00 00 44 44 44 44 00 44 00 44 44 44 44 44 44 44 00 44 48 00 44 44 00 44 44 48 44 44 44 44 44 00 44 44 00 44 00 00 44 00 46 00 00 44 00 44 00 44 44 48 00 44 44 44 44 44 44 44 44 00 44 44 00 00 44 48 00 44 00 44 44 44 44 00 44 44 00 44 00 44 00 00 44 00 44 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 00 44 44 00 44 44 00 44 00 44 44 00 44 00 00 44 00 44 00 44 00 00 44 00 44 00 44 44 00 00 44 00 00 44 00 00 44 44 44 44 00 44 44 44 44 44 00 44 44 44 00 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 44 44 00 44 00 00 44 44 44 44 44 00 44 44 00 44 44 48 00 44 00 00 44 00 44 44 00 44 00 44 44 00 44 00 44 00 00 44 00 44 00 00 44 44 00 44 44 44 44 00 44 00 44 44 44 00 44 44 44 44 00 44 44 44 44 00 44 44 00 00 44 00 44 44 00 44 00 44 44 00 44 00 44 44 00 44 00 00 44 00 44 00 44 44 00 44 00 44 44 00 44 00 44 00 00 44 00 44 44 00 00 44 44 00 44 00 44 00 44 48 44 44 00 44 00 00 44 00 44 00 44 44 00 44 44 44 44 00 00 44 00 00 44 00 44 44 00 44 00 00 44 00 44 00 44 00 00 44 00 00 00 44 00 44 00 00 44 00 00 44 00 44 44 44 44 44 44 00 44 00 44 44 00 44 44 00 44 00 44 44 00 44 44 44 44 00 44 48 00 00 44 00 44 44 00 44 00 00 44 00 00 44 44 00 44 44 46 00 44 00 44 44 44 44 00 44 48 44 44 48 44 44 46 44 00 00 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 00 44 00 44 00 00 44 46 44 00 00 44 00 00 44 44 44 44 00 44 48 00 44 44 00 44 00 44 48 44 00 44 48 44 44 44 00 44 00 44 44 00 44 44 44 44 00 00 44 00 00 44 00 44 44 00 44 00 00 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 44 00 44 00 00 44 00 44 44 44 44 00 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 44 44 00 44 00 00 44 00 44 00 44 44 00 44 00 44 00 00 44 00 00 44 00 00 44 44 44 44 44 44 00 44 44 00 44 00 00 44 00 44 00 44 44 44 44 00 44 44 44 44 48 00 44 48 00 44 00 44 44 00 44 00 00 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 44 44 00 44 00 44 44 44 44 00 44 00 44 44 44 44 44 46 44 44 00 44 44 00 44 00 00 44 00 44 44 44 44 00 44 44 44 44 44 00 44 44 00 44 00 44 44 00 44 00 44 48 44 44 00 44 00 44 48 00 44 00 00 44 00 00 44 44 44 44 00 44 00 44 44 44 00 44 44 44 00 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 44 44 00 44 00 44 00 00 44 00 00 44 48 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 44 00 44 44 00 44 00 00 44 00 00 44 44 00 44 00 44 44 00 44 48 44 44 00 44 00 00 44 00 44 44 44 44 00 44 44 44 44 00 00 44 48 00 44 00 44 44 00 44 00 44 44 00 00 44 00 00 44 44 44 44 44 44 44 44 48 44 44 00 44 48 00 44 00 44
*/
