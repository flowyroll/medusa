.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13296, %rsi
nop
nop
nop
sub $3865, %r13
movb (%rsi), %r10b
add $42345, %r9
lea addresses_D_ht+0x496, %rcx
nop
cmp %r9, %r9
mov (%rcx), %r12w
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x4096, %r10
nop
xor %r15, %r15
movups (%r10), %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
xor $11500, %rcx
lea addresses_A_ht+0x19dd2, %r13
nop
nop
add %r9, %r9
movw $0x6162, (%r13)
nop
xor %r10, %r10
lea addresses_WT_ht+0x1d3fa, %r13
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
nop
and $45082, %r13
lea addresses_WC_ht+0x15024, %r12
nop
nop
nop
nop
nop
and $6329, %r13
movb $0x61, (%r12)
nop
add %rsi, %rsi
lea addresses_normal_ht+0xd5e6, %r9
xor %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
and $0xffffffffffffffc0, %r9
vmovntdq %ymm7, (%r9)
nop
nop
nop
and %r15, %r15
lea addresses_WC_ht+0xc5ee, %rsi
lea addresses_WT_ht+0xc46, %rdi
nop
nop
nop
nop
and $1818, %r10
mov $56, %rcx
rep movsb
and %r10, %r10
lea addresses_A_ht+0x6d36, %rcx
nop
nop
nop
nop
nop
and $63073, %r15
mov (%rcx), %r10
nop
nop
nop
cmp $36746, %r15
lea addresses_WC_ht+0x1c896, %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rdi)
dec %r13
lea addresses_D_ht+0x10e16, %r13
cmp $63289, %r12
mov (%r13), %ecx
nop
nop
nop
nop
sub $39492, %r15
lea addresses_WC_ht+0x15896, %r9
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r9)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0xc176, %rsi
lea addresses_WT_ht+0x13d44, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and $34918, %r13
mov $96, %rcx
rep movsq
nop
nop
nop
and $10592, %rsi
lea addresses_UC_ht+0x13182, %r13
nop
nop
nop
nop
nop
and $20509, %r9
mov (%r13), %esi
cmp $12265, %rsi
lea addresses_A_ht+0x8bb6, %r15
nop
nop
nop
and %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
sub $60455, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x1bc96, %r11
cmp $6917, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r11)
nop
nop
add $58412, %r13

// REPMOV
lea addresses_RW+0x1cc96, %rsi
lea addresses_D+0x5202, %rdi
nop
nop
xor %r11, %r11
mov $38, %rcx
rep movsb
and $54431, %r8

// Store
lea addresses_PSE+0x16056, %rdx
nop
nop
sub $43641, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
nop
nop
inc %r13

// Load
lea addresses_normal+0x496, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add %r8, %r8
movups (%r9), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WC+0x18596, %r13
nop
nop
nop
nop
nop
sub $24489, %r9
movw $0x5152, (%r13)
nop
sub $25945, %r8

// Store
lea addresses_WT+0x16c96, %r9
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
sub %r13, %r13

// Faulty Load
lea addresses_WT+0x16c96, %r8
nop
sub $10903, %rdi
mov (%r8), %si
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'52': 21829}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
