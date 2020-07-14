.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x11af4, %r11
clflush (%r11)
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r11)
add %rsi, %rsi
lea addresses_normal_ht+0x134e4, %rdx
clflush (%rdx)
nop
xor $46830, %r9
movb (%rdx), %r11b
nop
nop
nop
nop
add $15603, %r9
lea addresses_WC_ht+0xc274, %r9
nop
nop
nop
inc %rsi
movb (%r9), %r11b
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x1d174, %rsi
nop
nop
nop
nop
nop
add %rbp, %rbp
mov (%rsi), %bx
nop
nop
nop
nop
and $41575, %rbp
lea addresses_UC_ht+0x12d7c, %rsi
lea addresses_WT_ht+0x5674, %rdi
nop
nop
nop
and $38301, %rbp
mov $79, %rcx
rep movsw
and %rsi, %rsi
lea addresses_D_ht+0x1b274, %rsi
lea addresses_normal_ht+0xac74, %rdi
sub %r11, %r11
mov $77, %rcx
rep movsl
nop
inc %rdx
lea addresses_WC_ht+0x50e0, %rsi
lea addresses_D_ht+0x1e54, %rdi
nop
nop
nop
inc %r9
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x17074, %rsi
lea addresses_normal+0xd174, %rdi
nop
dec %r8
mov $17, %rcx
rep movsl
nop
nop
sub $25022, %r13

// Store
lea addresses_UC+0x8a74, %rdi
nop
nop
nop
nop
xor $63313, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
inc %rbp

// Store
lea addresses_WC+0xf1f4, %rdi
add %rdx, %rdx
movb $0x51, (%rdi)
nop
nop
dec %r8

// Store
lea addresses_PSE+0xad74, %rsi
nop
nop
nop
nop
nop
inc %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rsi)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_WT+0x13aeb, %rcx
clflush (%rcx)
nop
dec %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rcx)
xor %rdx, %rdx

// Load
lea addresses_UC+0x57d4, %rsi
nop
nop
nop
nop
nop
add $52104, %rbp
mov (%rsi), %r8d
nop
xor $40552, %r8

// Load
lea addresses_RW+0x1961d, %r13
nop
nop
dec %rsi
mov (%r13), %bp
nop
nop
inc %r13

// Faulty Load
lea addresses_UC+0xa74, %r13
clflush (%r13)
nop
nop
dec %rbp
mov (%r13), %ecx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'58': 5}
58 58 58 58 58
*/
