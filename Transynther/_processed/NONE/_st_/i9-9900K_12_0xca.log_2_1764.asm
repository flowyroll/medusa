.global s_prepare_buffers
s_prepare_buffers:
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi

// Store
lea addresses_PSE+0x92a2, %rcx
nop
nop
nop
sub %r12, %r12
mov $0x5152535455565758, %r15
movq %r15, %xmm4
vmovaps %ymm4, (%rcx)
nop
dec %r8

// Store
lea addresses_WT+0x1d18e, %r14
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movups %xmm7, (%r14)
nop
sub $35721, %r15

// Store
lea addresses_WT+0x185e2, %r15
clflush (%r15)
nop
nop
xor %r14, %r14
movb $0x51, (%r15)
nop
add $24462, %r15

// Store
lea addresses_D+0xe5e2, %rax
nop
nop
nop
nop
and $32733, %rdi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
movups %xmm2, (%rax)
nop
add %rdi, %rdi

// Faulty Load
lea addresses_A+0x155e2, %rcx
cmp $36105, %r8
mov (%rcx), %r15d
lea oracles, %r14
and $0xff, %r15
shlq $12, %r15
mov (%r14,%r15,1), %r15
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 11}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'58': 2}
58 58
*/
