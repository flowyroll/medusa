.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xa1f6, %rbp
nop
nop
sub %rdi, %rdi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm3
vpextrq $0, %xmm3, %r14
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0xdf86, %rsi
lea addresses_UC_ht+0xa528, %rdi
nop
nop
nop
nop
nop
dec %rax
mov $82, %rcx
rep movsq
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x8dc4, %rsi
lea addresses_D_ht+0xc306, %rdi
nop
nop
add $41573, %r11
mov $23, %rcx
rep movsb
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
mov $0x3980dc00000003f6, %rbx
nop
nop
cmp $3333, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rbx)
nop
nop
nop
inc %r13

// Store
lea addresses_RW+0x16bf6, %rdi
nop
nop
nop
nop
add %r14, %r14
movw $0x5152, (%rdi)
nop
xor %r8, %r8

// REPMOV
lea addresses_WC+0x982e, %rsi
lea addresses_UC+0x3bf6, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $32, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $28407, %rcx

// REPMOV
lea addresses_UC+0x17df6, %rsi
mov $0x3cff4f0000000096, %rdi
xor %r8, %r8
mov $119, %rcx
rep movsw
nop
dec %rbp

// REPMOV
lea addresses_UC+0x16596, %rsi
lea addresses_RW+0xbff6, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r14
mov $121, %rcx
rep movsw
nop
nop
sub %rdi, %rdi

// Store
mov $0x3980dc00000003f6, %r8
nop
nop
nop
nop
add $62514, %rbx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
sub $17348, %rsi

// Store
mov $0x458, %rdi
inc %rbx
movb $0x51, (%rdi)
nop
nop
nop
nop
sub $16594, %rsi

// Load
lea addresses_RW+0xf4f6, %rbp
nop
nop
nop
xor $23121, %rsi
mov (%rbp), %r8d
add %rcx, %rcx

// Load
lea addresses_US+0x1138e, %rbx
nop
nop
and %rdi, %rdi
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
sub $59636, %rdi

// Load
lea addresses_UC+0x167f6, %rbx
clflush (%rbx)
nop
nop
nop
inc %rsi
vmovntdqa (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rcx
nop
inc %r14

// Load
lea addresses_normal+0x1a3f6, %r8
nop
nop
nop
nop
nop
cmp $13398, %rdi
mov (%r8), %r14d
nop
add %r13, %r13

// Store
mov $0xe6e, %rcx
nop
dec %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovntdq %ymm7, (%rcx)
nop
nop
nop
nop
nop
and %r14, %r14

// Store
mov $0x3980dc00000003f6, %rbp
clflush (%rbp)
nop
nop
nop
nop
sub $51753, %rcx
movw $0x5152, (%rbp)
nop
nop
add %rbp, %rbp

// Store
lea addresses_A+0x1b84a, %r8
nop
nop
nop
nop
nop
and $25936, %rsi
movw $0x5152, (%r8)
nop
nop
and %rcx, %rcx

// Store
mov $0x3980dc00000003f6, %r8
nop
nop
add $24444, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r8)
dec %rsi

// Faulty Load
mov $0x3980dc00000003f6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rsi
mov (%rdi), %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_RW', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'9f': 1}
9f
*/
