.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rcx
lea addresses_WC_ht+0x4b80, %r15
nop
nop
nop
add %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r15)
nop
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_UC_ht+0x179b0, %rax
nop
nop
xor $21194, %rcx
movw $0x6162, (%rax)
cmp %rcx, %rcx
lea addresses_WT_ht+0x1ef00, %r9
add %rbp, %rbp
movb (%r9), %r14b
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0x1dd40, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp %r15, %r15
movups (%rbp), %xmm2
vpextrq $1, %xmm2, %r9
nop
nop
inc %r9
lea addresses_D_ht+0x10b90, %r15
nop
nop
nop
nop
nop
add $25779, %rax
movb $0x61, (%r15)
add %r9, %r9
lea addresses_WT_ht+0x10a50, %rbp
xor $12383, %r15
mov $0x6162636465666768, %r14
movq %r14, (%rbp)
nop
nop
nop
nop
and $32273, %r9
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rbx
push %rdi

// Store
lea addresses_WT+0x11e90, %r8
nop
nop
inc %r9
movl $0x51525354, (%r8)
nop
nop
nop
add $39415, %r8

// Store
lea addresses_normal+0x1c090, %r8
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r8)
xor %r12, %r12

// Store
lea addresses_WC+0x14e50, %rbx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rbx)
cmp $33540, %rbx

// Store
lea addresses_PSE+0x106bd, %r8
nop
nop
nop
nop
inc %r11
movw $0x5152, (%r8)
nop
nop
nop
dec %rbx

// Store
lea addresses_UC+0xce10, %rbx
add %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
xor $59953, %rdi

// Store
lea addresses_D+0xeac, %r10
nop
nop
nop
nop
nop
and $24391, %r12
movl $0x51525354, (%r10)
nop
nop
nop
nop
and $44696, %r12

// Store
lea addresses_WC+0x14890, %r10
nop
nop
nop
dec %r9
movw $0x5152, (%r10)
nop
and %r8, %r8

// Faulty Load
lea addresses_WC+0x14890, %rdi
nop
nop
nop
inc %r11
movb (%rdi), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': True, 'congruent': 6}}
{'52': 2}
52 52
*/
