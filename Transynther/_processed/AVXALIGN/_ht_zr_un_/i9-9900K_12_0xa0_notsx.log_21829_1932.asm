.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1425f, %rsi
lea addresses_WC_ht+0x2f5f, %rdi
clflush (%rdi)
nop
dec %r14
mov $79, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $14136, %r13
lea addresses_D_ht+0x36eb, %rsi
nop
nop
xor %r10, %r10
mov (%rsi), %r13w
nop
nop
nop
cmp $23563, %r13
lea addresses_normal_ht+0xe95f, %rdi
nop
sub %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $30431, %rdi
lea addresses_UC_ht+0x795f, %r14
nop
dec %r10
vmovups (%r14), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
add $18894, %rcx
lea addresses_UC_ht+0x1d55f, %rsi
lea addresses_WC_ht+0x19297, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $23208, %rbx
mov $49, %rcx
rep movsq
nop
nop
nop
nop
cmp $38044, %r14
lea addresses_WT_ht+0x37df, %rbx
nop
nop
nop
dec %r10
movl $0x61626364, (%rbx)
nop
nop
nop
xor $9337, %rbx
lea addresses_normal_ht+0x8185, %r13
nop
nop
nop
nop
xor %rbx, %rbx
mov (%r13), %si
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x17d1f, %rsi
lea addresses_UC_ht+0x1d7db, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $59, %rcx
rep movsl
nop
nop
dec %rbx
lea addresses_D_ht+0x787b, %rsi
lea addresses_UC_ht+0x13572, %rdi
nop
nop
nop
nop
xor $60573, %r13
mov $41, %rcx
rep movsq
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x1b75f, %rsi
lea addresses_WC_ht+0x17f5f, %rdi
nop
nop
add $58558, %r10
mov $13, %rcx
rep movsl
inc %rsi
lea addresses_normal_ht+0x60bf, %rbx
sub %rcx, %rcx
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
xor %rdx, %rdx
lea addresses_WT_ht+0x18d1f, %r14
nop
nop
sub $34109, %r13
movl $0x61626364, (%r14)
nop
cmp $64899, %r13
lea addresses_A_ht+0x705f, %rbx
nop
nop
inc %rcx
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
cmp $16221, %r13
lea addresses_normal_ht+0x1af1f, %rsi
lea addresses_UC_ht+0x86ff, %rdi
nop
add %rdx, %rdx
mov $57, %rcx
rep movsq
add $24603, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xaabf, %r14
nop
nop
nop
dec %r12
movl $0x51525354, (%r14)
nop
nop
nop
nop
xor $54930, %r12

// Load
lea addresses_normal+0x1f9df, %r14
nop
nop
nop
nop
and %r12, %r12
mov (%r14), %r11
nop
nop
nop
dec %r14

// Store
lea addresses_WT+0x701f, %r12
clflush (%r12)
nop
nop
dec %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r12)
mfence

// REPMOV
lea addresses_US+0xa197, %rsi
lea addresses_A+0x1fbdf, %rdi
nop
nop
nop
nop
nop
sub $47425, %r11
mov $3, %rcx
rep movsw
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x14e8b, %r14
nop
nop
nop
nop
xor $38344, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%r14)
nop
nop
nop
nop
nop
xor $24265, %rsi

// Store
lea addresses_US+0x1195f, %r12
cmp $10996, %r14
movl $0x51525354, (%r12)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_D+0xaeef, %rcx
dec %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
nop
xor $2915, %r12

// Load
lea addresses_US+0x1195f, %rdi
nop
nop
nop
nop
xor $41843, %r14
mov (%rdi), %rdx
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x1d546, %r11
nop
cmp $6841, %r12
movb $0x51, (%r11)
nop
nop
nop
nop
add $31089, %r14

// Faulty Load
lea addresses_US+0x1195f, %rdx
add %r11, %r11
movntdqa (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_US', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 4, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 8}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'47': 9, '40': 1, '44': 7103, '05': 5, '46': 1966, '08': 3, '00': 12733, '61': 2, 'c9': 1, '89': 1, '72': 1, 'ff': 4}
00 46 00 00 00 44 44 44 44 00 00 46 00 00 00 44 00 44 44 00 44 46 00 00 00 00 44 44 00 44 44 44 00 00 44 44 00 00 00 44 44 44 00 44 00 46 44 00 00 00 00 44 00 00 00 44 00 00 00 46 44 00 00 00 00 00 44 00 00 44 44 00 00 00 00 00 46 46 44 00 00 00 00 00 00 44 44 00 44 00 00 00 00 00 44 00 44 44 44 46 00 00 00 00 00 44 00 00 44 44 44 00 44 44 00 00 00 44 46 00 44 00 00 44 00 00 00 00 00 00 46 44 00 00 00 44 00 00 46 46 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 44 00 00 00 46 00 00 00 44 44 00 00 00 46 46 44 00 44 00 00 00 00 44 00 44 00 44 44 00 44 44 44 44 44 44 00 00 46 44 00 44 44 44 00 46 44 00 44 00 00 44 00 44 46 46 46 46 00 44 00 44 00 44 44 00 00 44 00 00 00 00 46 46 44 00 00 00 44 00 00 46 44 00 46 00 00 00 00 00 00 44 00 00 00 44 44 00 00 44 44 44 00 44 44 46 44 44 44 00 00 44 00 00 44 44 44 46 00 00 44 44 00 00 00 00 00 00 00 00 44 44 00 00 00 46 46 44 00 44 44 46 00 44 00 00 44 00 00 46 00 00 44 46 00 00 46 00 46 00 00 44 00 00 46 00 00 00 46 44 00 00 44 00 44 00 46 00 44 46 00 00 00 00 44 44 44 00 00 46 00 44 00 00 00 00 44 00 44 00 00 00 44 46 46 00 44 00 46 44 44 00 00 00 00 00 00 46 00 44 44 46 00 44 00 44 00 46 00 00 00 00 00 00 00 44 46 44 44 00 44 46 00 46 00 00 00 00 00 00 00 00 44 44 00 00 44 44 44 46 00 00 00 00 44 46 44 00 44 44 00 44 44 44 00 00 00 00 00 46 44 46 00 00 46 44 00 44 00 44 00 44 00 00 00 44 44 00 00 44 00 00 44 00 00 00 00 00 44 00 44 00 00 00 00 00 44 46 00 44 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 44 00 00 44 00 46 44 00 46 00 00 00 00 00 00 44 44 46 44 00 44 44 46 44 46 44 00 00 44 46 44 00 00 46 00 00 00 00 44 44 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 44 46 00 44 44 00 00 00 46 00 00 46 46 44 44 44 00 00 00 00 44 00 00 44 00 00 00 00 00 44 44 46 44 00 00 00 44 44 00 00 00 00 00 00 46 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 46 00 00 00 00 00 00 00 00 00 44 46 44 00 44 00 00 44 44 44 46 44 00 44 00 44 44 00 46 44 00 00 00 44 00 00 44 44 46 00 44 00 00 46 00 46 00 00 00 46 44 00 00 44 44 00 00 00 44 44 00 00 44 44 44 44 00 44 46 44 46 00 44 00 00 00 00 44 00 44 44 00 00 44 44 44 00 00 46 00 00 44 00 44 44 00 44 44 00 00 00 44 00 44 00 00 00 00 00 44 44 00 44 44 00 44 00 44 46 44 46 44 00 44 00 46 00 44 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 46 00 46 44 44 44 00 00 00 44 46 44 44 46 44 44 46 44 44 00 44 00 46 44 44 00 00 00 00 00 00 44 00 00 46 00 46 44 44 00 00 00 44 00 00 46 00 46 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 46 00 44 00 44 00 46 44 00 00 44 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 44 44 00 00 00 00 00 00 44 00 44 00 00 44 00 00 00 44 44 00 00 44 00 44 00 44 44 44 44 44 44 00 00 00 00 44 44 00 00 46 44 44 46 00 44 46 44 44 46 46 00 00 44 00 00 44 44 44 44 44 00 00 00 00 44 00 44 00 00 00 00 00 46 44 00 00 00 44 44 46 44 00 00 44 00 44 00 46 44 00 00 00 00 00 44 00 44 00 00 00 44 00 00 00 00 44 00 44 46 46 44 44 00 00 44 00 00 00 44 00 00 44 44 44 00 00 00 00 46 46 00 00 00
*/
