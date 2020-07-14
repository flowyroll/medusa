.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x6c55, %rdi
nop
inc %rbp
movb (%rdi), %r11b
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1b995, %r11
nop
cmp %r12, %r12
movl $0x61626364, (%r11)
nop
and $43770, %r13
lea addresses_normal_ht+0x19dec, %rsi
lea addresses_UC_ht+0x18ae1, %rdi
nop
nop
xor $54229, %r8
mov $0, %rcx
rep movsb
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x10599, %rsi
lea addresses_WT_ht+0x1c095, %rdi
nop
nop
nop
add $56298, %r13
mov $112, %rcx
rep movsl
cmp %r13, %r13
lea addresses_A_ht+0x19995, %rsi
lea addresses_normal_ht+0x18195, %rdi
nop
nop
nop
cmp $58591, %r11
mov $57, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $17923, %r8
lea addresses_WC_ht+0x5995, %r13
nop
nop
nop
cmp %rbp, %rbp
mov (%r13), %rcx
nop
and $20502, %r13
lea addresses_normal_ht+0x1bb95, %r13
nop
nop
nop
nop
nop
add %r12, %r12
mov (%r13), %si
nop
nop
nop
nop
nop
sub $20175, %r11
lea addresses_D_ht+0x12815, %rsi
lea addresses_WT_ht+0x7d95, %rdi
sub %rbp, %rbp
mov $23, %rcx
rep movsl
nop
nop
nop
nop
xor %r12, %r12
lea addresses_normal_ht+0x9f05, %rsi
lea addresses_WT_ht+0x5215, %rdi
nop
nop
add $34137, %r11
mov $78, %rcx
rep movsw
nop
inc %rdi
lea addresses_UC_ht+0x6ad5, %r8
nop
nop
sub %rbp, %rbp
movw $0x6162, (%r8)
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Load
mov $0xc95, %rdi
nop
nop
sub $62911, %rsi
mov (%rdi), %r10d
nop
nop
nop
nop
and $62947, %rbx

// Store
mov $0x77b8e60000000f95, %r9
clflush (%r9)
nop
nop
sub %r13, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r9)

// Exception!!!
nop
mov (0), %r9
nop
nop
nop
nop
nop
sub $33312, %r9

// Store
lea addresses_A+0x3195, %rsi
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rsi)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
nop
and $50204, %rdi

// Load
lea addresses_normal+0x1a9a5, %r9
nop
nop
nop
sub $21998, %rsi
mov (%r9), %r10d
nop
nop
nop
nop
xor $24574, %rbx

// REPMOV
mov $0x70f9dd0000000295, %rsi
lea addresses_D+0x1c195, %rdi
nop
nop
nop
nop
nop
and %r9, %r9
mov $116, %rcx
rep movsl
nop
nop
nop
nop
cmp $18740, %rcx

// Store
lea addresses_US+0x1a745, %rbx
nop
cmp $63260, %rsi
movb $0x51, (%rbx)
nop
nop
xor $16729, %r9

// Store
lea addresses_D+0x13d95, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm3
vmovups %ymm3, (%rdi)
add %rdx, %rdx

// Store
lea addresses_WT+0x18395, %rdx
nop
dec %r13
movl $0x51525354, (%rdx)
nop
xor $1437, %rdi

// Store
lea addresses_D+0x9fed, %rsi
clflush (%rsi)
and $25332, %rcx
movb $0x51, (%rsi)
nop
nop
and %rdx, %rdx

// Load
lea addresses_RW+0x195cd, %rcx
nop
cmp $19381, %r9
vmovups (%rcx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
xor %r13, %r13

// Store
mov $0x2f5, %rsi
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%rsi)
nop
inc %rbx

// REPMOV
lea addresses_UC+0x16e50, %rsi
mov $0x914560000000495, %rdi
nop
and $2406, %r13
mov $2, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $51955, %rdi

// Store
mov $0x195, %r9
cmp $44908, %rdi
movl $0x51525354, (%r9)
and $51536, %rcx

// REPMOV
lea addresses_normal+0x1ed75, %rsi
lea addresses_WT+0xffb1, %rdi
nop
nop
nop
nop
nop
lfence
mov $97, %rcx
rep movsl
nop
and $28096, %rsi

// Store
mov $0x51561c0000000195, %r13
nop
nop
add $7696, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movups %xmm7, (%r13)
nop
add $22214, %rcx

// Faulty Load
mov $0x195, %rdi
nop
nop
nop
and $52699, %rsi
movntdqa (%rdi), %xmm3
vpextrq $0, %xmm3, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_UC', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_NC', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'congruent': 5, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 4}}
{'0c': 1}
0c
*/
