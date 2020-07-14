.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x285b, %rsi
lea addresses_WT_ht+0x175db, %rdi
dec %r11
mov $56, %rcx
rep movsq
lfence
lea addresses_A_ht+0x67d7, %rsi
lea addresses_A_ht+0x4e5b, %rdi
nop
nop
nop
nop
nop
and $30015, %r11
mov $108, %rcx
rep movsw
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_WC_ht+0xbb, %r9
add %rdi, %rdi
movw $0x6162, (%r9)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x14100, %rbp
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rbp)
nop
cmp $55872, %rbp
lea addresses_A_ht+0x1848b, %rsi
lea addresses_UC_ht+0x93f1, %rdi
add %r15, %r15
mov $115, %rcx
rep movsq
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x101db, %rcx
nop
nop
nop
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x31db, %rbp
and %rsi, %rsi
movw $0x6162, (%rbp)
nop
nop
and $43205, %rcx
lea addresses_A_ht+0x74db, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdi
inc %rcx
lea addresses_A_ht+0xb95b, %rsi
lea addresses_A_ht+0xeab, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $4, %rcx
rep movsq
inc %rcx
lea addresses_WC_ht+0x2b93, %r11
nop
nop
nop
and $41, %r13
movw $0x6162, (%r11)
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xa05b, %rsi
lea addresses_WT+0x1385b, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r10
mov $48, %rcx
rep movsl
nop
nop
nop
cmp %rbp, %rbp

// Load
lea addresses_A+0x1c11b, %rbp
nop
nop
nop
xor $2721, %r11
mov (%rbp), %rcx
nop
add %rbp, %rbp

// Store
lea addresses_A+0xa45b, %r10
nop
nop
nop
nop
nop
xor %r8, %r8
movw $0x5152, (%r10)
nop
nop
sub %rbp, %rbp

// Store
lea addresses_WC+0x1305b, %r11
nop
add $62542, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%r11)
nop
cmp $22285, %rbp

// Store
lea addresses_WT+0xc03b, %rsi
inc %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
and $28832, %rbp

// Store
lea addresses_UC+0x1083b, %r8
nop
dec %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r8)
nop
nop
nop
and $58526, %r10

// Store
lea addresses_WC+0x9aab, %r11
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r11)
nop
nop
xor $193, %rcx

// Load
lea addresses_RW+0xe05b, %rsi
nop
nop
nop
nop
cmp $22269, %r11
movb (%rsi), %cl
nop
nop
cmp %r10, %r10

// Store
lea addresses_PSE+0x1df03, %rsi
clflush (%rsi)
nop
nop
nop
sub $19206, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x1d523, %rcx
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
cmp $52952, %r10

// Store
lea addresses_WT+0x1385b, %r8
dec %rdi
movb $0x51, (%r8)
inc %rbp

// Store
lea addresses_WC+0xa55b, %rbp
sub $34094, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rbp)
nop
and %rbp, %rbp

// Faulty Load
lea addresses_WT+0x1385b, %r10
nop
nop
xor %r8, %r8
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_PSE', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'33': 17113}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
