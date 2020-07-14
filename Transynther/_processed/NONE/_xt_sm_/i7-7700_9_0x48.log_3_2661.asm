.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0xd3d1, %rsi
lea addresses_WT+0x8e63, %rdi
nop
nop
nop
and %rbp, %rbp
mov $84, %rcx
rep movsb
nop
nop
nop
nop
nop
and $8094, %rdi

// Store
lea addresses_WT+0x8e63, %rax
nop
nop
nop
nop
nop
add $36457, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
xor $65344, %rdi

// Store
lea addresses_WC+0xb663, %rax
nop
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movaps %xmm6, (%rax)
nop
nop
nop
nop
nop
xor $44556, %rcx

// Faulty Load
lea addresses_WT+0x8e63, %r8
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r8), %bp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 10, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'58': 3}
58 58 58
*/
