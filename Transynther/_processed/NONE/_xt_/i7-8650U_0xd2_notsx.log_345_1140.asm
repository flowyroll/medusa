.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x15952, %rsi
lea addresses_D_ht+0x9182, %rdi
xor $57516, %r8
mov $110, %rcx
rep movsl
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xc982, %rsi
lea addresses_A_ht+0x6402, %rdi
nop
cmp %rdx, %rdx
mov $58, %rcx
rep movsb
nop
nop
nop
nop
xor $4265, %rdx
lea addresses_WT_ht+0x1c182, %rdx
nop
nop
nop
nop
xor %rbp, %rbp
mov (%rdx), %r8w
nop
nop
nop
xor $46961, %r8
lea addresses_UC_ht+0x6202, %rsi
nop
nop
nop
add $13564, %r13
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm1, (%rsi)
nop
nop
dec %r8
lea addresses_normal_ht+0x19c82, %rcx
cmp %rsi, %rsi
and $0xffffffffffffffc0, %rcx
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
xor %rdx, %rdx
lea addresses_D_ht+0x8a82, %rbp
nop
and %rdx, %rdx
mov (%rbp), %rcx
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x8d82, %rsi
lea addresses_A_ht+0x1c972, %rdi
nop
and %rbx, %rbx
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x3fba, %rsi
lea addresses_A_ht+0x1ed82, %rdi
clflush (%rsi)
xor %rdx, %rdx
mov $77, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_UC_ht+0x17482, %rcx
nop
nop
sub $33236, %rdi
movb (%rcx), %bl
nop
nop
lfence
lea addresses_UC_ht+0x15582, %rsi
lea addresses_UC_ht+0xd3d0, %rdi
nop
nop
sub $444, %rbp
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x498e, %rcx
nop
nop
nop
nop
xor $29643, %rsi
mov (%rcx), %dx
nop
add %rcx, %rcx
lea addresses_WT_ht+0x2382, %r8
nop
nop
and $7376, %rbp
movb $0x61, (%r8)
nop
cmp %r13, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdx

// Store
lea addresses_normal+0x1fb82, %r11
nop
nop
nop
add $3462, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r11)
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_UC+0x16e70, %r11
nop
nop
nop
nop
nop
xor $9068, %r13
movb $0x51, (%r11)
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x1c582, %r11
nop
nop
add $6180, %rdx
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%r11)
nop
nop
and $21362, %r8

// Store
lea addresses_RW+0xe7f2, %rcx
nop
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %r15
movq %r15, (%rcx)
nop
nop
nop
xor $54664, %r13

// Store
lea addresses_WT+0x1b042, %r15
nop
nop
cmp $53152, %r13
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
inc %rdx

// Load
lea addresses_US+0xead2, %r15
cmp $192, %r9
vmovaps (%r15), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r11
nop
nop
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_PSE+0xad82, %r9
nop
nop
nop
nop
inc %r15
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r13
lea oracles, %r15
and $0xff, %r13
shlq $12, %r13
mov (%r15,%r13,1), %r13
pop %rdx
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'33': 345}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
