.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rdi
lea addresses_normal_ht+0xa2e7, %r15
nop
nop
add %rax, %rax
movb (%r15), %r10b
nop
nop
nop
nop
nop
add $54559, %r8
pop %rdi
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rbp
push %rdi

// Load
lea addresses_D+0x6527, %r8
nop
nop
nop
nop
nop
cmp $59414, %rdi
movb (%r8), %r14b
sub %r10, %r10

// Store
lea addresses_D+0x96e7, %r9
nop
nop
nop
nop
and %r15, %r15
movw $0x5152, (%r9)
nop
nop
and %r8, %r8

// Load
lea addresses_UC+0x11b6f, %r14
nop
cmp $51933, %rbp
mov (%r14), %r9d
nop
and $56263, %rdi

// Store
lea addresses_normal+0x17d27, %r9
nop
cmp %r14, %r14
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%r9)
add %r9, %r9

// Load
lea addresses_D+0x1e9cb, %rdi
nop
nop
nop
sub %r8, %r8
vmovups (%rdi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_PSE+0x6c67, %r10
nop
nop
nop
nop
nop
inc %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
cmp $48164, %r14

// Store
lea addresses_WT+0xe167, %r8
nop
nop
nop
nop
add %r14, %r14
movw $0x5152, (%r8)
dec %rdi

// Store
lea addresses_RW+0x1f433, %rdi
nop
nop
nop
nop
sub $27606, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
cmp $13180, %r9

// Store
lea addresses_UC+0x11ce7, %r10
nop
nop
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, %xmm5
movntdq %xmm5, (%r10)
nop
nop
nop
nop
inc %rdi

// Store
lea addresses_WC+0x8267, %r10
nop
nop
cmp $59949, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%r10)
nop
nop
nop
nop
nop
sub %r15, %r15

// Load
mov $0x867, %r9
clflush (%r9)
nop
nop
sub $31265, %r15
mov (%r9), %ebp
nop
nop
and $22727, %r8

// Load
lea addresses_WT+0x4c67, %r15
nop
nop
nop
nop
xor %r9, %r9
movntdqa (%r15), %xmm7
vpextrq $0, %xmm7, %r8
xor $33522, %r9

// Store
lea addresses_WC+0x15f58, %r14
nop
nop
nop
nop
cmp $59092, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
movups %xmm7, (%r14)
nop
nop
dec %rbp

// Faulty Load
lea addresses_PSE+0x6c67, %r9
nop
inc %r14
mov (%r9), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'54': 27}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
