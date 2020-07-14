.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbx
lea addresses_normal_ht+0xfe1c, %rax
nop
nop
and %r10, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
cmp %r12, %r12
pop %rbx
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x50fc, %r12
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
nop
nop
and %r12, %r12

// Store
lea addresses_WC+0xb802, %rcx
nop
nop
nop
inc %rbp
movl $0x51525354, (%rcx)
add %rdx, %rdx

// Store
lea addresses_A+0x302b, %rcx
nop
nop
nop
nop
dec %r9
movw $0x5152, (%rcx)
sub $43760, %rbp

// Store
lea addresses_PSE+0x17554, %r12
nop
cmp %r15, %r15
mov $0x5152535455565758, %rbp
movq %rbp, %xmm2
movups %xmm2, (%r12)
inc %rdx

// Store
mov $0x61893f0000000e1c, %r12
clflush (%r12)
nop
nop
and $27344, %rsi
movl $0x51525354, (%r12)
cmp %rbp, %rbp

// Store
lea addresses_WC+0xd51c, %r12
nop
nop
dec %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r12)
nop
nop
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_WC+0xd51c, %r15
clflush (%r15)
nop
cmp $37883, %r12
movntdqa (%r15), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'00': 1}
00
*/
