.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x109fb, %rsi
lea addresses_WC_ht+0x151fb, %rdi
nop
nop
and $22231, %rbp
mov $57, %rcx
rep movsb
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x70fb, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
movb (%r14), %cl
nop
nop
nop
nop
nop
sub $41661, %rdi
lea addresses_normal_ht+0xb4fb, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $14899, %rsi
movb $0x61, (%r11)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x18dfb, %rsi
nop
add $27608, %rdi
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x12ffb, %rsi
lea addresses_A_ht+0x16bfb, %rdi
clflush (%rsi)
clflush (%rdi)
xor $36700, %rax
mov $122, %rcx
rep movsb
nop
nop
nop
and $3938, %rbp
lea addresses_normal_ht+0x15743, %rax
nop
inc %rbx
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0xe1fb, %rax
nop
nop
nop
nop
nop
inc %rcx
vmovups (%rax), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
xor $15694, %rsi
lea addresses_UC_ht+0x950f, %rax
nop
inc %rbp
movb $0x61, (%rax)
sub $54858, %r11
lea addresses_WC_ht+0x1d5b2, %r14
clflush (%r14)
nop
nop
nop
xor $14121, %r11
movups (%r14), %xmm2
vpextrq $1, %xmm2, %rax
nop
nop
nop
nop
sub $44918, %rsi
lea addresses_A_ht+0x1333b, %rcx
nop
and $24989, %rbx
mov (%rcx), %esi
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x9fb, %rbp
nop
nop
nop
nop
dec %r11
vmovups (%rbp), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
xor $23868, %rbx
lea addresses_D_ht+0xe9c5, %r11
cmp $59269, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1389f, %rbx
nop
nop
nop
nop
nop
sub %r14, %r14
movl $0x61626364, (%rbx)
nop
add %rbx, %rbx
lea addresses_normal_ht+0x111fb, %rsi
lea addresses_WC_ht+0xf9fb, %rdi
nop
nop
nop
cmp %r11, %r11
mov $72, %rcx
rep movsq
nop
nop
nop
sub $57629, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
mov $0x54269b000000021b, %rbx
nop
nop
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rbx)
nop
nop
nop
nop
nop
add $20402, %rdx

// Store
mov $0x5feb93000000027b, %r10
nop
nop
add $57593, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
nop
nop
nop
inc %rdx

// Store
lea addresses_D+0xa81b, %rbx
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%rbx)
nop
nop
nop
xor $26595, %rdx

// Store
lea addresses_normal+0x1e07d, %r10
nop
xor $62103, %rdx
movw $0x5152, (%r10)
cmp %r11, %r11

// Store
lea addresses_RW+0xf9fb, %rbx
nop
nop
add %r10, %r10
movb $0x51, (%rbx)
and %r10, %r10

// Store
lea addresses_WT+0xe7fb, %r10
nop
nop
sub $38256, %rbp
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
dec %rdx

// Load
lea addresses_UC+0x145e6, %rbx
inc %r15
mov (%rbx), %r8
nop
nop
nop
nop
inc %r11

// Store
lea addresses_D+0x807, %r11
xor $25617, %rdx
movw $0x5152, (%r11)
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_UC+0x6dfb, %r10
nop
nop
nop
nop
nop
inc %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
xor $44290, %rbx

// REPMOV
lea addresses_UC+0xc77b, %rsi
lea addresses_WT+0x4c8b, %rdi
nop
nop
nop
add $27686, %rdx
mov $121, %rcx
rep movsq
nop
nop
nop
and $6545, %r15

// Store
lea addresses_WT+0x17a3f, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
dec %rbx

// Load
lea addresses_PSE+0x13bfb, %rcx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov (%rcx), %r8w
nop
nop
nop
nop
nop
lfence

// Faulty Load
mov $0x75c83a00000001fb, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb (%rbp), %bl
lea oracles, %rbx
and $0xff, %rbx
shlq $12, %rbx
mov (%rbx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'45': 1}
45
*/
