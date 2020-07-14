.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
lea addresses_normal_ht+0x414, %r8
nop
nop
nop
sub $52742, %r15
movb $0x61, (%r8)
nop
xor $26049, %rax
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x170a, %r9
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
lea addresses_A+0x22ba, %rdx
clflush (%rdx)
nop
nop
inc %rcx
vmovups (%rdx), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'3c': 1, '04': 1, 'ff': 4, '00': 8}
00 ff ff 00 00 00 04 ff 00 3c 00 00 00 ff
*/
