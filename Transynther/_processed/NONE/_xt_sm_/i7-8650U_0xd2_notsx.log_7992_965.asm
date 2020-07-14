.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x18097, %r15
nop
nop
nop
nop
nop
xor $7349, %r8
movb (%r15), %r9b
nop
nop
nop
nop
inc %rbp
lea addresses_UC_ht+0xb4f, %rsi
lea addresses_D_ht+0x2a2b, %rdi
nop
and %rbp, %rbp
mov $10, %rcx
rep movsq
and $37247, %rdi
lea addresses_A_ht+0x7117, %rsi
lea addresses_WC_ht+0x16497, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %rbx, %rbx
mov $18, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $56572, %rbx
lea addresses_UC_ht+0xb097, %rbx
nop
nop
nop
nop
nop
inc %rsi
movl $0x61626364, (%rbx)
nop
sub $5996, %r8
lea addresses_normal_ht+0x4177, %rcx
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rcx)
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0x13737, %r15
nop
nop
nop
nop
nop
xor %rbx, %rbx
movl $0x61626364, (%r15)
nop
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x34dd, %r9
nop
nop
nop
nop
nop
and $16031, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%r9)
nop
cmp $16464, %r9
lea addresses_D_ht+0xd317, %r15
and %rbx, %rbx
mov (%r15), %rsi
nop
nop
nop
nop
nop
add $1818, %rcx
lea addresses_WT_ht+0x91ef, %rsi
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
lfence
lea addresses_normal_ht+0x18ce7, %rdi
nop
nop
nop
sub %r8, %r8
mov (%rdi), %r9w
nop
nop
nop
add %r15, %r15
lea addresses_WT_ht+0xcc97, %rsi
lea addresses_WC_ht+0x5697, %rdi
nop
nop
add $16815, %r15
mov $118, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $46731, %r8
lea addresses_A_ht+0x5397, %rbp
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
nop
nop
nop
nop
sub $9427, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rdi
push %rsi

// Store
mov $0xd97, %rsi
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rsi)
nop
nop
and %rsi, %rsi

// Load
lea addresses_RW+0x1b517, %rbx
add $60190, %r11
mov (%rbx), %r14w
nop
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x9c0f, %r15
nop
xor $8780, %rbx
movb $0x51, (%r15)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x9257, %rsi
nop
nop
nop
nop
nop
sub $19260, %r11
mov $0x5152535455565758, %r14
movq %r14, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
nop
nop
sub $25723, %rdi

// Store
lea addresses_PSE+0x7b33, %rbx
nop
dec %r14
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
inc %r10

// Store
lea addresses_WT+0x4d17, %rsi
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
sub $46715, %r10

// Store
lea addresses_PSE+0x16c97, %r14
nop
add %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movaps %xmm5, (%r14)
add %rdi, %rdi

// Load
lea addresses_D+0xb497, %r15
add %r11, %r11
mov (%r15), %r14d
nop
nop
nop
add $37785, %r14

// Store
lea addresses_UC+0x17d17, %rdi
nop
nop
nop
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
add $31629, %r15

// Load
lea addresses_PSE+0x16c97, %r11
nop
nop
sub %rsi, %rsi
mov (%r11), %edi
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_PSE+0x16c97, %r10
add $58944, %r14
movb (%r10), %r15b
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'58': 7992}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
