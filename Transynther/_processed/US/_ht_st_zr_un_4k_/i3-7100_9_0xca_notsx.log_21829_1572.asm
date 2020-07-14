.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xbba3, %r8
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r8)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x8893, %rax
nop
nop
nop
nop
xor $6644, %rcx
and $0xffffffffffffffc0, %rax
movaps (%rax), %xmm0
vpextrq $0, %xmm0, %r13
nop
nop
nop
nop
xor %rdx, %rdx
lea addresses_UC_ht+0x30e7, %rax
nop
nop
nop
inc %r13
movw $0x6162, (%rax)
nop
nop
nop
cmp $58333, %r13
lea addresses_D_ht+0x19fb3, %rbp
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rbp)
cmp $2537, %r15
lea addresses_normal_ht+0x13349, %rsi
lea addresses_WT_ht+0x1ba53, %rdi
nop
nop
nop
nop
add $10167, %rax
mov $127, %rcx
rep movsb
nop
sub $55550, %r13
lea addresses_A_ht+0xb8cf, %rsi
lea addresses_WC_ht+0x3d73, %rdi
nop
nop
add $56258, %r8
mov $55, %rcx
rep movsb
nop
nop
xor $29364, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0x8383, %rcx
clflush (%rcx)
xor $30228, %rsi
mov $0x5152535455565758, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rcx)
cmp %r14, %r14

// Store
lea addresses_D+0x18e93, %rdi
nop
and %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
sub $26804, %rsi

// REPMOV
mov $0xa93, %rsi
lea addresses_US+0x1e93, %rdi
nop
nop
nop
nop
nop
sub $40372, %rdx
mov $9, %rcx
rep movsw
nop
nop
sub $55303, %rdi

// Store
lea addresses_UC+0x193c9, %rdx
nop
nop
nop
nop
sub $24879, %r15
movw $0x5152, (%rdx)
nop
nop
nop
sub $6262, %r15

// Store
lea addresses_UC+0x1a7e3, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
inc %rcx

// Store
lea addresses_RW+0x1d389, %r15
nop
nop
nop
and $33518, %r14
movb $0x51, (%r15)
add $13463, %r14

// Faulty Load
lea addresses_US+0x1e93, %rdi
nop
nop
and $45340, %r10
mov (%rdi), %r14d
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_P', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_US', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': True, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'45': 1, '6d': 4, '01': 1, '90': 1, '74': 1, 'd0': 3, '58': 2, '70': 14, '5f': 3, '1a': 2, '44': 1, 'a7': 3, '55': 1, 'bc': 1, '08': 1, '00': 21779, '2c': 1, '60': 1, '86': 1, 'fa': 1, '79': 1, '0a': 2, 'd2': 1, '5c': 1, '88': 1, '59': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
