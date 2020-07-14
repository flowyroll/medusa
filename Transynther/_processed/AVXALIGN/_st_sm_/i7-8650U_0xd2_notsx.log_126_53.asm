.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x4457, %rsi
lea addresses_WC_ht+0x4117, %rdi
nop
nop
nop
dec %r9
mov $95, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x912d, %r11
nop
nop
nop
nop
nop
xor %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
dec %r13
lea addresses_D_ht+0x4417, %r9
nop
nop
nop
nop
nop
and $23221, %rbp
vmovups (%r9), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
cmp $16019, %rbp
lea addresses_UC_ht+0xf4f7, %rsi
lea addresses_UC_ht+0x11917, %rdi
nop
nop
sub $37701, %rax
mov $15, %rcx
rep movsl
nop
xor %r11, %r11
lea addresses_D_ht+0x56b3, %r11
nop
nop
nop
and %r9, %r9
mov (%r11), %esi
nop
sub %rbp, %rbp
lea addresses_WT_ht+0xd873, %r9
clflush (%r9)
cmp %rbp, %rbp
movb $0x61, (%r9)
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x15b3b, %rsi
lea addresses_WT_ht+0x16cd7, %rdi
and $32321, %r9
mov $106, %rcx
rep movsq
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x13717, %rbp
nop
nop
nop
sub %r9, %r9
mov (%rbp), %si
nop
nop
dec %r13
lea addresses_A_ht+0x8c97, %rbp
nop
nop
nop
dec %rsi
movb (%rbp), %r9b
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rdi
push %rdx

// Store
lea addresses_WT+0x12b17, %rdx
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
xor $54564, %rdi

// Store
lea addresses_A+0x12717, %r10
nop
nop
nop
and $54571, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r10)
nop
nop
and %rax, %rax

// Load
lea addresses_US+0x14717, %r8
nop
nop
nop
sub %r9, %r9
movb (%r8), %r10b
nop
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_A+0x1e373, %r9
clflush (%r9)
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
cmp $60834, %r10

// Store
lea addresses_normal+0x5717, %r10
clflush (%r10)
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%r10)
nop
nop
nop
add $42129, %rax

// Faulty Load
lea addresses_A+0x12717, %rdx
nop
nop
nop
nop
cmp $53199, %r8
mov (%rdx), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 126}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
