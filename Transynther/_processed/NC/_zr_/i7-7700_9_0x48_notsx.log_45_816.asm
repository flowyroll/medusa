.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1b922, %rbx
nop
nop
cmp %rdx, %rdx
movb $0x61, (%rbx)
nop
and %r8, %r8
lea addresses_normal_ht+0x17c42, %r13
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r13)
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x19c22, %r8
nop
cmp $45907, %rbp
movw $0x6162, (%r8)
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0xc6f2, %rbp
nop
nop
nop
nop
nop
add $3657, %r10
mov (%rbp), %r8
nop
nop
nop
nop
nop
dec %rbx
lea addresses_WC_ht+0xdaa2, %rsi
lea addresses_UC_ht+0x9ed2, %rdi
nop
nop
nop
add $12325, %rbx
mov $88, %rcx
rep movsb
nop
nop
and $62286, %rdx
lea addresses_WC_ht+0x1c322, %rsi
lea addresses_WC_ht+0xcc22, %rdi
nop
nop
nop
sub %r12, %r12
mov $22, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %r8
push %r9
push %rdx

// Store
lea addresses_WT+0x1a122, %r9
nop
and %r8, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovaps %ymm5, (%r9)
nop
nop
nop
nop
nop
sub $58300, %r10

// Faulty Load
mov $0x754ff50000000822, %rdx
nop
inc %r13
movb (%rdx), %r8b
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 4}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'00': 45}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
