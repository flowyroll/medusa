.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdx
lea addresses_D_ht+0x1745e, %rcx
nop
nop
nop
xor $30709, %r11
mov (%rcx), %rdx
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x7257, %r12
xor %rbp, %rbp
movl $0x61626364, (%r12)
sub %r12, %r12
lea addresses_WT_ht+0x1785e, %rdx
nop
nop
nop
add $47007, %rbx
movw $0x6162, (%rdx)
nop
nop
add %r14, %r14
lea addresses_A_ht+0x1ee1e, %rbx
nop
nop
nop
nop
add $13188, %r11
movl $0x61626364, (%rbx)
nop
nop
nop
sub %rdx, %rdx
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Store
lea addresses_RW+0x694a, %r13
clflush (%r13)
nop
nop
nop
nop
nop
add $54810, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0x1105e, %rbp
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rbp)
nop
xor %r13, %r13

// Store
lea addresses_D+0xfe7e, %rax
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, (%rax)
nop
nop
nop
nop
nop
and $34377, %r9

// Store
mov $0x2be3ec0000000262, %rsi
nop
nop
nop
nop
nop
cmp $65388, %r10
movb $0x51, (%rsi)
dec %r10

// Faulty Load
lea addresses_PSE+0x785e, %r13
nop
nop
nop
nop
dec %r10
mov (%r13), %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'33': 207}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
