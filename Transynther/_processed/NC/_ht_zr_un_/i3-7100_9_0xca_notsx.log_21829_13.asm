.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x40e, %r13
add $35756, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x4c2e, %rsi
nop
nop
nop
and %r12, %r12
movb (%rsi), %r10b
xor $57000, %r13
lea addresses_A_ht+0xb68e, %r13
nop
and %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0xc8de, %r10
nop
sub $46777, %rsi
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x1340e, %rsi
nop
nop
add %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub $27377, %r12
lea addresses_WT_ht+0x117d8, %rcx
nop
xor %rdi, %rdi
mov (%rcx), %r13w
nop
nop
nop
nop
nop
sub $7800, %r10
lea addresses_normal_ht+0x81ec, %rsi
add $36891, %r12
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x240e, %rsi
lea addresses_WC_ht+0xd40e, %rdi
clflush (%rsi)
nop
nop
nop
inc %r13
mov $113, %rcx
rep movsw
nop
nop
nop
nop
and $35173, %r14
lea addresses_UC_ht+0x1440e, %rsi
lea addresses_WC_ht+0xc3c, %rdi
nop
nop
and %r14, %r14
mov $58, %rcx
rep movsl
nop
inc %rcx
lea addresses_WC_ht+0x1070e, %rdi
clflush (%rdi)
add $49687, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
nop
and $59469, %rdi
lea addresses_normal_ht+0xe40e, %r14
nop
nop
and $20830, %rdi
movb $0x61, (%r14)
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xdfce, %rsi
clflush (%rsi)
and %rdi, %rdi
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r10
cmp $17194, %r14
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x140e, %rcx
nop
nop
xor %r13, %r13
movw $0x5152, (%rcx)
nop
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x50e, %rbp
nop
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
and $21535, %r15

// Load
lea addresses_D+0xa70e, %rbp
clflush (%rbp)
nop
inc %rdx
mov (%rbp), %ecx
nop
xor %rdx, %rdx

// Load
lea addresses_normal+0x1b20e, %r15
add $39748, %rsi
movb (%r15), %r13b
nop
nop
nop
inc %rax

// Store
lea addresses_WT+0x15c8, %r13
nop
nop
nop
xor $5482, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
nop
cmp $1263, %rbp

// Faulty Load
mov $0x449412000000040e, %rsi
nop
nop
nop
nop
nop
xor %r15, %r15
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'45': 11, '0a': 1, '00': 11904, '48': 9910, '46': 1, '2a': 1, 'df': 1}
00 48 00 48 00 00 48 00 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 00 00 00 00 48 00 00 48 00 00 48 00 00 48 48 00 00 00 48 00 00 00 48 00 48 48 00 48 00 00 48 00 48 48 48 48 48 00 00 48 00 48 00 00 00 48 48 48 00 00 48 48 00 48 48 00 00 00 00 48 00 48 48 2a 48 00 00 48 00 48 48 48 48 00 00 48 48 48 00 00 00 00 48 00 48 48 48 00 48 00 00 48 00 00 00 48 48 48 48 00 00 48 48 00 00 48 00 48 48 00 48 00 00 00 00 00 00 00 48 48 48 00 48 00 48 00 00 00 00 48 00 48 48 00 48 00 00 00 00 48 00 00 48 48 00 00 00 48 00 00 48 00 00 00 48 48 00 00 48 00 00 48 48 00 00 00 48 48 00 00 48 00 00 00 48 00 00 48 00 48 48 00 00 00 00 48 00 00 48 00 00 00 48 00 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 48 00 48 48 48 00 48 48 00 00 48 48 00 48 48 00 48 48 48 00 48 48 00 48 48 00 00 00 48 48 48 48 48 00 00 48 00 48 48 48 00 48 00 00 00 00 00 48 00 00 00 00 48 48 00 00 48 00 00 00 00 48 00 48 48 00 00 00 00 48 00 48 00 48 48 48 48 00 00 00 48 48 00 00 00 00 00 48 00 48 48 00 00 00 00 48 00 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 48 48 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 48 48 48 00 48 48 00 00 00 48 00 00 00 48 00 48 00 00 48 00 00 48 48 48 48 48 48 48 00 00 48 48 48 00 48 00 00 00 00 00 48 48 00 48 48 48 00 48 48 00 48 00 48 00 00 48 00 00 00 00 00 00 48 00 00 00 00 48 48 00 48 00 00 00 48 48 48 48 00 48 00 48 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 00 00 00 48 00 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 00 48 48 48 48 00 48 00 48 48 48 48 48 00 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 48 00 48 48 00 00 00 48 48 00 00 00 00 00 00 48 48 48 48 00 48 00 00 48 00 00 00 00 48 48 00 48 00 00 00 48 48 00 00 00 48 48 48 00 00 00 48 00 00 48 00 00 00 48 48 48 00 00 48 00 48 00 00 48 00 48 00 48 48 48 00 48 00 48 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 48 48 48 00 48 00 48 00 48 00 48 00 00 00 48 00 00 48 00 48 00 48 48 00 00 00 00 48 00 00 48 48 00 48 00 48 48 48 48 00 48 00 00 00 48 00 00 48 48 00 48 48 48 48 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 48 48 00 00 00 48 00 48 00 48 00 00 48 00 48 00 00 00 48 00 00 00 48 48 48 00 00 00 00 00 48 48 00 00 00 48 48 00 00 48 48 48 00 00 48 00 48 00 48 00 00 00 48 00 48 00 48 48 00 00 48 48 48 48 00 48 00 48 48 00 48 00 00 48 48 00 00 48 48 00 00 00 48 00 48 48 00 48 00 48 48 00 00 00 00 48 00 48 48 48 48 00 00 48 00 48 48 00 48 00 48 00 00 00 48 48 48 00 48 48 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 48 48 00 00 48 48 48 00 00 48 00 00 48 00 48 48 48 00 00 00 00 48 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 48 48 00 00 00 48 48 48 00 00 48 00 48 00 00 00 48 00 00 48 48 48 48 48 00 00 48 00 00 48 48 00 00 48 00 00 00 00 48 48 00 48 00 48 00 48 48 00 00 00 48 00 00 00 48 48 48 00 48 48 48 00 00 48 00 00 48 00 00 00 48 48 00 00 00 48 00 00 48 48 48 00 00 00 00 00 00 48 48 00 00 48 00 00 00 00 00 00 00 48 00 48 48 48 00 48 48 48 00 00 48
*/
