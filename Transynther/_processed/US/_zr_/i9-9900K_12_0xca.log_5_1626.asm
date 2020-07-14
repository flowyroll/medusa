.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rdx
lea addresses_A_ht+0x14722, %rbp
add $40790, %r15
mov (%rbp), %r8w
nop
nop
and $49916, %r14
lea addresses_UC_ht+0x9fa2, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor $6195, %rax
movw $0x6162, (%rdx)
add $19493, %rax
pop %rdx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx

// Load
lea addresses_US+0x12622, %r14
nop
nop
xor %r9, %r9
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
nop
nop
nop
nop
and $27374, %r13

// Store
mov $0x608e7b0000000e22, %rax
nop
nop
cmp $20976, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
movntdq %xmm7, (%rax)
nop
nop
nop
and $47031, %r13

// Load
lea addresses_A+0x75a2, %rax
nop
nop
nop
nop
nop
and $22145, %rcx
mov (%rax), %r14w
nop
and $52145, %r9

// Load
lea addresses_D+0x16ee2, %rbx
nop
nop
nop
nop
nop
xor $53961, %r13
mov (%rbx), %rcx
nop
nop
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_US+0x12622, %r13
nop
nop
nop
nop
nop
cmp $9629, %r9
vmovups (%r13), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'00': 5}
00 00 00 00 00
*/
