.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1251d, %rbx
nop
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_WC_ht+0x121fb, %rbx
clflush (%rbx)
nop
and $49164, %rcx
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
nop
cmp $11110, %rcx
lea addresses_A_ht+0xb8fb, %rdi
add $27794, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
and $9094, %r11
lea addresses_A_ht+0x8b, %rcx
nop
dec %r12
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbx
nop
sub %r15, %r15
lea addresses_UC_ht+0x6b5b, %rsi
lea addresses_UC_ht+0x1423b, %rdi
nop
nop
nop
nop
nop
xor $13991, %r12
mov $64, %rcx
rep movsl
nop
nop
nop
and $40092, %rdi
lea addresses_normal_ht+0xa073, %r15
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
sub $46585, %r12
lea addresses_D_ht+0x8713, %rcx
clflush (%rcx)
nop
nop
add $43990, %rbx
and $0xffffffffffffffc0, %rcx
vmovaps (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r15
nop
nop
add %r11, %r11
lea addresses_A_ht+0xc3bb, %rsi
nop
nop
cmp %rcx, %rcx
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rsi

// Store
mov $0x47b, %rax
nop
nop
inc %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rax)
nop
dec %rax

// Store
mov $0xd57ee00000003bb, %rbp
clflush (%rbp)
nop
nop
nop
add $34724, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovups %ymm1, (%rbp)
nop
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WT+0x471, %rbp
nop
nop
nop
nop
nop
and $11928, %r14
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rbp)
nop
add %rsi, %rsi

// Store
lea addresses_A+0x2bbb, %rbp
nop
inc %rsi
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_A+0x2bbb, %r13
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r13)
nop
nop
nop
nop
cmp %r13, %r13

// Load
lea addresses_US+0x1a3bb, %rsi
sub %rax, %rax
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %r13
inc %r15

// Faulty Load
lea addresses_A+0x2bbb, %rax
and $19982, %r14
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'46': 14, '45': 9114, '00': 12641, '05': 58, '08': 2}
00 00 00 45 45 45 45 00 45 45 45 45 45 00 00 45 00 45 45 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 45 00 00 00 45 00 00 45 00 45 00 00 00 45 00 45 00 45 45 45 45 00 00 00 00 45 00 45 00 45 00 00 45 45 45 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 00 00 00 00 00 45 00 45 00 45 00 45 00 45 00 45 00 45 45 45 00 00 45 45 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 00 45 00 45 00 45 00 45 00 45 45 45 00 00 45 00 00 00 45 45 00 00 00 00 45 45 45 00 45 00 00 45 00 45 00 00 45 45 45 45 45 45 00 00 45 00 45 00 45 00 00 00 45 00 00 00 45 00 45 00 45 45 00 45 00 45 00 00 45 00 45 00 00 00 00 45 45 00 00 00 45 00 00 45 00 45 45 45 00 00 45 45 00 45 00 00 00 45 45 45 45 00 00 45 00 00 45 45 00 00 00 00 00 00 45 00 00 00 45 00 45 45 45 00 45 00 45 00 45 00 45 00 00 45 00 00 45 45 45 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 45 00 45 00 00 00 45 00 00 00 45 00 45 45 00 00 45 45 45 00 00 45 45 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 45 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 45 00 45 00 45 00 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 00 45 00 00 00 00 45 00 45 45 45 00 45 00 00 00 00 00 00 45 00 45 45 00 45 45 00 45 00 45 45 00 45 45 00 00 00 00 45 00 00 00 45 45 00 00 00 00 45 00 45 45 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 00 45 00 00 00 00 00 00 45 00 00 00 45 45 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 00 00 45 00 05 00 45 00 45 00 00 00 45 00 00 00 00 45 00 45 00 45 45 00 00 00 45 00 45 45 45 00 00 00 45 45 45 45 45 00 00 00 45 00 00 00 00 45 00 00 45 45 00 45 00 45 00 45 00 00 00 00 45 00 45 45 00 00 00 45 00 45 00 45 00 45 45 00 45 00 45 45 00 00 00 00 00 45 45 00 45 45 00 00 45 00 45 00 45 00 45 45 45 00 00 45 45 00 00 00 00 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 00 00 00 00 00 45 45 45 00 45 45 45 00 45 00 00 45 00 45 45 00 00 45 00 00 45 45 45 45 00 00 00 00 00 00 45 45 00 00 45 45 00 00 45 45 00 00 45 00 45 45 00 00 45 00 00 45 00 45 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 45 45 45 45 00 00 00 00 00 45 00 45 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 45 45 45 45 45 00 45 00 45 00 00 45 45 00 45 00 00 45 00 45 45 45 45 45 00 45 45 45 00 45 00 00 45 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 45 45 00 45 00 00 45 00 00 45 00 00 00 00 00 45 45 00 00 00 00 00 00 00 45 00 45 00 00 45 00 00 00 00 00 00 45 45 45 00 45 45 00 45 45 00 00 00 00 00 45 45 45 00 00 45 45 00 00 00 00 00 00 45 00 00 45 45 00 00 00 00 00 45 00 45 00 45 00 00 45 00 45 45 00 00 00 45 45 00 45 45 00 00 45 00 45 45 45 45 45 00 00 00 00 00 00 00 45 00 45 45 00 00 45 45 00 00 45 45 45 45 00 00 45 00 00 00 00 45 00 45 45 45 00 00 45 45 00 00 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 45 45 45 45 00 45 45 00 00 00 45 45 45 45 45 00 45 00 00 45 00 00 00 00 45 00 45 00 45 45 45 00 00 00 00 45 45 00 00 00 45 00 00 45 45 45 00 00 45 00
*/
