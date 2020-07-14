.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xf530, %r10
cmp %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r10)
add %rdi, %rdi
lea addresses_D_ht+0x12dba, %rcx
cmp %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, %xmm2
and $0xffffffffffffffc0, %rcx
movaps %xmm2, (%rcx)
nop
xor %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Store
lea addresses_RW+0xb93a, %r15
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r15)
nop
cmp $19924, %rax

// Store
lea addresses_UC+0x1fdba, %rbp
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rbp)
sub $58434, %rax

// Load
lea addresses_A+0x6dba, %r9
nop
nop
cmp $65165, %rcx
mov (%r9), %rbp
add %r9, %r9

// Load
lea addresses_WT+0x156ba, %r10
clflush (%r10)
nop
nop
nop
nop
add $63135, %rcx
mov (%r10), %di
sub $64725, %rcx

// Store
lea addresses_US+0x54c4, %rcx
xor %rdi, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
and $55127, %rdi

// Store
lea addresses_WC+0x135ba, %rcx
nop
nop
nop
nop
cmp %r9, %r9
movw $0x5152, (%rcx)
nop
nop
nop
nop
add $48842, %r10

// Store
lea addresses_D+0xc892, %rdi
clflush (%rdi)
dec %r9
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
add $41336, %rbp

// Store
lea addresses_WT+0x6d3a, %r10
nop
xor %rdi, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
xor %rax, %rax

// Faulty Load
lea addresses_UC+0x1fdba, %r9
nop
nop
nop
nop
nop
cmp %rax, %rax
mov (%r9), %di
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 6, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'67': 1}
67
*/
