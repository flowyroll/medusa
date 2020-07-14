.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x78c6, %r11
nop
nop
nop
add $8560, %rdx
mov $0x6162636465666768, %r13
movq %r13, (%r11)
nop
nop
xor $22474, %rax
lea addresses_WT_ht+0x2a86, %r12
nop
nop
nop
xor $61043, %rbx
movb (%r12), %r9b
nop
nop
sub %r9, %r9
lea addresses_normal_ht+0xf0c6, %r11
nop
cmp %rdx, %rdx
movb (%r11), %r13b
dec %rax
lea addresses_A_ht+0xac36, %r11
nop
nop
nop
nop
cmp %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, (%r11)
nop
nop
and $48641, %r13
lea addresses_WT_ht+0xcc06, %rsi
lea addresses_D_ht+0xbd26, %rdi
clflush (%rdi)
nop
nop
sub $22044, %r11
mov $79, %rcx
rep movsq
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Load
lea addresses_RW+0xab46, %r9
nop
nop
nop
nop
and $52916, %rbp
movntdqa (%r9), %xmm7
vpextrq $0, %xmm7, %rbx
nop
sub %rbx, %rbx

// Store
lea addresses_US+0x1fa6a, %rbp
and $62231, %r9
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp $8927, %r8

// Store
lea addresses_RW+0x1cfc6, %rbx
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%rbx)
nop
nop
and %r9, %r9

// Store
lea addresses_WT+0x1e666, %r9
nop
nop
nop
add %r8, %r8
movb $0x51, (%r9)
nop
nop
cmp $62644, %r8

// Faulty Load
lea addresses_normal+0x180c6, %r10
nop
add $7988, %rbx
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'34': 2}
34 34
*/
