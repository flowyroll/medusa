.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1705, %rsi
lea addresses_A_ht+0x197c5, %rdi
clflush (%rdi)
xor $16917, %r8
mov $2, %rcx
rep movsb
nop
add $58639, %rbx
lea addresses_D_ht+0xf713, %r11
clflush (%r11)
nop
nop
nop
nop
nop
dec %r8
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm2
vpextrq $1, %xmm2, %rcx
cmp %rbx, %rbx
lea addresses_A_ht+0x6285, %r11
nop
nop
add %r12, %r12
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rcx
nop
sub $19636, %rdi
lea addresses_A_ht+0xd7d, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0x13915, %rcx
nop
nop
nop
nop
sub $793, %rsi
movb (%rcx), %bl
nop
nop
nop
cmp $35823, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_normal+0x15d05, %r9
nop
nop
nop
nop
and $52536, %r13
mov $0x5152535455565758, %r10
movq %r10, (%r9)
nop
xor %r9, %r9

// Store
lea addresses_A+0xe171, %rbp
add $65044, %rax
movw $0x5152, (%rbp)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_PSE+0xae6d, %rbp
nop
nop
nop
dec %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
and $2058, %r8

// Load
lea addresses_UC+0xed05, %r13
nop
nop
nop
nop
inc %r14
mov (%r13), %r8w
nop
nop
nop
nop
nop
inc %r8

// Store
lea addresses_RW+0x18b29, %rax
cmp $51184, %r9
movb $0x51, (%rax)
nop
nop
nop
sub $59677, %r9

// Store
lea addresses_PSE+0x16c, %r10
sub $45440, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r10)
nop
nop
nop
nop
dec %r8

// Store
lea addresses_PSE+0xb9ed, %r9
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovups %ymm3, (%r9)
cmp %r10, %r10

// Store
lea addresses_A+0x15d05, %rax
dec %r8
movw $0x5152, (%rax)
nop
nop
nop
and $14114, %r8

// Store
lea addresses_normal+0x1b3c5, %r9
clflush (%r9)
nop
and $30427, %r10
mov $0x5152535455565758, %rbp
movq %rbp, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
xor $16996, %r13

// Store
mov $0xc25, %rax
nop
nop
nop
nop
sub %r8, %r8
movb $0x51, (%rax)
nop
nop
nop
nop
nop
and $3150, %r8

// Load
lea addresses_RW+0x11505, %r9
nop
nop
nop
and %r10, %r10
mov (%r9), %ax
nop
nop
nop
nop
cmp $53453, %r8

// Store
lea addresses_WT+0x2723, %rbp
sub %rax, %rax
movb $0x51, (%rbp)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_A+0x4333, %r9
nop
nop
nop
nop
and $36099, %rbp
movw $0x5152, (%r9)
nop
xor $51076, %r10

// Faulty Load
lea addresses_A+0x15d05, %r9
nop
xor %r10, %r10
mov (%r9), %r14w
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'52': 2}
52 52
*/
