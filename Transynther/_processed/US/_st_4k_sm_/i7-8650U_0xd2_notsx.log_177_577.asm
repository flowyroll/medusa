.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r9
push %rax
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x3eec, %r13
clflush (%r13)
nop
nop
nop
nop
cmp %r9, %r9
movups (%r13), %xmm3
vpextrq $0, %xmm3, %rax
add $62521, %rsi
lea addresses_A_ht+0x12a4c, %r13
clflush (%r13)
and %rax, %rax
mov (%r13), %edx
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1beec, %rdi
dec %r14
mov (%rdi), %si
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rdi

// Load
lea addresses_WC+0xa2ec, %rax
add $15814, %rbp
vmovups (%rax), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r9
sub %rax, %rax

// Store
lea addresses_A+0x13c8c, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and %r14, %r14
movw $0x5152, (%r9)
nop
nop
nop
nop
lfence

// Store
lea addresses_normal+0x189e0, %rdi
nop
nop
nop
inc %r12
movb $0x51, (%rdi)
inc %r12

// Store
lea addresses_RW+0xf2ec, %rbp
nop
add %r14, %r14
movl $0x51525354, (%rbp)
add %rax, %rax

// Store
lea addresses_US+0x1aaec, %rdi
nop
nop
nop
nop
inc %rbp
movb $0x51, (%rdi)
nop
cmp $34678, %r9

// Load
lea addresses_WT+0x120fc, %r11
cmp %rbp, %rbp
movb (%r11), %r12b
nop
inc %r12

// Store
lea addresses_US+0x1aaec, %r9
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, (%r9)
nop
add %rax, %rax

// Store
lea addresses_PSE+0x11dec, %rdi
nop
nop
nop
nop
cmp $1083, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm7
movups %xmm7, (%rdi)
nop
xor $8137, %r14

// Store
lea addresses_WC+0x1900c, %rbp
clflush (%rbp)
nop
nop
cmp $14683, %r11
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
dec %r12

// Store
lea addresses_US+0x52dc, %rax
nop
nop
nop
nop
nop
add %rdi, %rdi
movw $0x5152, (%rax)
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_WT+0x15dec, %rdi
nop
and %rbp, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm1
movups %xmm1, (%rdi)

// Exception!!!
nop
nop
mov (0), %rax
xor %rbp, %rbp

// Store
mov $0x608, %r11
clflush (%r11)
nop
nop
nop
nop
dec %rdi
movb $0x51, (%r11)
xor $63969, %r12

// Faulty Load
lea addresses_US+0x1aaec, %r9
nop
nop
nop
nop
cmp $12094, %rbp
movb (%r9), %r11b
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 177}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
