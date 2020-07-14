.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6da6, %rax
nop
nop
nop
xor $35895, %r13
mov (%rax), %rdx
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1d7a6, %rbp
sub $25735, %r13
mov $0x6162636465666768, %rax
movq %rax, (%rbp)
cmp %rbp, %rbp
lea addresses_A_ht+0x1a5a6, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
movb (%r15), %r13b
add %r10, %r10
lea addresses_WT_ht+0x7d4e, %r10
nop
nop
nop
nop
nop
dec %rdx
mov (%r10), %r15
xor %rbp, %rbp
lea addresses_UC_ht+0x11388, %rax
nop
nop
nop
add $56825, %rdx
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WC_ht+0x15e6a, %rsi
lea addresses_normal_ht+0x16349, %rdi
sub $5639, %rdx
mov $80, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x3b66, %rsi
lea addresses_WC_ht+0x2c28, %rdi
clflush (%rsi)
nop
add %r10, %r10
mov $30, %rcx
rep movsl
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x88c6, %rsi
lea addresses_WC_ht+0x1e892, %rdi
nop
nop
nop
inc %rdx
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x1bc26, %rsi
nop
nop
nop
xor $59967, %r11
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
nop
and $8566, %r13
lea addresses_A_ht+0x127f2, %rsi
lea addresses_A_ht+0xdc96, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $48826, %r10
mov $120, %rcx
rep movsl
nop
nop
nop
nop
nop
and $58388, %rsi
lea addresses_A_ht+0x4366, %rcx
nop
add %r11, %r11
movb (%rcx), %r10b
add %r11, %r11
lea addresses_normal_ht+0x101a6, %rax
nop
nop
nop
nop
and $10627, %rdx
movb $0x61, (%rax)
nop
nop
nop
nop
cmp $28907, %rax
lea addresses_WC_ht+0x13076, %r15
nop
nop
nop
nop
nop
sub $20017, %rbp
movb $0x61, (%r15)
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x15c0e, %rsi
lea addresses_normal_ht+0x5a66, %rdi
cmp $34862, %rax
mov $126, %rcx
rep movsw
nop
dec %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %rax
push %rbx
push %rdx

// Load
lea addresses_WC+0x17426, %rax
xor %rbx, %rbx
mov (%rax), %edx
xor %r10, %r10

// Store
lea addresses_WC+0x9a6, %rbx
nop
cmp $8195, %r13
movb $0x51, (%rbx)
nop
cmp %r10, %r10

// Store
lea addresses_A+0x15da6, %rbx
xor $62304, %r12
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
inc %r12

// Load
lea addresses_PSE+0x89a6, %r13
nop
nop
nop
and $41002, %r8
mov (%r13), %dx
inc %rdx

// Store
lea addresses_D+0x1d66e, %rdx
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
nop
nop
nop
xor $173, %rbx

// Store
lea addresses_A+0x1b9a6, %rbx
cmp $32538, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
cmp $20321, %rbx

// Store
lea addresses_UC+0x1b88e, %r8
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
movaps %xmm2, (%r8)
nop
nop
nop
nop
nop
cmp $26111, %r10

// Store
lea addresses_WC+0x4488, %r13
xor %r10, %r10
movl $0x51525354, (%r13)
cmp $54099, %rax

// Faulty Load
lea addresses_A+0x111a6, %rax
clflush (%rax)
nop
nop
nop
and %rbx, %rbx
mov (%rax), %dx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_UC', 'AVXalign': True, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'00': 7}
00 00 00 00 00 00 00
*/
