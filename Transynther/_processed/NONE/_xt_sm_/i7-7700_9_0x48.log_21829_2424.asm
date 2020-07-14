.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r9
push %rdx
push %rsi
lea addresses_normal_ht+0xac7c, %r12
nop
nop
xor %r11, %r11
movups (%r12), %xmm1
vpextrq $1, %xmm1, %rdx
nop
nop
nop
nop
nop
and $60526, %r15
lea addresses_A_ht+0x1e73c, %r15
nop
dec %r12
movw $0x6162, (%r15)
nop
inc %r10
lea addresses_normal_ht+0x1db3c, %r9
clflush (%r9)
nop
nop
nop
nop
dec %rsi
mov (%r9), %r15w
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xc91c, %r10
nop
nop
nop
nop
cmp $65042, %r9
mov $0x6162636465666768, %r12
movq %r12, %xmm5
vmovups %ymm5, (%r10)
nop
nop
xor $55256, %r11
lea addresses_UC_ht+0xfb7c, %rdx
clflush (%rdx)
nop
nop
sub $48555, %r9
mov (%rdx), %esi
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x14f3c, %r12
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%r12)
nop
nop
nop
nop
cmp $821, %r15
lea addresses_UC_ht+0x133c, %rsi
nop
nop
nop
nop
dec %r9
mov $0x6162636465666768, %r15
movq %r15, (%rsi)
nop
nop
xor $2585, %r12
lea addresses_normal_ht+0x1733c, %rsi
sub $2213, %r15
and $0xffffffffffffffc0, %rsi
vmovaps (%rsi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
nop
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0x83c, %r12
nop
nop
and $31983, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
vmovups %ymm7, (%r12)
nop
nop
nop
and $60152, %r10
lea addresses_WC_ht+0x1a0ac, %r9
nop
nop
nop
nop
nop
xor $62472, %rsi
movb $0x61, (%r9)
nop
nop
nop
nop
nop
add $23651, %rsi
lea addresses_A_ht+0xf7aa, %r15
and $12871, %r10
mov (%r15), %si
nop
nop
nop
nop
nop
sub %r12, %r12
pop %rsi
pop %rdx
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WC+0xa0c, %rbx
nop
nop
nop
nop
sub %rax, %rax
mov (%rbx), %cx
nop
nop
add $17929, %r13

// Store
lea addresses_WT+0x1520b, %r10
dec %r12
movb $0x51, (%r10)

// Exception!!!
nop
mov (0), %rbx
nop
and $54439, %rcx

// Store
lea addresses_UC+0x1ab3c, %r13
nop
nop
nop
nop
sub $61471, %r12
mov $0x5152535455565758, %r10
movq %r10, (%r13)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_D+0x16b3c, %rbx
clflush (%rbx)
nop
nop
xor %rdx, %rdx
movb $0x51, (%rbx)
nop
nop
nop
nop
xor %r10, %r10

// Store
lea addresses_D+0x2508, %rcx
nop
nop
nop
and %r12, %r12
movl $0x51525354, (%rcx)
nop
sub %r10, %r10

// Store
lea addresses_normal+0x1dc3c, %rcx
nop
nop
xor $44683, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%rcx)
nop
cmp %rbx, %rbx

// Store
lea addresses_US+0x1ee7c, %r12
nop
cmp %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
sub %rdx, %rdx

// Store
lea addresses_WT+0x1cab4, %rax
and $48848, %rcx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rax)
nop
and %r13, %r13

// Faulty Load
lea addresses_UC+0x1ab3c, %rcx
nop
sub %r12, %r12
movb (%rcx), %r13b
lea oracles, %rbx
and $0xff, %r13
shlq $12, %r13
mov (%rbx,%r13,1), %r13
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 8, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'51': 21829}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
