.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x14176, %rsi
lea addresses_WC_ht+0x1dc36, %rdi
add $43980, %r9
mov $52, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_normal_ht+0x2baf, %r13
and %r10, %r10
movups (%r13), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
inc %r13
lea addresses_A_ht+0x15c36, %rsi
lea addresses_A_ht+0x137d6, %rdi
nop
nop
nop
nop
sub $34464, %rax
mov $65, %rcx
rep movsw
nop
cmp $25881, %rsi
lea addresses_normal_ht+0x43b6, %rsi
lea addresses_WT_ht+0x19eb6, %rdi
nop
nop
and %r10, %r10
mov $119, %rcx
rep movsw
nop
and $682, %r13
lea addresses_D_ht+0x155b6, %rax
clflush (%rax)
nop
nop
nop
nop
nop
and %rcx, %rcx
movb (%rax), %r10b
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xe636, %r14
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
cmp $56322, %r12

// REPMOV
lea addresses_RW+0x129b6, %rsi
lea addresses_D+0x5b6, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rax
mov $77, %rcx
rep movsb
nop
cmp %r11, %r11

// Store
lea addresses_A+0x175b6, %rsi
nop
add %r12, %r12
movw $0x5152, (%rsi)
nop
cmp %rdi, %rdi

// Load
lea addresses_D+0x10db6, %rcx
nop
nop
nop
add $25051, %rdi
movb (%rcx), %r11b
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WC+0x36, %r11
nop
add $64007, %rcx
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
nop
nop
cmp %rax, %rax

// Load
lea addresses_A+0x12b6, %r12
nop
nop
cmp %rcx, %rcx
movaps (%r12), %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
nop
nop
and $17599, %r14

// Store
mov $0xb36, %rax
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%rax)
nop
nop
nop
nop
add $15191, %rdi

// Store
lea addresses_PSE+0x14036, %r11
nop
nop
dec %rsi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r11)
nop
nop
inc %r12

// Store
lea addresses_A+0xa46a, %rax
nop
nop
sub $16888, %rcx
movl $0x51525354, (%rax)
sub $57887, %r12

// Store
lea addresses_WC+0x57f6, %r12
and %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%r12)
nop
nop
nop
nop
nop
and $47567, %rdi

// Faulty Load
lea addresses_D+0x10db6, %rax
cmp %r12, %r12
mov (%rax), %cx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'36': 10}
36 36 36 36 36 36 36 36 36 36
*/
