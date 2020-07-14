.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x15608, %rdx
nop
nop
inc %r15
mov (%rdx), %si
nop
xor %r15, %r15
lea addresses_WT_ht+0x14848, %r15
nop
nop
xor $54364, %rbx
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r8
sub %rdx, %rdx
lea addresses_WT_ht+0x16e48, %r9
nop
nop
nop
nop
xor $34107, %r15
mov $0x6162636465666768, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r9)
nop
nop
nop
nop
nop
inc %r15
lea addresses_A_ht+0x10ce8, %rdx
nop
nop
nop
inc %rbx
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x15404, %r15
nop
nop
nop
nop
nop
xor $22641, %r11
movw $0x6162, (%r15)
nop
nop
nop
and $3182, %rdx
lea addresses_A_ht+0x1be48, %r15
nop
add $43084, %r11
mov (%r15), %dx
and $14479, %rbx
lea addresses_WC_ht+0x12cc2, %rsi
lea addresses_normal_ht+0x162c, %rdi
nop
add $57080, %rdx
mov $110, %rcx
rep movsl
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rdi
push %rdx

// Store
lea addresses_normal+0x3fa8, %r12
nop
nop
nop
add %r10, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r12)
nop
nop
add $20297, %r12

// Load
lea addresses_A+0xeb48, %r12
nop
nop
cmp %rdx, %rdx
mov (%r12), %r10w
nop
nop
dec %rdx

// Store
lea addresses_A+0x15848, %r11
nop
nop
sub $61877, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm6
movups %xmm6, (%r11)
and %rdi, %rdi

// Load
lea addresses_D+0x14608, %r11
nop
nop
xor %r8, %r8
movups (%r11), %xmm3
vpextrq $1, %xmm3, %r12
add $41812, %r11

// Store
lea addresses_A+0x14248, %r11
nop
nop
xor %r10, %r10
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovaps %ymm2, (%r11)
nop
nop
nop
and %r12, %r12

// Load
lea addresses_PSE+0x2a48, %r11
nop
nop
nop
nop
sub %rdx, %rdx
movb (%r11), %r8b

// Exception!!!
mov (0), %r8
cmp $22698, %r13

// Faulty Load
lea addresses_A+0x14248, %r12
and $11833, %r10
mov (%r12), %edi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'58': 98}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
