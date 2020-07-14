.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xa4fa, %rsi
nop
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x101a, %rsi
lea addresses_WT_ht+0x1457a, %rdi
nop
nop
nop
nop
sub $50394, %r13
mov $39, %rcx
rep movsw
nop
nop
inc %r10
lea addresses_UC_ht+0xae26, %rsi
lea addresses_A_ht+0x1b81a, %rdi
nop
nop
nop
xor %r8, %r8
mov $73, %rcx
rep movsb
nop
nop
cmp $21144, %rdi
lea addresses_normal_ht+0x199da, %r10
and %r8, %r8
mov $0x6162636465666768, %r12
movq %r12, (%r10)
nop
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1b0fa, %r8
clflush (%r8)
nop
nop
nop
sub $49407, %r10
movw $0x6162, (%r8)
sub $56889, %rbp
lea addresses_D_ht+0x1539a, %rcx
nop
nop
nop
inc %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x9ffa, %rsi
lea addresses_WT_ht+0x752e, %rdi
nop
and %rbp, %rbp
mov $46, %rcx
rep movsl
nop
nop
nop
cmp $17128, %r13
lea addresses_A_ht+0x174fa, %rsi
lea addresses_UC_ht+0x1d17a, %rdi
nop
nop
and $17744, %rbp
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x897a, %rdx
nop
xor $50697, %rcx
movw $0x5152, (%rdx)
nop
nop
nop
cmp $40871, %rdx

// REPMOV
lea addresses_PSE+0x13ffa, %rsi
lea addresses_WT+0x18bba, %rdi
nop
nop
nop
nop
dec %r12
mov $9, %rcx
rep movsb
nop
nop
cmp %r15, %r15

// Store
mov $0x8fa, %r12
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r12)
nop
sub %rdx, %rdx

// Faulty Load
lea addresses_US+0x48fa, %r14
nop
xor $20542, %rcx
vmovups (%r14), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_PSE', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'42': 1, '44': 1, 'a4': 1, '45': 14021, 'c3': 3, 'e0': 1, '0a': 1, 'e2': 1, 'd6': 1, '03': 4, '90': 1, '46': 4, '00': 7786, 'ea': 1, '2e': 1, 'd2': 1}
00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 45 45 00 45 00 45 00 00 00 00 45 00 45 00 45 00 45 45 00 45 00 45 00 00 45 45 00 45 45 45 00 00 45 45 00 45 45 45 45 45 00 45 00 45 45 45 00 00 45 00 45 45 00 00 45 45 00 00 45 00 45 45 45 00 00 45 00 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 00 00 45 45 00 00 45 45 45 45 45 45 00 45 00 00 00 45 45 45 45 00 45 45 00 00 00 45 00 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 00 00 45 00 00 45 45 00 45 45 45 00 45 45 45 00 45 45 00 00 45 45 00 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 00 45 00 00 45 00 45 45 45 45 00 00 45 00 00 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 00 00 00 45 45 45 00 45 45 00 45 45 00 00 45 00 00 45 00 00 00 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 45 00 00 45 45 00 45 45 45 00 00 45 45 45 00 45 00 00 00 45 00 45 45 45 45 00 45 45 00 00 00 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 00 45 00 00 00 00 45 45 00 45 45 00 45 45 00 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 00 45 45 45 00 00 45 00 00 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 00 00 45 45 45 45 45 00 00 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 45 00 45 00 00 45 00 45 45 00 45 45 45 00 00 00 00 00 45 00 45 45 00 00 45 00 45 45 45 45 00 45 45 45 00 45 00 45 00 45 00 45 45 00 45 00 45 45 45 00 45 00 00 00 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 00 45 00 00 45 45 45 45 45 00 45 00 00 d6 45 45 00 00 45 00 45 45 00 00 45 00 00 45 45 45 45 00 45 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 00 00 45 00 45 45 00 00 00 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 00 45 45 00 45 45 45 00 45 00 00 45 45 00 45 00 00 45 00 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 45 45 00 45 45 45 00 00 00 45 45 45 00 45 45 00 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 00 45 45 45 45 45 00 00 45 45 00 00 00 45 45 00 45 45 45 00 45 00 45 45 00 45 00 00 45 00 45 00 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 00 00 45 00 00 00 45 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 00 00 00 45 00 45 00 45 00 45 45 45 00 00 45 45 45 45 00 00 45 45 00 00 45 45 00 45 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 00 45 00 00 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 00 00 45 00 00 00 00 45 45 45 00 00 45 00 45 45 45 00 00 45 45 00 45 45 45 45 00 00 45 00 00 45 45 00 45 00 00 00 45 45 00 00 45 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 00 00 45 45 45 00 45 45 45 00 00 45 45 00 00 45 00 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 45 00 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 45 00 00
*/
