.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_PSE+0x5fba, %r9
nop
sub %rdx, %rdx
movl $0x51525354, (%r9)
nop
add $11924, %r15

// Store
mov $0x7ba, %r8
nop
nop
xor $43049, %r10
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r8)
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_PSE+0x5fba, %r8
clflush (%r8)
nop
nop
nop
nop
nop
inc %r15
vmovups (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'54': 38}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
