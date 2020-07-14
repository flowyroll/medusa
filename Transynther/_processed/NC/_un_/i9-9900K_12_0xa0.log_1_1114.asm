.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8fda, %r12
clflush (%r12)
cmp %rax, %rax
mov (%r12), %rdi
nop
cmp $54484, %r11
lea addresses_UC_ht+0x1b96a, %r10
nop
nop
nop
xor %rdi, %rdi
vmovups (%r10), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x4d5a, %rsi
lea addresses_A_ht+0x6a5a, %rdi
cmp $28212, %r9
mov $105, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_D_ht+0xe3da, %rsi
lea addresses_WC_ht+0x13da, %rdi
clflush (%rsi)
nop
nop
add $56886, %r10
mov $119, %rcx
rep movsl
nop
cmp %rax, %rax
lea addresses_WC_ht+0x1796a, %r10
nop
nop
and $60581, %r9
vmovups (%r10), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
nop
add %r9, %r9
lea addresses_WT_ht+0x28db, %rsi
lea addresses_WT_ht+0x1c9da, %rdi
nop
nop
nop
and $24339, %r11
mov $53, %rcx
rep movsq
inc %rcx
lea addresses_normal_ht+0x7fda, %rsi
lea addresses_WC_ht+0x26ca, %rdi
clflush (%rsi)
nop
nop
nop
dec %r9
mov $87, %rcx
rep movsb
nop
add %r11, %r11
lea addresses_A_ht+0x1a8da, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rdi)
inc %r12
lea addresses_WT_ht+0x11bda, %rsi
lea addresses_UC_ht+0x1cf9a, %rdi
nop
nop
dec %rax
mov $91, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $17844, %rcx
lea addresses_A_ht+0xa7da, %rcx
nop
nop
nop
nop
nop
cmp $43180, %rsi
movl $0x61626364, (%rcx)
nop
nop
sub $18864, %r12
lea addresses_normal_ht+0x100a2, %rsi
lea addresses_UC_ht+0xc3da, %rdi
clflush (%rsi)
nop
nop
nop
xor %r9, %r9
mov $54, %rcx
rep movsq
inc %rdi
lea addresses_WC_ht+0x11f5a, %rdi
nop
nop
nop
xor $20636, %r9
movw $0x6162, (%rdi)
nop
nop
nop
nop
cmp $59001, %r12
lea addresses_UC_ht+0x1eeda, %r12
nop
nop
nop
nop
cmp $18651, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
nop
nop
xor $56958, %r11
lea addresses_UC_ht+0xb922, %rdi
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%rdi)
nop
nop
add $34018, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_RW+0x14e7a, %rsi
nop
nop
sub %rdi, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_RW+0xca9a, %r8
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%r8)
nop
nop
nop
nop
nop
cmp $57877, %r10

// REPMOV
lea addresses_WT+0x95da, %rsi
lea addresses_WT+0xafda, %rdi
clflush (%rsi)
sub %r9, %r9
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r8, %r8

// Store
mov $0x992, %rcx
nop
nop
nop
sub $1390, %r10
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
add %rcx, %rcx

// REPMOV
lea addresses_RW+0x1d12a, %rsi
lea addresses_D+0xa7da, %rdi
and %r10, %r10
mov $127, %rcx
rep movsb
nop
nop
xor %rsi, %rsi

// Load
lea addresses_normal+0x77da, %rsi
nop
inc %rdi
mov (%rsi), %r9w
nop
nop
nop
nop
nop
and $38953, %rcx

// Store
lea addresses_UC+0x71da, %r10
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x5152, (%r10)
nop
nop
nop
nop
nop
and $53231, %r10

// Store
lea addresses_normal+0x97da, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
cmp %r9, %r9

// Load
lea addresses_PSE+0x5fda, %rdi
nop
add %rsi, %rsi
vmovaps (%rdi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
sub $14548, %rsi

// REPMOV
mov $0x4b9d0000000bda, %rsi
lea addresses_normal+0x15aae, %rdi
nop
nop
nop
nop
dec %r14
mov $31, %rcx
rep movsl
nop
nop
nop
nop
nop
add $51725, %r10

// Store
mov $0x2b9860000000fda, %rdi
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
nop
cmp $56416, %r10

// REPMOV
lea addresses_US+0xafda, %rsi
mov $0x4d9d570000000d92, %rdi
nop
nop
nop
sub $61980, %r10
mov $100, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_normal+0xfda, %r9
nop
nop
nop
and %r8, %r8
movb $0x51, (%r9)
nop
dec %r14

// Store
mov $0x2b9860000000fda, %r8
nop
nop
nop
nop
sub $4873, %rcx
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_normal+0xa3da, %r8
nop
nop
nop
nop
nop
sub $12672, %r14
movl $0x51525354, (%r8)
nop
nop
and %r8, %r8

// Faulty Load
mov $0x2b9860000000fda, %rsi
nop
nop
xor %r14, %r14
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rcx
and $0xff, %rcx
shlq $12, %rcx
mov (%rcx,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D'}}
{'src': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_NC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_US'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'ec': 1}
ec
*/
