.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d30a, %rsi
lea addresses_WC_ht+0x1690a, %rdi
nop
dec %r8
mov $13, %rcx
rep movsb
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_A_ht+0x13b0a, %rbp
sub $2998, %r15
movb $0x61, (%rbp)
nop
nop
dec %rbp
lea addresses_D_ht+0x470a, %rsi
lea addresses_UC_ht+0x1432a, %rdi
clflush (%rsi)
nop
nop
nop
and $8730, %r10
mov $59, %rcx
rep movsb
xor $28467, %rcx
lea addresses_WT_ht+0x11a0a, %rsi
lea addresses_D_ht+0xe70a, %rdi
clflush (%rdi)
xor $10751, %rdx
mov $31, %rcx
rep movsb
sub $19569, %rcx
lea addresses_A_ht+0x570a, %r8
nop
nop
nop
nop
nop
xor $60128, %rdx
movups (%r8), %xmm0
vpextrq $1, %xmm0, %rdi
nop
xor $5905, %rdi
lea addresses_WC_ht+0x9eee, %rsi
lea addresses_A_ht+0x10d8a, %rdi
nop
nop
nop
nop
and $46802, %r15
mov $52, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x14b0a, %rcx
clflush (%rcx)
nop
nop
nop
sub %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, (%rcx)
nop
nop
xor %r15, %r15
lea addresses_A_ht+0x8d4a, %rbp
nop
nop
nop
and %r8, %r8
mov (%rbp), %cx
nop
nop
add %rcx, %rcx
lea addresses_UC_ht+0x180aa, %rsi
lea addresses_WC_ht+0x480a, %rdi
clflush (%rdi)
nop
and %r15, %r15
mov $110, %rcx
rep movsb
nop
and %rdx, %rdx
lea addresses_WT_ht+0x1d978, %r15
clflush (%r15)
nop
add $29688, %rcx
movw $0x6162, (%r15)
nop
nop
xor %rdi, %rdi
lea addresses_A_ht+0x132d6, %r10
add $14927, %rcx
vmovups (%r10), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r8
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xd90a, %rsi
lea addresses_UC_ht+0xbf0a, %rdi
sub $45530, %r15
mov $60, %rcx
rep movsq
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rdi
push %rdx

// Faulty Load
lea addresses_WT+0x15f0a, %r9
nop
nop
nop
add $61261, %rax
movaps (%r9), %xmm2
vpextrq $1, %xmm2, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}}
{'46': 1307, '44': 3217, '48': 3405, '00': 10440, '45': 802, '49': 2658}
00 00 49 00 00 46 00 48 44 00 00 44 00 49 45 00 46 48 48 49 48 00 44 00 49 45 48 49 00 00 44 00 48 44 00 49 44 00 49 44 00 49 44 00 48 44 00 49 00 00 44 00 48 00 00 48 00 00 49 48 48 49 00 00 44 48 48 44 00 49 45 00 46 48 00 44 00 00 44 48 48 44 00 48 00 00 46 48 00 44 00 00 44 00 48 00 00 49 45 48 46 00 00 46 00 00 44 48 48 44 48 49 45 00 49 00 00 44 00 48 44 00 00 00 00 49 48 00 46 00 00 44 00 48 44 00 48 44 48 00 00 00 49 48 00 44 00 00 44 00 00 00 00 46 00 00 46 00 00 44 00 48 44 00 49 45 00 49 00 00 44 00 48 44 00 49 45 48 49 45 00 44 00 00 44 00 00 00 00 46 00 00 00 00 48 44 00 49 00 00 46 48 00 44 00 49 45 00 46 48 48 46 00 00 44 00 48 44 00 48 00 00 46 00 00 44 00 00 00 00 49 00 00 46 00 00 44 00 49 44 00 49 00 00 46 00 00 46 00 00 44 00 48 00 00 49 45 48 49 00 00 46 00 00 44 00 00 00 00 49 48 00 46 00 00 44 00 00 44 00 48 44 00 49 45 00 49 00 00 44 00 48 44 48 48 00 00 49 44 00 49 00 00 49 48 00 44 00 00 44 00 48 44 00 48 00 00 46 00 48 49 48 48 44 00 48 44 00 48 44 00 46 00 00 49 00 00 46 00 00 44 00 46 00 48 49 00 00 46 00 00 00 49 45 00 49 48 00 46 00 00 44 00 48 44 00 48 44 00 49 45 48 46 00 00 44 00 49 45 00 46 00 48 49 00 00 44 00 48 00 48 49 45 00 49 48 00 44 00 48 44 00 48 44 48 49 00 00 44 00 48 44 00 46 00 00 46 00 00 44 00 48 44 00 49 45 00 49 48 00 49 00 00 44 00 48 44 00 49 00 00 49 48 00 44 00 49 45 00 49 00 00 44 00 00 44 00 48 44 00 48 00 00 49 00 00 49 48 00 44 00 48 44 00 48 00 00 49 00 00 44 00 00 44 00 00 44 48 49 45 00 46 00 00 44 00 49 44 00 49 00 00 46 48 00 44 00 48 44 00 49 00 00 46 00 00 44 00 48 44 00 49 45 00 49 00 48 46 00 00 44 00 00 44 00 48 44 00 49 00 00 44 00 48 00 48 49 45 00 49 48 48 46 00 00 44 00 48 44 00 49 45 48 49 00 00 49 00 00 44 00 48 44 00 48 00 00 49 48 00 44 00 48 44 00 48 00 00 46 00 00 49 00 00 44 00 00 44 00 49 44 00 49 00 00 46 00 00 44 00 48 44 00 49 00 00 46 00 00 44 00 49 00 00 46 00 00 44 48 49 45 48 49 00 00 44 48 48 44 00 48 00 00 46 48 48 46 48 48 44 00 48 44 00 49 00 00 46 00 48 44 00 49 45 00 48 44 00 49 00 00 44 00 49 45 00 49 00 48 49 00 00 44 00 48 00 00 49 00 00 46 00 00 44 00 49 45 00 49 00 48 46 00 48 44 00 48 00 00 49 00 00 44 00 48 44 00 48 44 48 49 45 00 46 00 48 49 00 00 44 00 48 49 48 48 44 00 00 44 00 48 44 48 49 45 00 49 00 00 46 00 00 44 00 48 00 00 49 00 00 46 00 00 44 00 48 00 00 49 00 00 44 00 48 00 00 49 48 00 49 00 00 44 00 48 44 00 48 00 00 49 00 00 44 00 00 00 00 49 48 48 46 00 00 44 48 48 44 00 49 00 00 49 00 00 44 48 48 00 00 49 00 00 46 00 00 44 00 48 44 00 49 44 00 49 45 00 49 48 48 46 00 48 44 00 49 45 00 46 00 48 46 00 00 44 00 48 44 00 49 45 00 46 00 48 46 00 00 44 00 48 00 00 49 00 00 46 00 00 44 00 49 45 00 49 00 00 46 00 00 44 00 49 44 00 49 00 00 44 00 49 45 00 49 48 00 49 00 00 44 48 48 00 00 49 48 00 46 00 00 44 48 49 45 00 49 00 00 46 00 00 44 00 00 00 00 49 45 00 49 45 48 46 00 48 44 00 00 00 49 00 00 49 00 00 44 00 48 44 00 48 44 00 48 00 00 48 44 45 00 49 45 00 49 48 00 46 00 00 44 00 48 44 00 49 00 00 46 00 00 44 00 48 44 00 49 45 00 44 00
*/
