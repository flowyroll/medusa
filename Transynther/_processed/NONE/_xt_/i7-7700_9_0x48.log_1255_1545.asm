.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18ff0, %r8
nop
and %r15, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
and $2814, %r14
lea addresses_A_ht+0xad1a, %rax
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rax)
nop
sub $35678, %r8
lea addresses_A_ht+0x9ba, %rsi
nop
add %rcx, %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x101ba, %rsi
lea addresses_D_ht+0x9dba, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor $22492, %r14
mov $38, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x8e9e, %rsi
lea addresses_A_ht+0x4281, %rdi
nop
nop
nop
dec %r14
mov $25, %rcx
rep movsw
nop
nop
dec %r8
lea addresses_D_ht+0x10fba, %rsi
lea addresses_WT_ht+0x577a, %rdi
clflush (%rsi)
clflush (%rdi)
nop
dec %rdx
mov $90, %rcx
rep movsw
nop
nop
nop
xor $58789, %rcx
lea addresses_WC_ht+0xf7ba, %r8
nop
nop
nop
nop
inc %rdi
movl $0x61626364, (%r8)
nop
nop
and %r8, %r8
lea addresses_WC_ht+0x1409a, %r15
nop
and $34774, %r14
mov (%r15), %rsi
inc %r8
lea addresses_normal_ht+0x15f15, %r15
nop
nop
and %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
xor $51071, %rsi
lea addresses_D_ht+0x2a22, %rdx
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
vmovups %ymm0, (%rdx)
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0xda7a, %r15
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r15), %di
nop
add %rcx, %rcx
lea addresses_WC_ht+0x13b3a, %rax
nop
nop
nop
nop
and %rsi, %rsi
mov (%rax), %r14
nop
nop
xor $39871, %rsi
lea addresses_normal_ht+0x11dba, %rcx
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %r8
movq %r8, %xmm1
and $0xffffffffffffffc0, %rcx
movntdq %xmm1, (%rcx)
nop
xor $39606, %rax
lea addresses_UC_ht+0x189ba, %rsi
lea addresses_A_ht+0x31fa, %rdi
nop
nop
nop
xor $29993, %rax
mov $97, %rcx
rep movsl
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rdi

// Store
lea addresses_A+0x1787a, %r9
nop
nop
and %r15, %r15
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r9)
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x19b3a, %r11
nop
nop
nop
nop
nop
xor $5211, %r10
movw $0x5152, (%r11)

// Exception!!!
nop
nop
nop
mov (0), %r8
and $33723, %r15

// Store
lea addresses_D+0x3aaa, %rdi
clflush (%rdi)
nop
cmp %r8, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
cmp %r9, %r9

// Store
lea addresses_D+0xaba, %r11
nop
nop
nop
nop
nop
dec %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Store
lea addresses_normal+0x16061, %r8
clflush (%r8)
nop
and %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm0
vmovups %ymm0, (%r8)
nop
nop
cmp %r11, %r11

// Store
lea addresses_WC+0x12dba, %r11
nop
sub %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r11)
xor $53196, %r10

// Load
lea addresses_RW+0x1dce0, %r11
nop
nop
nop
xor %r8, %r8
mov (%r11), %ax
nop
nop
nop
nop
add $26474, %r15

// Faulty Load
lea addresses_PSE+0x65ba, %r9
nop
nop
sub %r10, %r10
mov (%r9), %r11d
lea oracles, %r15
and $0xff, %r11
shlq $12, %r11
mov (%r15,%r11,1), %r11
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 3, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'33': 1255}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
