.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1bc19, %r14
nop
inc %r9
mov (%r14), %r8w
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x3619, %rsi
lea addresses_normal_ht+0x7c99, %rdi
and %r12, %r12
mov $106, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $31506, %r9
lea addresses_WC_ht+0x1b619, %rsi
lea addresses_D_ht+0x11259, %rdi
nop
nop
nop
add %r8, %r8
mov $13, %rcx
rep movsb
inc %rsi
lea addresses_A_ht+0x2bd1, %r9
nop
nop
cmp $10397, %rdi
movb (%r9), %cl
nop
nop
xor $26914, %r8
lea addresses_WC_ht+0x1a1d9, %rsi
lea addresses_WT_ht+0x1e3b9, %rdi
nop
xor $2349, %rax
mov $19, %rcx
rep movsb
nop
xor $63836, %r9
lea addresses_normal_ht+0x3c39, %rax
nop
nop
nop
dec %r14
mov (%rax), %r8
nop
nop
nop
nop
nop
cmp $22620, %r9
lea addresses_A_ht+0x1dd69, %r12
nop
cmp $5955, %r14
movw $0x6162, (%r12)
nop
nop
nop
cmp $55519, %r12
lea addresses_WT_ht+0xf609, %rdi
nop
nop
nop
nop
sub $56488, %r12
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
xor $37473, %rcx
lea addresses_WT_ht+0x29f3, %rcx
clflush (%rcx)
nop
inc %rdi
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
sub $62371, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_A+0x1f19, %r13
nop
nop
nop
sub $9321, %r8
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_RW+0x1f29d, %r15
nop
nop
cmp $2052, %rax
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
xor $58587, %rsi

// Load
lea addresses_A+0x1fa19, %r13
nop
nop
nop
nop
nop
xor $2736, %r9
movb (%r13), %r15b
sub %r15, %r15

// Load
lea addresses_US+0x2999, %rbp
add %r13, %r13
movb (%rbp), %al
nop
nop
nop
nop
nop
xor $18310, %r8

// Faulty Load
lea addresses_PSE+0x7619, %r15
nop
nop
nop
nop
and $8404, %rbp
mov (%r15), %si
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'33': 10}
33 33 33 33 33 33 33 33 33 33
*/
