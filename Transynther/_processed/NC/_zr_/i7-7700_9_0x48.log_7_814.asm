.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rbp
push %rdi
lea addresses_WC_ht+0x1efed, %rbp
nop
nop
nop
and $46549, %r13
movb $0x61, (%rbp)
nop
nop
inc %r15
pop %rdi
pop %rbp
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdx

// Load
lea addresses_WT+0x1616d, %rcx
nop
nop
nop
xor $32934, %rax
mov (%rcx), %r10
nop
nop
add $25325, %r12

// Store
lea addresses_UC+0x25cd, %r12
sub $59159, %rax
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
nop
and $37065, %rax

// Faulty Load
mov $0x210682000000016d, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
vmovups (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
