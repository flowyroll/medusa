.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rdx
lea addresses_A_ht+0x12b39, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %r8, %r8
mov (%r14), %r13
xor $32917, %rdx
lea addresses_WC_ht+0x19b49, %rdx
nop
nop
nop
nop
add $5283, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rdx)
nop
nop
nop
add $53748, %r10
lea addresses_A_ht+0x1d7c9, %rdx
clflush (%rdx)
add %r11, %r11
mov (%rdx), %r8
nop
nop
nop
nop
and %rdx, %rdx
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rcx

// Store
mov $0x709, %r10
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%r10)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_D+0x1fdc9, %r13
nop
xor %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, (%r13)
nop
nop
nop
nop
nop
dec %rax

// Faulty Load
lea addresses_WC+0x15dc9, %rax
nop
cmp $4882, %r13
mov (%rax), %r15w
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'58': 99}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
