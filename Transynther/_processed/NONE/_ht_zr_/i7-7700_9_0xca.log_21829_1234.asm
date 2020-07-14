.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x11bbc, %rsi
lea addresses_normal_ht+0x195c, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r15, %r15
mov $106, %rcx
rep movsw
and $50985, %r14
lea addresses_UC_ht+0x597c, %rsi
lea addresses_normal_ht+0xc588, %rdi
nop
nop
cmp $170, %rax
mov $126, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x1a58c, %rax
nop
nop
nop
nop
nop
and $1806, %r10
movups (%rax), %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
xor $12082, %rdi
lea addresses_UC_ht+0x97bc, %rsi
nop
nop
nop
inc %r15
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
sub $13808, %rax
lea addresses_A_ht+0x1ab2c, %rcx
inc %r15
movups (%rcx), %xmm7
vpextrq $1, %xmm7, %rdi
xor $39901, %r10
lea addresses_UC_ht+0x63ac, %rsi
lea addresses_WC_ht+0x85bc, %rdi
nop
nop
nop
nop
nop
sub %r9, %r9
mov $77, %rcx
rep movsq
nop
sub %r10, %r10
lea addresses_A_ht+0x57bc, %rdi
nop
nop
xor %r15, %r15
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x91ba, %r10
nop
nop
nop
dec %r9
movl $0x61626364, (%r10)
nop
cmp $51832, %r14
lea addresses_D_ht+0x16bbc, %r9
nop
nop
add %r15, %r15
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1e7bc, %rsi
lea addresses_WT_ht+0x193bc, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $7, %rcx
rep movsl
nop
cmp $62466, %r10
lea addresses_D_ht+0x19dcc, %rsi
lea addresses_WC_ht+0xcbf6, %rdi
nop
nop
add %r9, %r9
mov $17, %rcx
rep movsb
nop
sub $64052, %r10
lea addresses_D_ht+0x9b3c, %rcx
nop
inc %rsi
movw $0x6162, (%rcx)
nop
nop
inc %r14
lea addresses_D_ht+0xbc7c, %rsi
cmp %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
nop
sub $29634, %r15
lea addresses_WT_ht+0x1bfbc, %rsi
lea addresses_A_ht+0x133e4, %rdi
nop
nop
nop
add %r10, %r10
mov $51, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x5afc, %rsi
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%rsi)
nop
and $49795, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Load
mov $0x34746f000000091c, %rbp
nop
and %rcx, %rcx
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
nop
add %rcx, %rcx

// Faulty Load
lea addresses_A+0x1abbc, %rcx
xor $51528, %rdx
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %rbp
and $0xff, %r15
shlq $12, %r15
mov (%rbp,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'46': 976, '45': 201, '48': 91, '00': 20557, '49': 4}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 45 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 48 00 00 00 00 00 00 00 00
*/
