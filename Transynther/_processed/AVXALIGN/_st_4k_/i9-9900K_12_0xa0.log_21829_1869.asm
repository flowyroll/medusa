.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11a37, %r8
nop
nop
nop
cmp $58621, %r15
movb (%r8), %r11b
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1dc77, %r8
nop
sub $9350, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%r8)
nop
add $36901, %r13
lea addresses_WT_ht+0x12477, %r13
nop
nop
nop
lfence
mov (%r13), %di
nop
nop
and %r15, %r15
lea addresses_WT_ht+0x1d677, %rax
nop
nop
nop
nop
nop
sub $13930, %r11
mov (%rax), %r15
nop
sub $8223, %rax
lea addresses_A_ht+0xe097, %r15
sub $43496, %rbp
mov (%r15), %r11d
nop
nop
nop
nop
add %r8, %r8
lea addresses_UC_ht+0xf177, %rsi
lea addresses_WC_ht+0x1e9f7, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
mov $114, %rcx
rep movsl
nop
nop
nop
nop
add $49478, %rsi
lea addresses_normal_ht+0x10a77, %rsi
lea addresses_WC_ht+0xe637, %rdi
nop
nop
xor $19834, %rbp
mov $61, %rcx
rep movsl
cmp $11167, %rbp
lea addresses_UC_ht+0xa0f7, %rsi
lea addresses_normal_ht+0x1a077, %rdi
nop
nop
nop
nop
nop
dec %r15
mov $3, %rcx
rep movsb
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x199b7, %rsi
cmp $46806, %rbp
mov (%rsi), %r15d
dec %rsi
lea addresses_WT_ht+0xeef7, %rbp
nop
nop
nop
nop
sub $38709, %rdi
and $0xffffffffffffffc0, %rbp
vmovaps (%rbp), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x87f7, %rdi
nop
nop
nop
and $60646, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x93d7, %rbp
nop
nop
nop
nop
dec %rcx
mov (%rbp), %si
nop
nop
nop
nop
nop
add $28521, %rdi
lea addresses_WC_ht+0x22f7, %rcx
nop
sub $36884, %r8
mov (%rcx), %r15
nop
cmp $46890, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x88b7, %rsi
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
and %rdx, %rdx

// Store
lea addresses_PSE+0x15e77, %rcx
clflush (%rcx)
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovaps %ymm0, (%rcx)
nop
nop
nop
nop
nop
dec %r15

// Load
lea addresses_UC+0x8f7, %r12
nop
nop
nop
nop
add $26765, %r11
mov (%r12), %r15
xor %rcx, %rcx

// Load
lea addresses_UC+0x15af, %r15
nop
nop
nop
nop
nop
sub $19354, %r11
mov (%r15), %rbx
nop
nop
nop
nop
dec %r11

// Store
mov $0x6830dd0000000677, %r15
nop
nop
nop
xor $8860, %rdx
movl $0x51525354, (%r15)
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_UC+0x12677, %r15
sub $10362, %rdx
mov (%r15), %si
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
