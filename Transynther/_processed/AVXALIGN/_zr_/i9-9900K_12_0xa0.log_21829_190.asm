.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x161c9, %rsi
lea addresses_normal_ht+0x14eb9, %rdi
nop
nop
nop
nop
nop
sub $56050, %r14
mov $118, %rcx
rep movsl
nop
nop
nop
nop
cmp $43950, %r9
lea addresses_UC_ht+0x19c29, %r14
nop
nop
and %rbp, %rbp
mov (%r14), %edi
and $38685, %rsi
lea addresses_A_ht+0x1ebc9, %rsi
lea addresses_D_ht+0x19929, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $58, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x16d03, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
and $53462, %r11
lea addresses_WC_ht+0xc679, %rsi
nop
add $63570, %r11
mov (%rsi), %rdi
nop
nop
nop
inc %r14
lea addresses_A_ht+0x19229, %rdi
nop
dec %r11
mov (%rdi), %rcx
nop
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x13d29, %rbp
nop
nop
nop
nop
nop
xor %rcx, %rcx
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
inc %rsi
lea addresses_WT_ht+0x17c5, %rsi
lea addresses_normal_ht+0x12241, %rdi
clflush (%rsi)
nop
cmp $10374, %r8
mov $38, %rcx
rep movsb
nop
nop
nop
nop
xor %r8, %r8
lea addresses_A_ht+0x18aa1, %r11
nop
nop
and $25895, %r9
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
and %r8, %r8
lea addresses_WT_ht+0x1e99d, %rsi
lea addresses_WT_ht+0x12ea9, %rdi
clflush (%rsi)
nop
add $18655, %r11
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $42782, %rbp
lea addresses_D_ht+0x4529, %rbp
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
add %rbp, %rbp
lea addresses_WT_ht+0xc429, %rbp
nop
nop
nop
cmp $39825, %r9
movl $0x61626364, (%rbp)
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xf929, %rsi
lea addresses_WC_ht+0x2389, %rdi
nop
nop
nop
sub %r11, %r11
mov $117, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1d6a1, %rbp
nop
nop
nop
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
add %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rdx
push %rsi

// Load
lea addresses_WT+0xacc9, %rdx
nop
nop
nop
nop
nop
cmp $26739, %rsi
mov (%rdx), %r8d
nop
nop
nop
add $7017, %rbp

// Store
lea addresses_normal+0x2ff1, %rdx
nop
and $10427, %r12
movb $0x51, (%rdx)
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
mov $0x29, %r8
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%r8)
nop
nop
nop
nop
cmp $64599, %rdx

// Store
lea addresses_A+0x18173, %rsi
nop
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r8
movq %r8, (%rsi)
nop
nop
and $58549, %r11

// Store
lea addresses_D+0x1c9bd, %r8
nop
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
nop
nop
sub $57648, %rbp

// Store
lea addresses_WC+0xf1e9, %r13
nop
xor %rsi, %rsi
movl $0x51525354, (%r13)
nop
nop
add $27490, %rdx

// Faulty Load
lea addresses_WT+0x1829, %rdx
nop
nop
nop
nop
sub $40095, %r13
mov (%rdx), %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
