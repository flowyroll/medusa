.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx
lea addresses_WC_ht+0xb4ef, %r9
nop
nop
xor %r8, %r8
movb $0x61, (%r9)
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x10caf, %r12
sub %r13, %r13
movb (%r12), %al
nop
nop
nop
nop
nop
mfence
lea addresses_WT_ht+0x1895f, %rbp
nop
nop
nop
nop
sub %rbx, %rbx
movb $0x61, (%rbp)
nop
nop
cmp $11128, %r8
lea addresses_A_ht+0x12f2f, %rbp
nop
nop
nop
nop
nop
cmp $63131, %r13
movb (%rbp), %bl
nop
cmp %r8, %r8
lea addresses_WT_ht+0x13caf, %rax
nop
nop
nop
add %rbp, %rbp
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r12
nop
nop
and %r13, %r13
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rax
push %rsi

// Store
lea addresses_D+0x8ff, %rax
and %r15, %r15
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
nop
cmp $35411, %r15

// Store
lea addresses_RW+0x94af, %r12
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r12)
nop
cmp $48009, %r13

// Store
lea addresses_US+0x12ba6, %r15
clflush (%r15)
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_D+0x10af, %r14
nop
nop
nop
dec %rsi
movw $0x5152, (%r14)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_UC+0x170af, %rax
nop
nop
nop
cmp %r12, %r12
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovntdq %ymm4, (%rax)
add $35625, %r11

// Faulty Load
lea addresses_PSE+0x1ccaf, %rsi
nop
nop
add %r15, %r15
mov (%rsi), %r12w
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rax
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'33': 1}
33
*/
