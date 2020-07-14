.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
lea addresses_WC_ht+0x16302, %rcx
sub %r9, %r9
movl $0x61626364, (%rcx)
nop
inc %rbx
lea addresses_UC_ht+0xe592, %rdx
nop
nop
nop
nop
dec %rax
movups (%rdx), %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x1d490, %r9
nop
nop
cmp %rdi, %rdi
movups (%r9), %xmm4
vpextrq $1, %xmm4, %rbx
nop
nop
nop
nop
nop
xor $11264, %rcx
lea addresses_WC_ht+0x65e2, %rbx
nop
nop
nop
nop
inc %rax
mov (%rbx), %ecx
nop
dec %rax
lea addresses_WC_ht+0xdcc2, %rbx
nop
nop
sub $7551, %rdx
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
lfence
lea addresses_normal_ht+0x9702, %rbx
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm0
and $0xffffffffffffffc0, %rbx
movaps %xmm0, (%rbx)
nop
nop
nop
nop
nop
add %rdi, %rdi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x5502, %rbp
nop
sub $20852, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm6
vmovaps %ymm6, (%rbp)
nop
xor $13281, %r8

// Faulty Load
lea addresses_A+0xa302, %r12
nop
nop
nop
nop
nop
sub $16257, %rdi
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 32, 'AVXalign': True}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True}}
{'00': 110}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
