.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rbx

// Store
mov $0x323af600000002d5, %rbp
nop
inc %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbp)
add %rax, %rax

// Load
lea addresses_UC+0x1e1d5, %rax
nop
nop
nop
nop
nop
xor $58168, %r10
mov (%rax), %r12
nop
and $10455, %rbx

// Store
mov $0x7e4e820000000fad, %r9
nop
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r9)
xor %rbx, %rbx

// Load
lea addresses_PSE+0x6615, %r10
nop
add $62561, %r12
movups (%r10), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
cmp %rax, %rax

// Store
mov $0xbd5, %rax
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%rax)
nop
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x8dd5, %r12
nop
nop
sub $11697, %r10
vmovups (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r9
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'33': 2}
33 33
*/
