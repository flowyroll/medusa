.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rdx
push %rsi
lea addresses_WC_ht+0x9d5a, %rbp
nop
nop
nop
add $50065, %r11
mov (%rbp), %dx
nop
nop
nop
nop
inc %r8
lea addresses_WT_ht+0x15302, %rbp
nop
nop
nop
cmp $41288, %r10
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
dec %rdx
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_US+0x8302, %r15
xor $38054, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r15)
nop
nop
nop
sub $49122, %r9

// Store
lea addresses_A+0x18c7a, %r10
nop
nop
xor $6833, %rbx
movw $0x5152, (%r10)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_RW+0x7b42, %rax
nop
nop
nop
cmp %r10, %r10
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_US+0x8302, %r11
nop
cmp %r9, %r9
mov (%r11), %si
lea oracles, %r15
and $0xff, %rsi
shlq $12, %rsi
mov (%r15,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'58': 51}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
