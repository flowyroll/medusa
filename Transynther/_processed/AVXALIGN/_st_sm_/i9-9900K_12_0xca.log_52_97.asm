.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rcx
push %rsi
lea addresses_WT_ht+0x1d876, %r10
xor $33017, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rcx
pop %rbp
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0xac76, %rsi
lea addresses_normal+0x1a276, %rdi
cmp %r15, %r15
mov $72, %rcx
rep movsw
nop
nop
xor %rcx, %rcx

// Store
lea addresses_WT+0x320e, %r15
add %rbx, %rbx
movw $0x5152, (%r15)
nop
nop
nop
and %rdi, %rdi

// Store
lea addresses_WT+0x15676, %rsi
nop
nop
nop
nop
inc %rcx
movb $0x51, (%rsi)
nop
nop
nop
inc %r10

// Store
lea addresses_PSE+0xceaa, %rbx
xor %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
add $63524, %r15

// Store
lea addresses_UC+0x16676, %rcx
nop
nop
cmp %r10, %r10
movl $0x51525354, (%rcx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WT+0x15676, %r15
nop
nop
nop
nop
nop
xor $40080, %r12
mov (%r15), %si
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_PSE', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_normal', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'54': 51, '51': 1}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 51 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
