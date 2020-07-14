.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_PSE+0x12ce8, %rsi
lea addresses_normal+0x182e8, %rdi
nop
nop
nop
nop
nop
cmp $24418, %r10
mov $50, %rcx
rep movsl
nop
xor $46340, %rsi

// Store
lea addresses_D+0x1185, %rcx
nop
nop
and $60533, %rax
movb $0x51, (%rcx)
nop
and $62016, %r10

// Store
lea addresses_WT+0x13268, %r10
and %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%r10)
nop
nop
xor %rbp, %rbp

// Store
mov $0x3fd24c00000001e4, %rcx
nop
nop
and $16233, %rdi
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_WT+0x1a398, %rbp
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rbp)
nop
and $60430, %rdi

// Store
mov $0x176, %r10
nop
xor $50801, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm4
vmovups %ymm4, (%r10)
nop
nop
nop
add $20466, %rbp

// Store
lea addresses_D+0x37c8, %rbp
nop
nop
nop
nop
xor $52690, %rcx
movl $0x51525354, (%rbp)
nop
sub $46884, %rbx

// Faulty Load
lea addresses_normal+0x82e8, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $13125, %rbx
vmovaps (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'00': 2}
00 00
*/
