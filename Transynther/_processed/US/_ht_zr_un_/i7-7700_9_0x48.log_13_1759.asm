.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %r8
push %rax
push %rcx
lea addresses_normal_ht+0x4972, %r12
nop
nop
cmp %r8, %r8
movb (%r12), %r10b
nop
and $20583, %rcx
lea addresses_WC_ht+0x15506, %r14
clflush (%r14)
nop
add %r10, %r10
movups (%r14), %xmm2
vpextrq $1, %xmm2, %r15
nop
nop
nop
nop
nop
dec %r14
lea addresses_normal_ht+0x1f72, %rcx
nop
nop
cmp %r15, %r15
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r8
nop
sub $48862, %r14
lea addresses_D_ht+0xe187, %r12
cmp %rax, %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
xor %r10, %r10
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Store
mov $0x76313f0000000572, %r12
nop
nop
nop
nop
nop
xor $26883, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r12)
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_PSE+0x65c6, %r13
inc %r9
movl $0x51525354, (%r13)
nop
inc %rax

// Faulty Load
lea addresses_US+0x5972, %r9
nop
cmp $16913, %rbx
vmovups (%r9), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'48': 1, '44': 2, 'ff': 8, '00': 2}
ff ff 44 ff ff 48 44 00 00 ff ff ff ff
*/
