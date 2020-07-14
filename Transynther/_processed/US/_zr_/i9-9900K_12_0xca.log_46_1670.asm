.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rsi
lea addresses_A_ht+0x17153, %rax
nop
add $29216, %rbp
mov (%rax), %r10
nop
inc %r14
lea addresses_UC_ht+0x9913, %r9
nop
and %rax, %rax
movw $0x6162, (%r9)
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x1a4d3, %r14
nop
nop
nop
nop
nop
sub %rcx, %rcx
mov (%r14), %esi
nop
nop
nop
nop
nop
sub $22373, %rax
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rcx
push %rdx

// Store
mov $0xf33, %r14
nop
nop
nop
nop
nop
add $31693, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm4
movups %xmm4, (%r14)
nop
nop
sub %rcx, %rcx

// Store
lea addresses_UC+0x3093, %r9
nop
nop
nop
nop
nop
add $45420, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_US+0x5153, %rdx
nop
nop
nop
xor $36711, %r12
vmovups (%rdx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rdx
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 6}}
{'00': 46}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
