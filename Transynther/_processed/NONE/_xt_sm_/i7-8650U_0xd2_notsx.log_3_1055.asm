.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1c604, %r11
clflush (%r11)
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r11)
nop
nop
nop
mfence

// Store
lea addresses_A+0x12604, %rsi
nop
nop
nop
dec %rdx
movw $0x5152, (%rsi)
nop
and $10183, %r14

// REPMOV
lea addresses_normal+0xe784, %rsi
lea addresses_normal+0x1ad10, %rdi
nop
and %r14, %r14
mov $51, %rcx
rep movsl
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x1ec04, %rcx
nop
nop
nop
nop
nop
dec %r14
movb $0x51, (%rcx)
cmp $34647, %r14

// Store
lea addresses_PSE+0x4ca8, %rdx
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
cmp $35818, %r8

// Store
lea addresses_RW+0x6528, %rdi
nop
xor $52290, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
nop
nop
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_A+0x12604, %r14
nop
nop
nop
nop
nop
dec %rdi
movl $0x51525354, (%r14)
sub $60109, %r8

// Store
lea addresses_WT+0x8e04, %rsi
nop
nop
cmp %r8, %r8
mov $0x5152535455565758, %rdi
movq %rdi, (%rsi)
nop
nop
nop
cmp $1670, %r11

// Faulty Load
lea addresses_A+0x12604, %r11
nop
dec %r14
mov (%r11), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'54': 3}
54 54 54
*/
