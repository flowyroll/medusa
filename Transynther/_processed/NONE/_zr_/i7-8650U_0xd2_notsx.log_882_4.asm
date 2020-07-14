.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb8f9, %rsi
lea addresses_normal_ht+0x1bbb3, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $67, %rcx
rep movsw
nop
nop
nop
cmp $7041, %rbx
lea addresses_WC_ht+0x11a53, %r15
nop
nop
nop
nop
nop
add %rbx, %rbx
mov (%r15), %ecx
nop
nop
nop
nop
nop
sub $61403, %rax
lea addresses_WT_ht+0xb493, %rax
sub %r14, %r14
movw $0x6162, (%rax)
nop
nop
nop
nop
xor $49728, %rax
lea addresses_normal_ht+0x10093, %r14
lfence
mov (%r14), %r15d
nop
nop
nop
add $37717, %rdi
lea addresses_WT_ht+0xc127, %rsi
lea addresses_WC_ht+0x13b13, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $24, %rcx
rep movsl
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x8dfb, %rsi
nop
add %rcx, %rcx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm0
vpextrq $1, %xmm0, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x10701, %rcx
inc %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
and $39936, %rdi
lea addresses_WT_ht+0x180f3, %rdx
nop
nop
nop
nop
nop
add $55946, %r14
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbx
nop
nop
nop
xor $7136, %r14
lea addresses_D_ht+0x1c793, %rsi
lea addresses_normal_ht+0x2033, %rdi
nop
nop
add $21346, %rdx
mov $27, %rcx
rep movsw
inc %rdx
lea addresses_D_ht+0x1a961, %rcx
nop
nop
nop
nop
add $26339, %rdi
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
xor $56548, %rcx
lea addresses_WC_ht+0x1ec93, %rsi
lea addresses_D_ht+0x16e53, %rdi
clflush (%rdi)
nop
add %r14, %r14
mov $38, %rcx
rep movsw
nop
nop
nop
dec %rbx
lea addresses_D_ht+0x10193, %rsi
lea addresses_UC_ht+0xc6db, %rdi
add %r15, %r15
mov $44, %rcx
rep movsw
inc %r14
lea addresses_UC_ht+0x3193, %r14
nop
nop
nop
nop
sub %rax, %rax
mov (%r14), %rdx
nop
nop
nop
nop
inc %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x19893, %r11
xor $59118, %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%r11)
nop
cmp %rax, %rax

// Store
lea addresses_PSE+0xef93, %rax
nop
nop
nop
nop
nop
cmp %r14, %r14
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WC+0x13893, %r15
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x51, (%r15)
nop
nop
nop
dec %rbp

// REPMOV
lea addresses_D+0x16593, %rsi
lea addresses_WT+0x4a93, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $23, %rcx
rep movsb
nop
inc %rcx

// Store
lea addresses_A+0x19893, %rax
nop
and %rdx, %rdx
movl $0x51525354, (%rax)
nop
nop
dec %rbp

// Store
lea addresses_WC+0x7663, %r15
cmp %rax, %rax
mov $0x5152535455565758, %r14
movq %r14, (%r15)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Load
lea addresses_D+0x1d313, %rbp
nop
add %rax, %rax
movb (%rbp), %cl
nop
nop
nop
xor $12613, %rax

// Store
lea addresses_WT+0xa305, %r11
nop
add $57573, %rdx
movw $0x5152, (%r11)
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_WC+0x15ad3, %rbp
clflush (%rbp)
nop
nop
nop
sub $61732, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x6b93, %rbp
nop
nop
nop
xor %rcx, %rcx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
xor $6538, %r15

// Store
lea addresses_normal+0x122b3, %r14
nop
nop
nop
nop
nop
xor $39948, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r14)
nop
nop
dec %rdi

// Store
lea addresses_WC+0xb67b, %rdx
nop
nop
nop
nop
nop
xor $50295, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdx)
sub %rdx, %rdx

// REPMOV
mov $0xc93, %rsi
lea addresses_A+0x15493, %rdi
dec %r14
mov $112, %rcx
rep movsw
nop
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x1bca3, %rdi
nop
nop
nop
nop
add $35255, %r15
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%rdi)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbp
xor $15574, %r15

// Faulty Load
lea addresses_A+0x19893, %r14
nop
nop
nop
nop
nop
cmp $41360, %rbp
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_P', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 882}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
