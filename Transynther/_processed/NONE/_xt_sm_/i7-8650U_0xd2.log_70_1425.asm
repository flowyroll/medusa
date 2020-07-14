.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x9099, %rsi
lea addresses_WT_ht+0xbb02, %rdi
nop
nop
nop
nop
nop
and $11281, %rbx
mov $119, %rcx
rep movsb
nop
nop
nop
nop
add %r9, %r9
lea addresses_D_ht+0x3119, %rbp
nop
nop
sub %rbx, %rbx
movups (%rbp), %xmm6
vpextrq $1, %xmm6, %r9
nop
and $48909, %rbx
lea addresses_WT_ht+0xc741, %rcx
nop
nop
nop
and %r14, %r14
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %r9
xor %rcx, %rcx
lea addresses_WT_ht+0xce59, %rsi
and $29829, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rsi)
sub $38173, %rcx
lea addresses_D_ht+0x10f91, %rdi
nop
nop
nop
cmp $6289, %rbp
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x3159, %rsi
lea addresses_A_ht+0x1096e, %rdi
cmp %r8, %r8
mov $88, %rcx
rep movsl
sub $2026, %rsi
lea addresses_UC_ht+0x18089, %rsi
lea addresses_WC_ht+0x1e927, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $122, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x15659, %rbx
nop
nop
nop
sub $54366, %r9
movb (%rbx), %r8b
nop
dec %rcx
lea addresses_UC_ht+0xe959, %rbp
nop
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%rbp)
nop
and $2424, %r8
lea addresses_normal_ht+0xa589, %r8
clflush (%r8)
nop
xor %r9, %r9
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
nop
nop
and $13554, %r14
lea addresses_UC_ht+0x2259, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
cmp %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_PSE+0x14959, %rbx
and %rdi, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rbx)
nop
nop
nop
add $27544, %rbx

// Store
lea addresses_WT+0xe159, %r12
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
cmp %r12, %r12

// Load
lea addresses_WT+0x1c419, %r11
nop
cmp $45276, %r15
mov (%r11), %r8w
xor $55416, %rdi

// Store
lea addresses_normal+0x3559, %r12
nop
nop
nop
nop
and $38188, %r11
movb $0x51, (%r12)
nop
nop
nop
nop
sub $10653, %r12

// Store
lea addresses_WC+0x14159, %r15
nop
nop
nop
nop
xor $36659, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
sub $49232, %r15

// Faulty Load
lea addresses_PSE+0x14959, %r15
nop
sub %r8, %r8
mov (%r15), %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'58': 70}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
