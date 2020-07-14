.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1766, %rsi
lea addresses_WT_ht+0xbce6, %rdi
cmp %rdx, %rdx
mov $59, %rcx
rep movsl
nop
nop
nop
nop
add $51861, %r10
lea addresses_normal_ht+0xece6, %rcx
nop
nop
nop
and %rdx, %rdx
movb $0x61, (%rcx)
nop
xor %r10, %r10
lea addresses_WT_ht+0xc24e, %rsi
lea addresses_D_ht+0x12ee6, %rdi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $2, %rcx
rep movsb
nop
nop
nop
add $26705, %rsi
lea addresses_WC_ht+0x71b6, %rsi
lea addresses_normal_ht+0x803c, %rdi
nop
cmp $62271, %r11
mov $37, %rcx
rep movsl
nop
nop
nop
dec %rdx
lea addresses_UC_ht+0xd826, %rsi
lea addresses_UC_ht+0x15b54, %rdi
dec %rbp
mov $55, %rcx
rep movsl
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1b6e6, %rdx
clflush (%rdx)
add %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
movups %xmm7, (%rdx)
add $50478, %rdx
lea addresses_WC_ht+0x14316, %r10
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1230e, %r11
nop
nop
nop
sub %rbx, %rbx
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
and %rbp, %rbp
lea addresses_WC_ht+0xe3e, %rbx
nop
nop
nop
nop
inc %rdx
movb $0x61, (%rbx)
nop
nop
nop
nop
and $15571, %rdx
lea addresses_UC_ht+0x1b8b6, %rcx
add $62809, %rbx
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $34009, %rcx
lea addresses_A_ht+0x2266, %rsi
lea addresses_D_ht+0x176e6, %rdi
clflush (%rsi)
nop
nop
add %rbp, %rbp
mov $92, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x4226, %rsi
lea addresses_UC_ht+0x16566, %rdi
nop
nop
and $32108, %rdx
mov $22, %rcx
rep movsl
cmp %rsi, %rsi
lea addresses_WC_ht+0x5b76, %rcx
nop
nop
nop
and %r10, %r10
mov (%rcx), %rsi
add %rdi, %rdi
lea addresses_WC_ht+0x19f6a, %rsi
nop
nop
nop
cmp %rbp, %rbp
movb $0x61, (%rsi)
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x1e6e6, %rsi
nop
nop
nop
nop
nop
xor $60068, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, (%rsi)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x1c896, %r13
nop
nop
sub $32266, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%r13)
nop
inc %r9

// Store
lea addresses_normal+0x16a86, %rcx
nop
xor $52329, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
nop
nop
dec %r14

// Load
lea addresses_US+0x729e, %rbp
nop
nop
nop
nop
nop
sub $64173, %rcx
mov (%rbp), %edx
nop
cmp $34779, %r14

// Load
lea addresses_RW+0x1a6e6, %rsi
nop
nop
nop
add $42143, %r13
movb (%rsi), %r9b
nop
sub $53222, %r14

// Faulty Load
lea addresses_WC+0x1c6e6, %rdx
nop
nop
nop
nop
and %rsi, %rsi
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
