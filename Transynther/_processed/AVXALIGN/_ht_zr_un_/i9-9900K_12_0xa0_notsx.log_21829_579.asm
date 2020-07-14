.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xe302, %r15
nop
nop
and %r12, %r12
movb $0x61, (%r15)
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x7132, %rcx
nop
sub $6715, %rdi
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r11
nop
nop
dec %r11
lea addresses_UC_ht+0xb118, %rsi
lea addresses_UC_ht+0x84aa, %rdi
cmp %r15, %r15
mov $91, %rcx
rep movsw
nop
nop
nop
nop
sub $27123, %rcx
lea addresses_A_ht+0x18a, %rsi
dec %r15
mov (%rsi), %r10d
and $53485, %r11
lea addresses_A_ht+0x1a7aa, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rdi)
nop
nop
cmp $378, %r8
lea addresses_A_ht+0x8e8a, %rsi
lea addresses_WT_ht+0x10c0a, %rdi
nop
nop
nop
and $30574, %r11
mov $110, %rcx
rep movsq
nop
nop
nop
cmp $13381, %rcx
lea addresses_normal_ht+0x928a, %rsi
lea addresses_normal_ht+0x1058a, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $0, %rcx
rep movsl
nop
dec %rdi
lea addresses_D_ht+0x19608, %r10
nop
nop
nop
nop
sub %r12, %r12
mov (%r10), %di
nop
nop
nop
nop
inc %rcx
lea addresses_WT_ht+0xedf6, %r15
clflush (%r15)
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0xd18a, %r14
nop
nop
cmp %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
sub %rcx, %rcx

// Store
lea addresses_WT+0x1378a, %rax
nop
sub %rbp, %rbp
movb $0x51, (%rax)
nop
nop
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_D+0x15d2a, %rbp
nop
nop
nop
nop
nop
inc %rdx
mov (%rbp), %rsi
cmp %rdx, %rdx

// Faulty Load
lea addresses_RW+0xe98a, %rcx
nop
nop
nop
nop
nop
and $2383, %rbp
vmovaps (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 1}}
{'06': 10792, '47': 1, '8a': 8, '45': 625, 'f2': 1, '60': 8203, '02': 1, '6c': 4, '6d': 1, '00': 2193}
02 06 06 06 06 00 60 06 60 06 60 06 06 60 06 06 06 06 06 60 00 60 06 06 60 00 60 06 06 06 60 60 60 60 06 06 60 06 60 06 60 06 60 45 06 06 06 60 06 60 45 06 00 60 06 60 60 06 00 60 60 06 06 60 60 06 06 06 60 00 06 06 60 06 00 60 60 06 06 60 06 00 60 60 06 45 06 60 00 06 06 06 06 60 00 60 60 06 06 00 60 60 60 06 60 60 06 06 60 06 06 06 60 06 60 60 06 06 06 60 60 06 45 06 00 60 06 60 06 06 60 06 06 45 06 06 60 06 60 45 06 00 60 60 60 06 06 60 06 06 60 45 06 60 60 06 06 60 06 60 06 06 60 60 06 06 06 45 06 06 60 06 06 06 06 60 60 06 06 45 06 00 60 60 06 06 06 60 60 06 60 06 00 60 60 60 06 00 60 06 60 06 00 60 06 06 06 60 06 60 60 60 60 06 60 60 06 60 06 60 06 00 60 06 06 06 06 06 00 60 60 06 06 06 00 60 06 06 06 00 60 06 60 06 00 60 60 60 06 06 00 60 60 60 45 06 06 06 06 06 06 45 00 60 06 60 06 00 60 06 60 06 06 00 60 60 06 06 60 00 60 06 60 06 06 06 60 60 06 45 06 60 60 06 06 06 06 06 06 00 60 06 60 06 00 60 06 06 60 06 06 60 06 60 06 00 60 60 60 60 45 06 06 06 60 60 06 60 06 60 06 06 60 45 06 00 60 60 06 45 06 06 06 60 06 45 60 06 60 06 60 06 06 00 60 60 60 60 06 06 60 06 06 60 06 06 00 60 60 60 06 60 06 06 60 60 06 06 00 60 06 60 45 06 00 60 06 60 06 00 60 06 60 06 00 60 06 60 06 00 60 60 06 06 06 06 00 06 60 06 06 60 06 06 60 06 60 45 06 60 60 60 06 45 06 60 06 60 60 06 06 06 60 06 06 06 06 06 60 06 60 06 06 00 60 60 06 06 06 00 60 60 06 06 60 60 06 06 60 06 06 00 60 06 60 60 06 06 00 60 06 06 06 00 60 60 06 06 06 00 60 60 06 45 60 00 00 60 06 06 60 60 06 60 06 06 06 60 60 06 06 06 60 06 06 00 60 06 60 06 00 60 60 60 06 00 60 60 06 06 60 00 60 06 60 06 00 60 60 06 06 45 06 06 60 06 06 06 06 00 60 06 06 06 00 60 06 60 06 60 60 60 60 06 06 60 06 60 06 60 06 06 00 60 60 06 06 06 06 60 06 60 45 06 00 60 60 06 06 60 00 60 06 06 06 60 06 06 06 60 06 06 60 00 06 60 60 06 00 60 60 60 06 06 00 60 60 06 45 06 60 06 06 60 06 06 00 60 60 60 06 00 60 06 06 06 06 00 60 60 06 06 60 60 60 06 06 60 06 06 00 60 60 06 06 00 60 60 06 06 00 60 60 60 06 60 06 06 60 06 60 06 06 60 06 06 00 60 06 06 06 60 06 00 60 06 60 06 00 60 60 06 60 06 00 60 60 06 45 06 06 60 60 45 06 00 60 06 06 06 00 60 06 60 06 60 06 06 06 06 60 06 06 00 60 06 60 06 06 00 60 60 60 06 06 60 60 60 06 06 60 06 06 06 06 60 60 60 06 45 06 00 60 60 06 06 00 60 06 60 06 06 60 00 60 06 06 06 60 60 60 60 06 60 06 06 06 00 60 06 60 06 00 60 60 06 06 06 60 60 60 06 06 06 06 60 60 06 60 00 06 60 06 06 00 60 06 06 06 06 60 06 60 06 06 00 60 06 60 06 00 60 06 60 06 60 60 06 06 60 06 00 60 60 06 06 00 60 06 60 06 60 06 06 60 06 06 06 00 60 60 06 60 45 06 06 06 60 60 06 06 60 06 06 00 60 60 60 06 06 00 60 60 60 06 60 06 06 06 45 06 00 60 06 06 06 06 60 00 60 06 60 06 00 60 06 60 06 60 60 60 06 06 60 60 06 60 00 60 06 60 06 45 06 06 06 06 06 60 00 60 06 60 06 60 06 60 06 60 60 06 06 00 60 60 06 06 06 60 06 60 60 06 00 60 06 06 60 06 60 00 06 06 60 06 00 60 60 06 06 00 60 06 06 06 00 60 06 06 06 00 60 06 06 06 00 60 06 06 06 00 06 60 60 06 60 60 06 60 60 06 06 00 60 60 60 06 06 60 00 06 06 06 06 00 60 60 60 06 00
*/
