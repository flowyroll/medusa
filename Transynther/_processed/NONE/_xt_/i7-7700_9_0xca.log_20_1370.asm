.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rsi
lea addresses_WT_ht+0x10692, %rbx
add %rsi, %rsi
mov (%rbx), %ecx
nop
nop
nop
add $61916, %r9
lea addresses_UC_ht+0x8092, %r12
nop
nop
nop
nop
add $49555, %rbx
mov (%r12), %ax
nop
nop
nop
nop
dec %r12
lea addresses_WT_ht+0x11b62, %r9
nop
dec %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r9)
nop
nop
add %rbx, %rbx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdx

// Store
lea addresses_D+0x6db2, %r12
nop
nop
sub $4437, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0xa92, %rcx
nop
nop
nop
add $9166, %rdx
movw $0x5152, (%rcx)
nop
nop
xor $38477, %rdx

// Faulty Load
lea addresses_RW+0xfe92, %rdx
add %r15, %r15
movb (%rdx), %r12b
lea oracles, %rdx
and $0xff, %r12
shlq $12, %r12
mov (%rdx,%r12,1), %r12
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'32': 20}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
