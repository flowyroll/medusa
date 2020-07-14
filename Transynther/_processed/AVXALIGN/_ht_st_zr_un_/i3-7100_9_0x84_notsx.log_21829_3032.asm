.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x10cfb, %rbp
clflush (%rbp)
nop
nop
nop
nop
add %rsi, %rsi
movw $0x6162, (%rbp)
nop
nop
nop
nop
add $39495, %rax
lea addresses_normal_ht+0x1407, %rsi
lea addresses_normal_ht+0x112bb, %rdi
nop
sub %r15, %r15
mov $77, %rcx
rep movsq
nop
nop
sub %rax, %rax
lea addresses_WC_ht+0x10dfb, %rcx
nop
lfence
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $41783, %r11
lea addresses_WT_ht+0x14953, %rbp
nop
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
sub $62652, %rdi
lea addresses_WT_ht+0x1b97b, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
and $39349, %r15
lea addresses_WC_ht+0x6f5b, %rsi
lea addresses_normal_ht+0x27fb, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub %r9, %r9
mov $63, %rcx
rep movsq
nop
cmp $21781, %rdi
lea addresses_D_ht+0xd7fb, %rsi
lea addresses_WT_ht+0x145fb, %rdi
clflush (%rsi)
clflush (%rdi)
nop
and $62507, %r15
mov $110, %rcx
rep movsw
xor %rsi, %rsi
lea addresses_WC_ht+0xd04a, %rsi
lea addresses_normal_ht+0x3747, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1c94b, %r15
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
nop
xor $7852, %rcx
lea addresses_A_ht+0xa19, %rdi
nop
inc %r11
movups (%rdi), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
xor $26357, %rax
lea addresses_D_ht+0x1b27f, %rcx
sub $23415, %rsi
movups (%rcx), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
inc %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0xbb7b, %rsi
lea addresses_D+0xa63c, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $84, %rcx
rep movsb
nop
nop
and $53786, %rcx

// REPMOV
lea addresses_normal+0x37fb, %rsi
lea addresses_A+0x1d1fb, %rdi
clflush (%rsi)
nop
cmp %r12, %r12
mov $110, %rcx
rep movsl
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_US+0x1960f, %rdx
nop
nop
xor %r8, %r8
mov (%rdx), %si
nop
nop
add $36288, %rcx

// Store
lea addresses_normal+0x37fb, %r12
cmp %rdx, %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_WT+0x3405, %rdi
xor $60447, %rbx
movl $0x51525354, (%rdi)
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_normal+0x37fb, %rdx
nop
nop
nop
and %rsi, %rsi
vmovntdqa (%rdx), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'b3': 68, 'fe': 1, '36': 1, 'dc': 1, '48': 4541, '4e': 1, 'a9': 1, '66': 1, 'ab': 1, 'd6': 4, '03': 5, '35': 1, '46': 13763, '34': 457, 'de': 1, '38': 1, '00': 2980, '8d': 1}
46 46 34 46 46 48 46 46 46 46 48 48 46 46 48 00 46 46 46 00 46 48 48 46 46 46 46 46 46 00 46 46 46 48 48 46 48 00 48 46 00 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 00 48 46 48 46 46 46 46 48 48 46 46 48 46 46 46 48 46 46 46 34 48 48 46 46 46 00 46 46 00 48 48 46 48 46 00 46 46 00 48 46 46 48 46 46 00 46 48 00 48 48 46 46 46 46 48 46 46 46 46 46 48 46 48 46 46 46 46 46 46 48 46 48 48 46 48 48 46 00 46 46 00 46 46 48 46 48 46 48 48 00 46 00 46 46 46 46 46 46 46 46 46 46 48 46 46 34 46 46 46 46 46 46 46 46 00 46 00 46 00 48 00 00 48 00 46 46 46 46 00 48 46 00 46 46 46 46 48 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 48 46 48 46 00 46 46 46 46 48 48 00 00 46 46 48 46 46 46 46 46 46 46 46 00 46 48 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 48 46 46 46 48 b3 46 48 46 46 00 46 48 48 46 48 46 46 34 00 48 46 46 46 46 46 46 46 46 48 00 46 46 48 46 48 48 34 46 46 46 46 48 46 46 46 46 46 46 46 46 46 46 48 46 46 46 46 46 46 46 00 46 00 46 46 00 48 00 48 46 46 46 46 48 46 48 48 48 46 46 46 46 48 00 46 46 46 46 46 46 46 46 48 46 48 46 46 48 46 46 46 46 48 46 46 00 00 00 46 46 46 34 46 46 46 46 46 48 48 46 34 46 00 46 48 48 46 48 46 48 46 00 48 46 46 46 00 46 46 00 46 00 46 46 00 46 46 00 00 46 4e 00 46 46 46 48 46 46 46 46 34 46 48 46 48 46 00 46 48 46 46 46 46 48 00 46 48 46 46 48 48 46 46 46 46 46 48 46 48 46 48 48 46 46 34 46 46 46 00 46 48 46 48 46 46 46 46 46 46 46 48 34 48 00 46 46 48 48 00 46 46 46 48 46 46 48 46 46 00 46 00 46 46 48 46 48 46 46 46 34 46 46 48 46 00 46 46 48 46 46 46 46 46 48 00 48 46 48 48 00 48 48 46 46 48 b3 46 00 00 46 46 46 48 48 00 46 48 46 46 46 46 46 46 46 46 48 48 46 46 00 46 46 46 00 46 46 46 00 00 46 46 46 48 46 46 46 46 48 46 46 48 46 46 46 46 46 46 48 48 48 46 34 46 46 46 46 48 46 00 48 46 48 48 48 46 00 46 00 00 46 48 46 00 46 46 46 46 46 48 00 46 48 34 48 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 48 48 48 00 48 00 46 46 46 00 46 00 48 46 46 00 46 48 00 46 46 46 48 46 46 46 48 46 00 46 46 00 00 46 46 46 46 48 46 46 46 48 46 46 46 00 46 46 46 46 48 48 46 46 00 46 00 00 48 46 46 46 00 46 48 46 46 00 34 46 46 46 46 46 00 46 48 46 46 46 46 46 46 46 46 46 46 46 48 48 48 00 46 48 46 48 00 46 46 46 48 46 46 46 46 00 46 46 46 46 46 46 00 48 46 46 48 46 48 48 46 46 46 46 46 00 46 46 34 46 46 48 00 46 46 00 00 46 46 46 46 48 46 00 46 46 46 48 00 46 46 46 46 46 48 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 48 48 46 46 48 46 00 46 48 46 48 46 46 46 46 00 48 46 46 46 46 46 48 46 48 46 00 00 00 48 46 46 00 46 46 46 00 46 46 48 46 46 46 48 00 00 48 46 46 46 00 48 48 46 48 46 48 46 46 00 46 46 46 46 46 46 46 46 46 48 34 00 46 46 46 46 46 46 46 46 48 46 48 46 48 00 46 48 46 48 46 34 46 46 48 46 00 00 46 46 46 46 46 46 46 00 00 46 46 48 00 46 46 46 46 46 48 46 00 00 46 46 46 46 48 48 46 46 00 46 46 48 00 46 46 00 00 48 46 46 46 46 46 46 46 46 03 48 00 46 46 46 00 46 46 46 46 46 46 48 46 46 46 46 00 00 00 46 48 46 46 46 48 46 46 46 46 46 46 48 48 00 46 00 46 46 48 46 48 48 46 48 46 46 46
*/
