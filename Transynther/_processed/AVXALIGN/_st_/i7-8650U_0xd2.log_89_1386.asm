.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %rbx
push %rdi
push %rsi
lea addresses_A_ht+0x1771a, %rdi
clflush (%rdi)
nop
add $45918, %r14
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
xor $37304, %r11
lea addresses_WC_ht+0x126ca, %r8
cmp %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x23f7, %r10
nop
nop
nop
nop
dec %rsi
mov (%r10), %r14
nop
xor %r8, %r8
lea addresses_WC_ht+0x468e, %r8
nop
dec %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r8)
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x94ca, %rbx
nop
nop
cmp %r8, %r8
movl $0x61626364, (%rbx)
sub %r10, %r10
lea addresses_normal_ht+0x8e6, %rdi
nop
nop
cmp $27546, %r14
movb (%rdi), %r10b
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x1334a, %rsi
nop
nop
nop
xor %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x19a72, %r10
nop
nop
nop
nop
sub %rbx, %rbx
movb (%r10), %r14b
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rbp
push %rcx

// Load
lea addresses_WC+0x16d6a, %rbp
nop
nop
nop
add $37437, %r8
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r12
nop
nop
nop
xor $56743, %r11

// Store
lea addresses_WC+0x824a, %r10
nop
nop
nop
nop
nop
add $1475, %r13
movw $0x5152, (%r10)
nop
nop
nop
nop
sub %r8, %r8

// Load
lea addresses_UC+0x1a24a, %r8
xor $12464, %r12
movb (%r8), %r10b
nop
nop
nop
nop
nop
add $5318, %r10

// Store
lea addresses_PSE+0x1364a, %r12
nop
nop
nop
xor $14327, %r8
mov $0x5152535455565758, %r13
movq %r13, (%r12)
nop
nop
nop
nop
nop
xor $30974, %rcx

// Faulty Load
lea addresses_PSE+0x1a4a, %rcx
nop
nop
nop
nop
inc %r13
mov (%rcx), %r10d
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'33': 89}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
