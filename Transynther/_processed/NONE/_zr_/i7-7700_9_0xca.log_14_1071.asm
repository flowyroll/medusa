.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rax
push %rbp
push %rbx
push %rdx
push %rsi
lea addresses_UC_ht+0x1ee5a, %rax
nop
nop
nop
nop
and $40281, %r14
movups (%rax), %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
cmp $18850, %rbp
lea addresses_WC_ht+0x19e8a, %rsi
nop
nop
nop
nop
nop
xor $53157, %r13
movb (%rsi), %r14b
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x1b05a, %rbx
clflush (%rbx)
nop
dec %r13
movw $0x6162, (%rbx)
inc %rbx
lea addresses_UC_ht+0x10c6c, %rsi
nop
nop
nop
nop
sub $31648, %rdx
mov (%rsi), %bp
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x1c05a, %rbp
lfence
movl $0x61626364, (%rbp)
cmp $140, %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9
push %rcx

// Store
mov $0x6925400000000d5a, %r14
nop
add $18008, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r14)
nop
xor $1537, %rcx

// Store
lea addresses_WC+0x77da, %r12
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r10
movq %r10, (%r12)
nop
nop
nop
nop
and %r13, %r13

// Store
mov $0xa5a, %r10
nop
dec %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r10)
inc %r13

// Faulty Load
lea addresses_UC+0xd25a, %r14
nop
nop
nop
cmp $40008, %r8
mov (%r14), %r9w
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
