.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14cb8, %rcx
nop
nop
dec %r10
movb (%rcx), %r11b
nop
nop
nop
nop
cmp $39357, %rdi
lea addresses_WT_ht+0xec58, %rdi
clflush (%rdi)
nop
nop
nop
xor %rbx, %rbx
mov (%rdi), %r11
nop
nop
nop
nop
nop
sub $5459, %rcx
lea addresses_A_ht+0x39f8, %r8
nop
add $40569, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r8)
nop
and $58021, %rcx
lea addresses_normal_ht+0x1cff0, %rdi
nop
add $22599, %r8
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rbx
nop
and $51613, %rcx
lea addresses_UC_ht+0x4ad8, %rcx
nop
nop
add $1249, %r10
movl $0x61626364, (%rcx)
add $46740, %r11
lea addresses_A_ht+0xe838, %rsi
lea addresses_WC_ht+0xc8b8, %rdi
nop
inc %rax
mov $36, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $21322, %r11
lea addresses_A_ht+0x2d38, %rsi
nop
nop
nop
and %rbx, %rbx
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rcx
nop
add %rsi, %rsi
lea addresses_A_ht+0xfa06, %rsi
lea addresses_A_ht+0xffd4, %rdi
clflush (%rdi)
nop
nop
sub $48792, %r8
mov $64, %rcx
rep movsl
nop
nop
nop
nop
add $8498, %rbx
lea addresses_A_ht+0x15ab8, %r11
inc %r8
mov (%r11), %r10
nop
nop
xor $41980, %r8
lea addresses_UC_ht+0xceb8, %rsi
lea addresses_UC_ht+0xdf3, %rdi
cmp $50400, %rbx
mov $44, %rcx
rep movsb
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0xd4e8, %rcx
add $21187, %r10
mov (%rcx), %si
nop
nop
nop
add $50586, %rbx
lea addresses_WT_ht+0xd0b8, %rsi
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
and $0xffffffffffffffc0, %rsi
vmovaps %ymm6, (%rsi)
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_A+0x89c6, %r15
clflush (%r15)
nop
sub $40178, %rbp
mov $0x5152535455565758, %r11
movq %r11, (%r15)

// Exception!!!
nop
nop
mov (0), %r11
nop
nop
nop
sub $6809, %rdx

// Store
lea addresses_RW+0x1cd98, %rsi
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
dec %r11

// Store
lea addresses_UC+0x157c0, %rsi
nop
nop
nop
nop
nop
and $50869, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
sub $56625, %r15

// Store
lea addresses_PSE+0x1a6b8, %r11
nop
nop
cmp %rsi, %rsi
movb $0x51, (%r11)
and %rdx, %rdx

// Store
lea addresses_D+0x33f0, %rsi
nop
nop
cmp %r9, %r9
movl $0x51525354, (%rsi)
nop
nop
dec %rsi

// Store
lea addresses_UC+0xca10, %r11
nop
nop
nop
nop
and %rsi, %rsi
movb $0x51, (%r11)
nop
nop
and $10551, %r15

// Store
mov $0x9f8, %r11
nop
nop
nop
nop
and $25062, %r15
movw $0x5152, (%r11)
xor %r15, %r15

// Load
lea addresses_PSE+0x2aa8, %rbp
nop
nop
nop
add %r15, %r15
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
cmp $14162, %rsi

// Faulty Load
lea addresses_PSE+0x23b8, %rax
nop
nop
nop
cmp %r11, %r11
vmovups (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': True, 'NT': False}}
{'33': 2703}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
