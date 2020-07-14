.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1592, %r12
and %r10, %r10
movups (%r12), %xmm1
vpextrq $0, %xmm1, %rbp
nop
nop
nop
nop
nop
add $35663, %r8
lea addresses_A_ht+0x12da2, %rsi
lea addresses_UC_ht+0x11b52, %rdi
nop
nop
nop
cmp $26732, %r14
mov $51, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $18868, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_WC+0x16842, %r15
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r15)
add $21951, %rdx

// Faulty Load
lea addresses_US+0x17a12, %r11
nop
cmp $30928, %rcx
mov (%r11), %ax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
