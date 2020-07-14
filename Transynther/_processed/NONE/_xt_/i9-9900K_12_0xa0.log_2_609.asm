.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rbx
push %rcx
push %rdx
lea addresses_WT_ht+0x22ba, %rcx
nop
nop
nop
cmp $52667, %r9
mov (%rcx), %r10
nop
nop
inc %r11
lea addresses_WC_ht+0x1c6ba, %rbx
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%rbx)
nop
inc %rdx
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Load
lea addresses_WT+0x1c0ba, %r15
cmp %r13, %r13
movups (%r15), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_WT+0x59ba, %r12
nop
nop
nop
nop
nop
xor $28951, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
nop
sub $2704, %rbp

// Faulty Load
lea addresses_RW+0x1e6ba, %rcx
nop
nop
nop
nop
nop
add $13595, %rdx
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'32': 2}
32 32
*/
