.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x112c1, %rbp
nop
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%rbp)
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x10ed5, %r15
nop
add %rbx, %rbx
mov (%r15), %di
nop
nop
nop
nop
xor $12518, %rbx
lea addresses_WC_ht+0x8815, %r15
nop
nop
nop
mfence
movups (%r15), %xmm7
vpextrq $1, %xmm7, %rbx
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0xa733, %r14
nop
nop
nop
nop
dec %r13
mov (%r14), %bp
nop
nop
nop
nop
xor $56860, %rbx
lea addresses_WC_ht+0x106b5, %r14
and %rcx, %rcx
movl $0x61626364, (%r14)
nop
nop
nop
nop
cmp $26305, %rcx
lea addresses_UC_ht+0x1ec5, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
mov (%rcx), %r13d
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1d193, %rsi
lea addresses_WC_ht+0x12aad, %rdi
nop
nop
nop
and %r13, %r13
mov $101, %rcx
rep movsl
nop
nop
nop
sub $46869, %rbx
lea addresses_normal_ht+0x166d5, %rbp
nop
nop
nop
nop
nop
xor $45984, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x389f, %rsi
nop
nop
cmp %rdi, %rdi
mov (%rsi), %r13d
nop
nop
cmp $28993, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WT+0x5155, %rdx
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
add $49162, %r9

// Store
lea addresses_A+0x4195, %rbp
nop
nop
nop
nop
inc %r12
movw $0x5152, (%rbp)
nop
nop
nop
nop
and $14659, %rdx

// Faulty Load
lea addresses_US+0x1fad5, %r11
nop
nop
nop
nop
xor $49223, %r12
mov (%r11), %r13
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 164}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
