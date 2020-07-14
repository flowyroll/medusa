.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x19b31, %rsi
lea addresses_WC_ht+0x16eb1, %rdi
nop
sub $51836, %rbp
mov $27, %rcx
rep movsl
nop
nop
nop
and $26145, %r8
lea addresses_UC_ht+0x182b1, %r14
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r8
movq %r8, (%r14)
nop
nop
nop
nop
nop
and $56559, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %r9
push %rbx
push %rcx

// Store
lea addresses_US+0x42b1, %r13
nop
dec %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm4
vmovaps %ymm4, (%r13)
add %rbx, %rbx

// Store
lea addresses_WT+0x1fa31, %r13
cmp %r8, %r8
movw $0x5152, (%r13)
nop
inc %r8

// Store
lea addresses_RW+0x189b1, %r13
and $51502, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r13)
nop
nop
cmp %r13, %r13

// Store
mov $0x9b9, %r10
nop
nop
nop
sub %r9, %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r10)
nop
add $48975, %rbx

// Faulty Load
lea addresses_D+0x16f31, %r11
nop
xor $62534, %rbx
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 5}}
{'36': 3}
36 36 36
*/
