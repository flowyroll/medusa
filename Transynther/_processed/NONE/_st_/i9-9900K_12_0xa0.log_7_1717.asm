.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rax
push %rbp
lea addresses_D_ht+0xa89c, %rax
nop
nop
cmp $14654, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1b43c, %r11
nop
nop
nop
xor $37384, %rbp
mov (%r11), %r9w
nop
nop
nop
cmp %r11, %r11
lea addresses_D_ht+0x1dbfc, %r15
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %r9
movq %r9, (%r15)
nop
nop
sub %r15, %r15
lea addresses_WC_ht+0x193f0, %r14
clflush (%r14)
nop
sub $38940, %rax
mov (%r14), %r11w
nop
nop
nop
nop
cmp $34181, %rbp
lea addresses_UC_ht+0x151fc, %r9
nop
xor %rbp, %rbp
movb $0x61, (%r9)
add $56068, %r9
lea addresses_normal_ht+0x17f7c, %rax
cmp %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, (%rax)
nop
add %r14, %r14
lea addresses_normal_ht+0x1755c, %rax
cmp %r11, %r11
mov (%rax), %r14w
nop
nop
nop
nop
nop
xor $28052, %r14
lea addresses_normal_ht+0xc0fc, %r14
nop
cmp %r12, %r12
movl $0x61626364, (%r14)
nop
nop
cmp $65114, %rbp
lea addresses_WC_ht+0x143fc, %r14
nop
nop
nop
nop
nop
dec %rax
mov (%r14), %r11d
nop
nop
nop
nop
nop
dec %r14
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
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
push %rdi
push %rdx

// Store
lea addresses_D+0x5bfc, %r10
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm2
vmovups %ymm2, (%r10)
sub %r9, %r9

// Store
lea addresses_UC+0x67fc, %r10
and $46450, %r13
movb $0x51, (%r10)
sub %r14, %r14

// Store
lea addresses_D+0xb3fc, %rdx
nop
nop
nop
nop
nop
and $11382, %r13
movb $0x51, (%rdx)
nop
add %r13, %r13

// Load
lea addresses_PSE+0x12fc, %r10
nop
nop
nop
nop
dec %r13
mov (%r10), %r9w
nop
nop
nop
nop
sub $44420, %r14

// Load
lea addresses_WT+0x1aae0, %rdx
nop
xor %r13, %r13
mov (%rdx), %r10d
nop
nop
sub %r10, %r10

// Store
lea addresses_PSE+0xb8fc, %rdx
clflush (%rdx)
add %r10, %r10
movl $0x51525354, (%rdx)
cmp $348, %r13

// Store
lea addresses_RW+0x1b0bc, %r15
nop
nop
nop
add $62288, %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movntdq %xmm5, (%r15)
nop
nop
sub %rdi, %rdi

// Store
lea addresses_RW+0xf8ab, %r13
nop
add %r10, %r10
movl $0x51525354, (%r13)
xor $64978, %r13

// Store
lea addresses_PSE+0x39bc, %r14
nop
xor $27691, %r10
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
sub $30105, %rdi

// Faulty Load
lea addresses_A+0x143fc, %rdx
nop
nop
nop
xor $24678, %r14
mov (%rdx), %r15
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rdx
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 6, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 11, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'51': 7}
51 51 51 51 51 51 51
*/
