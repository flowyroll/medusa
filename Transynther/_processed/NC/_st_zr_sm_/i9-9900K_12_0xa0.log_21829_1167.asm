.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1a824, %rsi
lea addresses_UC_ht+0x1118, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $39, %rcx
rep movsb
nop
nop
nop
dec %r9
lea addresses_WT_ht+0x11698, %rcx
nop
nop
nop
and %r13, %r13
vmovups (%rcx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
and %rcx, %rcx
lea addresses_D_ht+0xba44, %rdx
clflush (%rdx)
nop
nop
nop
nop
cmp %r12, %r12
movw $0x6162, (%rdx)
nop
nop
nop
and $15536, %rdi
lea addresses_WC_ht+0x1218, %rsi
lea addresses_WC_ht+0x1a918, %rdi
nop
and $25275, %rbp
mov $112, %rcx
rep movsb
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xb698, %rsi
lea addresses_A_ht+0x1c2a0, %rdi
nop
nop
nop
nop
nop
and $50228, %rdx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x11668, %r13
nop
nop
and %r12, %r12
movb (%r13), %dl
nop
sub $2599, %r12
lea addresses_A_ht+0x13b90, %rsi
lea addresses_A_ht+0xc018, %rdi
nop
nop
nop
sub $63674, %rdx
mov $27, %rcx
rep movsq
nop
nop
nop
add $3837, %rdi
lea addresses_normal_ht+0x10dd8, %r12
nop
add %rdx, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%r12)
nop
and $4556, %rbp
lea addresses_normal_ht+0x137f8, %rbp
nop
nop
cmp %rdx, %rdx
mov (%rbp), %ecx
dec %rsi
lea addresses_WC_ht+0x15918, %rsi
nop
nop
nop
nop
nop
lfence
movb $0x61, (%rsi)
nop
nop
nop
xor $15371, %r13
lea addresses_D_ht+0xb618, %rcx
nop
nop
nop
nop
cmp $43743, %r13
movb (%rcx), %dl
nop
nop
nop
nop
sub $6742, %r12
lea addresses_normal_ht+0x16da8, %r9
nop
nop
nop
nop
nop
sub $16948, %rsi
mov (%r9), %r13d
nop
and $44945, %rdx
lea addresses_A_ht+0x7118, %rcx
nop
nop
nop
nop
nop
add $15171, %rsi
mov (%rcx), %edx
add %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0xaf7bd0000000118, %rsi
clflush (%rsi)
nop
nop
nop
sub %r11, %r11
movl $0x51525354, (%rsi)
nop
nop
nop
nop
nop
and $16486, %rsi

// Store
lea addresses_A+0x194b4, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $12876, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovaps %ymm0, (%r13)
nop
nop
nop
add $29369, %rbx

// Store
lea addresses_RW+0x35b8, %rbp
nop
nop
nop
xor %r14, %r14
movl $0x51525354, (%rbp)
nop
nop
nop
and %rsi, %rsi

// Load
lea addresses_RW+0xcb2c, %rsi
nop
nop
sub $14337, %r9
mov (%rsi), %bx
nop
sub $60689, %r11

// Store
lea addresses_US+0x5c90, %rbx
add %r9, %r9
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
cmp %r11, %r11

// Faulty Load
mov $0xaf7bd0000000118, %r13
and $29267, %r14
mov (%r13), %si
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'54': 4052, '00': 17777}
00 54 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 54 00 00 00 54 00 00 54 00 00 00 00 00 00 54 54 00 00 00 54 00 54 00 00 00 54 54 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 54 00 54 00 54 00 54 00 00 00 00 00 00 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 54 00 00 00 54 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 54 54 54 54 54 54 54 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 54 54 00 00 54 00 00 00 00 54 00 54 00 00 00 00 00 00 00 54 00 00 54 00 00 00 54 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 54 54 00 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 54 00 00 00 00 00 00 00 54 00 54 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 54 00 54 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 54 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 00 00 54 54 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 54 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 54 00 00 54 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 00 00 54 54 54 54 54 00 00 54 54 00 00 00 00 54 00 00 54 54 00 54 00 00 00 54 00 00 00 54 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 54 54 00 00 00 00 00 00 00 00 54 54 54 54 00 54 00 00 00 54 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 00 00 54 54 00 00 00 54 00 00 00 54 54 54 00 00 00 00 54 00 00 00 00 54 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 00 00 54 54 54 00 00 00 00 54 54 00 00 00 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 54 54 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 54 00 00 00 54 00 00 54 00 00 00 54 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 00 00 00 00 00 00 00 54 54 54 00 00 00 00 00 00 00 00
*/
