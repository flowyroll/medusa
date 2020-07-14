.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbp
push %rdx
lea addresses_normal_ht+0x1a81a, %r14
nop
nop
nop
cmp $56847, %rdx
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r14)
nop
sub %rax, %rax
lea addresses_D_ht+0x14082, %r14
nop
and %r9, %r9
mov (%r14), %ebp
nop
sub %r15, %r15
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_UC+0x1e3da, %rbp
nop
inc %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
nop
sub %rbx, %rbx

// Store
mov $0x5da, %rsi
nop
nop
nop
sub $4108, %r14
movw $0x5152, (%rsi)
nop
add $45935, %r9

// Faulty Load
lea addresses_US+0x18bda, %rax
nop
nop
nop
nop
add $31219, %rbp
movb (%rax), %cl
lea oracles, %rbx
and $0xff, %rcx
shlq $12, %rcx
mov (%rbx,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 142}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
