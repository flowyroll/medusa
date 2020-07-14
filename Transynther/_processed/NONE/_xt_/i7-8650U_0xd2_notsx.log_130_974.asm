.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdi
lea addresses_A_ht+0xdb46, %r15
cmp $26701, %r11
mov (%r15), %ebx
nop
nop
nop
nop
cmp $61956, %r13
lea addresses_normal_ht+0xa2c6, %rax
nop
nop
nop
nop
cmp %r15, %r15
mov (%rax), %r9w
nop
nop
nop
sub %r9, %r9
lea addresses_WT_ht+0xb8c6, %r11
sub %rbx, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%r11)
nop
cmp %r11, %r11
lea addresses_UC_ht+0x8f46, %r13
clflush (%r13)
nop
nop
cmp $13329, %rdi
movw $0x6162, (%r13)
nop
and $44608, %r11
lea addresses_D_ht+0x1e346, %r9
add %rbx, %rbx
movb $0x61, (%r9)
nop
nop
nop
nop
nop
dec %rax
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
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
lea addresses_PSE+0x18066, %rax
nop
nop
nop
nop
xor $9602, %rsi
movb $0x51, (%rax)
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_RW+0x664a, %rsi
clflush (%rsi)
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rsi)
xor %rsi, %rsi

// Load
mov $0x684, %rbp
nop
nop
nop
xor $14073, %rax
movups (%rbp), %xmm4
vpextrq $0, %xmm4, %r12
nop
sub %rbp, %rbp

// Faulty Load
lea addresses_D+0x138c6, %rax
sub %rsi, %rsi
mov (%rax), %r10
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
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
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'36': 130}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
