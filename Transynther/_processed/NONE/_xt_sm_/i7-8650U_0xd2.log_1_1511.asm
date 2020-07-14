.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r8
push %rbx
push %rdx
push %rsi
lea addresses_WT_ht+0x13bb1, %r11
nop
sub $2558, %rsi
movw $0x6162, (%r11)
nop
add %r13, %r13
lea addresses_normal_ht+0x88bb, %r12
nop
nop
nop
and $8745, %rdx
movb (%r12), %r8b
nop
nop
nop
nop
nop
xor $12082, %rsi
lea addresses_A_ht+0x647b, %r13
nop
nop
nop
nop
nop
inc %rsi
movb (%r13), %bl
nop
nop
nop
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r8
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r9
push %rbp
push %rbx

// Store
lea addresses_normal+0x114d7, %r14
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%r14)
nop
nop
nop
nop
nop
dec %r14

// Load
lea addresses_PSE+0x13f3b, %rbp
nop
xor $2210, %r10
mov (%rbp), %r13w
nop
nop
nop
xor $30412, %r14

// Store
lea addresses_UC+0x1113b, %r14
nop
nop
nop
nop
sub %r10, %r10
movl $0x51525354, (%r14)
nop
nop
nop
nop
nop
dec %r14

// Store
lea addresses_WT+0xeb3b, %r10
nop
nop
xor $10459, %r9
movl $0x51525354, (%r10)
dec %r9

// Store
lea addresses_D+0x1141d, %rbx
and $30601, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm3
vmovntdq %ymm3, (%rbx)
nop
nop
nop
nop
dec %r9

// Store
lea addresses_RW+0x147d7, %rbp
nop
nop
cmp $10543, %r15
mov $0x5152535455565758, %rbx
movq %rbx, (%rbp)
nop
nop
nop
nop
sub $23334, %r9

// Store
lea addresses_WT+0xeb3b, %r10
cmp %r15, %r15
movb $0x51, (%r10)
nop
nop
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_WT+0xeb3b, %r13
nop
nop
nop
nop
xor %r15, %r15
mov (%r13), %ebp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'51': 1}
51
*/
