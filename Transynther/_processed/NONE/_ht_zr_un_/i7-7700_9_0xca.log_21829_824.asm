.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x547f, %r14
clflush (%r14)
nop
add $55999, %rdx
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r14)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xbe77, %rcx
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%rcx), %esi
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0x97bf, %rdx
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rdx)
cmp $34081, %rsi
lea addresses_WT_ht+0x14237, %r14
nop
nop
nop
nop
cmp $25106, %rsi
mov (%r14), %eax
nop
nop
nop
nop
sub $27149, %rax
lea addresses_A_ht+0xafdf, %r14
nop
nop
nop
nop
nop
inc %rsi
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r12
nop
nop
nop
nop
sub $17410, %r12
lea addresses_WT_ht+0x18695, %rsi
lea addresses_A_ht+0xc27f, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $5, %rcx
rep movsw
nop
nop
sub $28849, %r14
lea addresses_A_ht+0x92bf, %r14
nop
nop
inc %r12
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x1727f, %rsi
lea addresses_WC_ht+0xb37f, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
mov $56, %rcx
rep movsw
nop
nop
nop
xor $8739, %rax
lea addresses_A_ht+0x4b8f, %rsi
lea addresses_UC_ht+0x12c7f, %rdi
nop
and $64641, %r12
mov $72, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $10697, %rsi
lea addresses_WT_ht+0x17dd7, %rsi
lea addresses_A_ht+0xe61f, %rdi
nop
inc %rdx
mov $124, %rcx
rep movsq
nop
nop
cmp $8603, %rdx
lea addresses_D_ht+0x1760f, %r12
nop
and %r8, %r8
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_UC_ht+0x6606, %rsi
lea addresses_A_ht+0x387f, %rdi
nop
cmp $2174, %r12
mov $44, %rcx
rep movsq
nop
nop
nop
nop
and $16620, %rdx
lea addresses_UC_ht+0x1e47f, %rdx
xor $52681, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rdx)
xor %rax, %rax
lea addresses_D_ht+0x487f, %rsi
lea addresses_WC_ht+0x33cf, %rdi
nop
nop
inc %rax
mov $96, %rcx
rep movsb
xor $36535, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1647f, %r12
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_US+0x1a70f, %r14
nop
nop
nop
nop
nop
cmp $64971, %rsi
movb $0x51, (%r14)
nop
nop
sub %r8, %r8

// Load
mov $0x2f2d730000000c7f, %rbx
nop
nop
nop
nop
nop
and $18811, %r14
movb (%rbx), %r8b
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_WT+0xc7f, %r14
nop
nop
nop
nop
nop
cmp %rbx, %rbx
mov (%r14), %r8d
lea oracles, %rbx
and $0xff, %r8
shlq $12, %r8
mov (%rbx,%r8,1), %r8
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_US'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'47': 12, '00': 131, 'ff': 66, 'bb': 18418, '45': 1413, '49': 236, 'ba': 1553}
ba ba ba ba ba 47 ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba 00 ba ba ba ba ba ba 49 ba 49 ba 45 45 ba ba ba ba ba ba ba 49 ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba 00 ba ba ba ba 49 ba ba ba 45 ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba 45 ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba 00 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba 49 ba ba ba 45 ba ba ba ba ba ba ba ba 45 ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba 45 45 ba ba ba ba ba ba ba 00 ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 00 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 00 ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 00 ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba 45 ba 00 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba 00 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba 00 ba ba ba ba ba ba ba ba ba ba ba ba ba ba 00 ba ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba 00 00 ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba ba 45 ba ba ba 49 ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 00 ba ba ba 45 ba ba ba ba ff ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba 45 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 49 ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba ba 45 ba 45 ba ba ba ba ba ba 49 ba ba ba ba ba ba 49 ba ba ba
*/
