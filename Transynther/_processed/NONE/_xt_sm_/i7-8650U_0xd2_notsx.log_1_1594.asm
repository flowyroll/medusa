.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x9111, %rbp
nop
cmp %r10, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
and $0xffffffffffffffc0, %rbp
vmovaps %ymm3, (%rbp)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x7cd1, %r15
nop
nop
nop
nop
nop
cmp $7955, %rcx
mov (%r15), %ax
inc %rbp
lea addresses_normal_ht+0x16109, %rbp
nop
nop
nop
and $34209, %rsi
movb (%rbp), %cl
nop
cmp %r15, %r15
lea addresses_UC_ht+0x9331, %rsi
lea addresses_UC_ht+0x1f11, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $51345, %r11
mov $57, %rcx
rep movsw
xor %r11, %r11
lea addresses_A_ht+0xff11, %rsi
lea addresses_normal_ht+0xa611, %rdi
nop
nop
nop
nop
and %rbp, %rbp
mov $53, %rcx
rep movsq
sub $42922, %r15
lea addresses_UC_ht+0x8691, %rax
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
and $0xffffffffffffffc0, %rax
movntdq %xmm7, (%rax)
add %rbp, %rbp
lea addresses_WC_ht+0x8811, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor $36716, %r10
mov (%r11), %di
nop
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rsi

// Store
lea addresses_RW+0x16b11, %rax
sub %r8, %r8
movl $0x51525354, (%rax)
nop
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_RW+0xedb5, %r9
clflush (%r9)
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, (%r9)
and %r12, %r12

// Load
mov $0x311, %rax
add $50148, %r9
vmovups (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
nop
and $55431, %rsi

// Store
mov $0x8a9, %r10
cmp %rsi, %rsi
movw $0x5152, (%r10)
nop
nop
nop
sub %rsi, %rsi

// Load
lea addresses_WT+0xc211, %r11
nop
nop
nop
nop
dec %r12
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
nop
nop
nop
nop
xor $4804, %r11

// Load
lea addresses_UC+0x12b11, %r10
clflush (%r10)
cmp %rax, %rax
mov (%r10), %esi
nop
nop
cmp %r10, %r10

// Store
lea addresses_WT+0x1b821, %r8
nop
cmp %r9, %r9
movw $0x5152, (%r8)
xor $4889, %r8

// Faulty Load
lea addresses_RW+0x16b11, %r10
nop
sub %r11, %r11
mov (%r10), %r12d
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'54': 1}
54
*/
