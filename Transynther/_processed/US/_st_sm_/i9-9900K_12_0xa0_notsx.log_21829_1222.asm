.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdx
push %rsi
lea addresses_WT_ht+0x6275, %rbx
nop
nop
nop
nop
sub %rsi, %rsi
movw $0x6162, (%rbx)
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_D_ht+0xf995, %r10
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
add $6395, %rdx
lea addresses_WT_ht+0x1b395, %r10
nop
nop
nop
and %r11, %r11
movb $0x61, (%r10)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x1c775, %r13
nop
nop
add %rdx, %rdx
mov (%r13), %r10d
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x13db3, %rsi
xor %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rsi
movntdq %xmm5, (%rsi)
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0x16ab5, %rsi
nop
nop
nop
add $53532, %r13
mov (%rsi), %r11d
nop
nop
nop
add $44273, %r15
lea addresses_WC_ht+0x9075, %r15
nop
nop
nop
nop
nop
add %r10, %r10
movl $0x61626364, (%r15)
nop
nop
nop
nop
xor $63459, %r10
lea addresses_UC_ht+0x1a1bb, %r15
nop
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%r15)
nop
nop
nop
add $4024, %r13
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x575, %r9
dec %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_PSE+0x5a75, %rsi
lea addresses_normal+0x8275, %rdi
nop
dec %r13
mov $10, %rcx
rep movsl
nop
nop
and %r13, %r13

// Load
lea addresses_WC+0x1e875, %r13
nop
nop
nop
nop
nop
and $39453, %rcx
mov (%r13), %rax
nop
nop
nop
xor %rbp, %rbp

// REPMOV
lea addresses_A+0x18b75, %rsi
lea addresses_D+0x8079, %rdi
nop
sub %r10, %r10
mov $89, %rcx
rep movsw
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0x6a35, %r9
clflush (%r9)
nop
nop
nop
and $41489, %r13
movw $0x5152, (%r9)
nop
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x79d, %rdi
nop
nop
nop
nop
add $20086, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_US+0x5175, %r9
nop
nop
nop
nop
nop
and $12385, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
nop
and $22031, %r9

// Store
lea addresses_UC+0x14575, %rbp
xor %rax, %rax
movl $0x51525354, (%rbp)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0x130d5, %r10
nop
nop
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r10)
sub %r9, %r9

// Store
lea addresses_WC+0xcaf5, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r13, %r13
movl $0x51525354, (%rsi)
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x5175, %rbp
nop
nop
nop
nop
nop
xor %r10, %r10
movb (%rbp), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
