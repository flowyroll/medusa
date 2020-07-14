.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rax
push %rbp
push %rcx
push %rdx
lea addresses_WC_ht+0xb53e, %r10
clflush (%r10)
nop
nop
inc %r13
mov (%r10), %eax
nop
nop
xor $46178, %rbp
lea addresses_UC_ht+0x131b4, %r8
nop
nop
nop
nop
nop
and $22441, %rdx
mov (%r8), %ecx
nop
nop
nop
nop
sub %r8, %r8
lea addresses_A_ht+0xd61e, %r10
nop
nop
nop
nop
add $55054, %r13
mov (%r10), %rbp
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x17ede, %r13
nop
nop
nop
nop
cmp $49718, %rdx
movb $0x61, (%r13)
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1e31e, %r13
nop
sub %r10, %r10
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
xor $34116, %r13
lea addresses_WC_ht+0x12b1e, %rdx
inc %rbp
mov (%rdx), %ecx
nop
nop
nop
sub $45877, %rdx
lea addresses_WT_ht+0x1953e, %r8
nop
nop
nop
and %rax, %rax
mov (%r8), %r10
nop
nop
xor %r8, %r8
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rsi

// Load
lea addresses_US+0x1655e, %r13
nop
nop
nop
dec %rax
vmovups (%r13), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
add %rsi, %rsi

// Store
lea addresses_WC+0x137de, %r13
inc %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r13)
nop
and $63506, %rax

// Faulty Load
lea addresses_D+0xb91e, %r15
nop
nop
nop
nop
nop
and $30332, %rcx
mov (%r15), %r13w
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rsi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 2, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'36': 30}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
