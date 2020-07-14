.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x196cd, %rsi
lea addresses_normal_ht+0x2429, %rdi
nop
nop
nop
nop
xor $26368, %rax
mov $62, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1777d, %rsi
lea addresses_D_ht+0x17db5, %rdi
clflush (%rsi)
nop
nop
nop
add $36056, %r12
mov $75, %rcx
rep movsq
nop
nop
nop
sub $30600, %rsi
lea addresses_UC_ht+0x1cbbd, %rdi
nop
xor %r9, %r9
movw $0x6162, (%rdi)
nop
sub $20389, %r12
lea addresses_WC_ht+0xc7f5, %rsi
lea addresses_UC_ht+0x15cdd, %rdi
xor $61190, %r10
mov $51, %rcx
rep movsq
nop
cmp %r9, %r9
lea addresses_UC_ht+0x1107d, %r14
nop
and %r10, %r10
mov (%r14), %di
nop
nop
nop
nop
nop
sub $43238, %r9
lea addresses_A_ht+0x1b37d, %r9
nop
nop
nop
cmp %r10, %r10
mov (%r9), %edi
nop
nop
sub $48516, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
mov $0x4e4e3a00000001fd, %rdi
clflush (%rdi)
nop
nop
inc %rsi
movw $0x5152, (%rdi)
nop
nop
xor $27429, %rbp

// Load
mov $0x5a04050000000ffd, %r10
and $56697, %r12
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
sub $22695, %rdi

// Faulty Load
lea addresses_WT+0x10c7d, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov (%rdi), %esi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'48': 667, '00': 4336, 'ff': 1, '17': 3366, '45': 3, '16': 7308, '14': 292, '15': 5856}
00 14 00 00 14 14 14 14 14 14 14 14 14 48 14 14 14 00 14 00 14 14 14 00 00 14 14 00 48 14 00 00 00 14 14 14 14 14 00 14 14 14 14 48 14 14 00 00 14 00 00 14 14 14 14 14 00 14 00 14 14 00 14 14 14 14 14 14 14 00 00 14 14 14 14 14 00 00 14 14 14 14 14 14 14 00 14 14 14 00 14 00 00 14 14 14 14 14 14 48 14 14 14 00 14 14 14 14 14 14 14 14 14 00 14 14 14 14 00 00 14 00 14 14 14 14 14 14 00 14 14 14 14 14 14 14 14 14 00 14 00 14 14 14 14 14 48 14 14 14 00 00 14 14 14 14 14 00 00 00 14 00 14 14 14 00 00 14 14 14 14 14 14 00 00 14 14 14 00 14 14 00 00 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 00 14 14 14 14 14 00 14 48 14 14 14 14 14 14 00 14 00 14 14 14 14 14 14 48 14 00 14 14 14 14 14 14 14 14 14 14 14 14 00 14 00 14 14 14 14 00 00 00 14 14 14 00 14 14 00 14 14 14 00 00 14 14 00 14 14 00 14 14 00 14 00 14 14 00 14 14 14 00 48 00 14 14 48 14 14 14 14 00 00 14 14 14 14 14 14 14 14 14 14 14 00 14 14 14 14 14 14 14 14 14 14 00 14 00 14 14 14 14 14 14 14 00 14 00 14 14 14 14 14 14 00 14 14 00 14 14 14 14 14 14 14 14 14 00 00 14 14 14 14 14 14 14 14 00 14 14 14 14 14 00 00 14 14 00 14 14 00 14 14 14 14 14 14 14 00 14 14 14 14 14 14 00 00 14 14 48 15 15 00 15 15 00 15 00 15 15 15 48 15 15 15 15 15 15 15 15 15 15 15 48 15 15 00 15 15 15 15 00 48 15 00 15 15 00 15 00 15 15 15 15 15 15 15 15 15 15 00 00 15 48 15 15 15 15 00 15 15 15 15 15 15 15 15 15 00 15 00 15 15 15 00 15 15 15 15 15 15 15 15 15 00 15 15 15 48 15 15 00 15 15 15 15 15 00 15 15 00 15 15 15 48 15 00 15 15 15 48 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 00 15 15 15 15 00 15 15 15 15 15 00 15 15 15 00 15 15 15 15 00 15 15 00 00 15 15 15 15 15 15 15 15 15 15 00 15 00 15 15 00 15 15 15 15 00 15 15 48 15 15 15 15 15 15 00 15 00 00 15 48 15 15 15 48 15 00 15 00 15 00 15 00 15 15 15 15 15 00 15 15 15 00 15 15 48 15 15 15 48 48 15 00 15 15 15 15 00 15 15 15 15 15 15 15 15 00 15 15 15 15 00 15 00 48 15 00 00 15 15 15 00 15 15 00 15 15 15 15 15 15 15 15 15 15 15 15 15 00 48 15 00 15 15 15 15 15 15 15 15 15 15 15 15 15 15 00 15 15 15 00 15 15 48 15 15 15 15 15 48 15 48 15 00 15 15 15 00 00 15 00 15 15 00 15 15 15 15 15 00 00 00 15 15 15 15 48 00 00 15 15 48 15 48 15 15 15 00 15 00 00 15 15 00 15 15 00 15 48 15 15 15 15 48 15 15 15 15 15 00 15 15 48 15 15 15 00 00 15 15 15 15 15 15 15 15 15 15 15 15 15 00 15 15 15 00 15 15 15 15 00 15 15 15 15 15 00 15 15 15 15 00 15 00 00 00 15 15 48 15 15 00 00 15 15 00 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 15 00 15 15 00 00 15 00 00 15 15 15 00 15 00 00 15 15 15 15 15 00 15 15 00 00 15 15 15 00 15 15 00 15 15 15 15 15 15 15 00 15 15 00 15 00 00 15 15 15 15 15 15 15 48 15 48 15 15 00 15 15 00 00 15 15 15 15 00 15 00 15 15 15 15 15 00 15 00 00 15 15 15 15 15 15 15 15 48 15 15 00 15 00 15 15 15 15 00 15 00 15 00 15 15 15 15 15 15 00 15 00 00 00 00 15 48 15 15 15 15 15 15 15 15 48 15 48 00 00 15 15 15 15 15 15 15 48 15 15 15 15 15 15 15 15 15 15 15 48 15 15 15 00 15 15 00 15 15 00 15 15 15 15 15 15 15 15 00 15 00 15 15 15
*/
