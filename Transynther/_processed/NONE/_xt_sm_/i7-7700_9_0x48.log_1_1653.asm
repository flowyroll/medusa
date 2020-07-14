.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdx
push %rsi
lea addresses_UC_ht+0x12b80, %rsi
nop
nop
nop
nop
nop
add $14451, %r10
movb (%rsi), %dl
nop
nop
and $65102, %r10
lea addresses_UC_ht+0x6a88, %rcx
nop
nop
nop
nop
nop
xor $14875, %rax
mov (%rcx), %si
xor $52737, %r10
lea addresses_WT_ht+0x179e9, %r11
xor $63925, %rbx
movups (%r11), %xmm5
vpextrq $0, %xmm5, %rdx
sub %rdx, %rdx
lea addresses_A_ht+0x1b7c0, %r11
clflush (%r11)
nop
and %rax, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r11)
nop
nop
cmp $47166, %rax
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_normal+0x23e0, %rdi
nop
and %r9, %r9
movl $0x51525354, (%rdi)
nop
nop
add $37943, %rdi

// Store
lea addresses_normal+0x23e0, %r9
nop
nop
inc %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r9)
nop
nop
nop
nop
nop
sub $39495, %rbx

// Load
lea addresses_WT+0xaae0, %rdi
nop
nop
nop
nop
sub $61515, %r8
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r14
nop
nop
nop
add %r8, %r8

// Store
lea addresses_RW+0x3be0, %rbx
nop
nop
nop
nop
nop
dec %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
inc %rsi

// Load
lea addresses_UC+0x2180, %rbx
nop
nop
nop
nop
nop
and %r15, %r15
movb (%rbx), %r8b
and $34538, %r8

// Load
lea addresses_normal+0x23e0, %rsi
nop
nop
sub $62519, %r14
mov (%rsi), %r8d
xor $27358, %r8

// Store
lea addresses_PSE+0x5be0, %rsi
nop
nop
nop
inc %rdi
movl $0x51525354, (%rsi)
cmp %r9, %r9

// Store
mov $0x7241fc0000000be0, %r15
nop
nop
add $4727, %rdi
movw $0x5152, (%r15)

// Exception!!!
nop
mov (0), %r9
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x2f43, %rbx
cmp %r8, %r8
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
add $61533, %r14

// Faulty Load
lea addresses_normal+0x23e0, %r9
nop
nop
nop
nop
xor $17633, %r8
mov (%r9), %r15d
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'58': 1}
58
*/
