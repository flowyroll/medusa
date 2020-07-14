.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11c78, %r8
nop
nop
nop
nop
nop
sub $40767, %rdx
mov $0x6162636465666768, %r12
movq %r12, (%r8)
sub $61452, %r13
lea addresses_WC_ht+0x737b, %rsi
lea addresses_WT_ht+0x1d5eb, %rdi
nop
sub %r15, %r15
mov $88, %rcx
rep movsb
nop
nop
inc %rdx
lea addresses_D_ht+0x3a4b, %r12
and %rdi, %rdi
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r12)
nop
and %r15, %r15
lea addresses_WC_ht+0xac97, %r8
nop
nop
nop
inc %rdi
movb $0x61, (%r8)
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x18b83, %rdi
sub $24621, %r12
mov (%rdi), %r15
nop
add %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdx

// Store
lea addresses_PSE+0x5d0b, %rbp
nop
nop
cmp $18601, %rdx
movw $0x5152, (%rbp)
nop
nop
nop
cmp %r13, %r13

// Faulty Load
lea addresses_US+0x1514b, %r10
nop
and %r15, %r15
mov (%r10), %cx
lea oracles, %r13
and $0xff, %rcx
shlq $12, %rcx
mov (%r13,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 2}, 'OP': 'LOAD'}
{'00': 10}
00 00 00 00 00 00 00 00 00 00
*/
