.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ab30, %r9
nop
nop
nop
nop
add %r12, %r12
movb $0x61, (%r9)
nop
nop
nop
xor $30845, %rsi
lea addresses_UC_ht+0x11c73, %r8
nop
nop
add $26687, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
and %r9, %r9
lea addresses_A_ht+0xbad3, %r9
nop
nop
nop
sub $33010, %rcx
vmovups (%r9), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbx
nop
nop
cmp $53799, %r12
lea addresses_WT_ht+0x1d46b, %rbx
nop
nop
nop
nop
and $22093, %rsi
movups (%rbx), %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0xa253, %rsi
lea addresses_D_ht+0x3a53, %rdi
nop
inc %rdx
mov $80, %rcx
rep movsw
nop
nop
nop
and $46514, %rbx
lea addresses_WT_ht+0x137d3, %rsi
lea addresses_normal_ht+0x18653, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $7692, %rdx
mov $94, %rcx
rep movsb
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x2a9b, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov (%rdx), %esi
nop
add $35342, %rbx
lea addresses_WT_ht+0x177d3, %rsi
xor $51032, %rcx
mov $0x6162636465666768, %r12
movq %r12, %xmm0
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm0, (%rsi)
nop
nop
cmp $9843, %rcx
lea addresses_A_ht+0xa053, %rdx
nop
nop
nop
xor $8051, %r9
mov (%rdx), %r8
nop
xor $53943, %rdi
lea addresses_WC_ht+0x1da53, %rsi
lea addresses_D_ht+0x1c1a3, %rdi
nop
nop
nop
nop
nop
add $43859, %rdx
mov $116, %rcx
rep movsw
add $11508, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rax
push %rbp
push %rcx

// Store
lea addresses_D+0x17af3, %r12
nop
inc %rcx
movw $0x5152, (%r12)
nop
nop
nop
and $6160, %r8

// Store
lea addresses_A+0x2193, %rbp
nop
nop
xor $24827, %r15
movw $0x5152, (%rbp)
nop
nop
nop
xor $755, %rbp

// Store
lea addresses_RW+0xea73, %r15
nop
nop
nop
nop
add %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r15)
nop
nop
nop
xor %rbp, %rbp

// Store
mov $0x6fb63b0000000a53, %r8
nop
nop
nop
nop
xor %rbp, %rbp
movb $0x51, (%r8)
nop
nop
nop
xor $8817, %r15

// Store
mov $0x5465dc00000004a9, %rbp
nop
nop
sub %r10, %r10
movb $0x51, (%rbp)
nop
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_RW+0x1453, %rbp
add %rcx, %rcx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rbp)
nop
cmp %r8, %r8

// Store
lea addresses_A+0x9253, %rax
nop
and $37105, %r8
mov $0x5152535455565758, %r12
movq %r12, %xmm6
movups %xmm6, (%rax)
dec %r12

// Faulty Load
mov $0x6fb63b0000000a53, %rbp
inc %rcx
vmovntdqa (%rbp), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %r8
and $0xff, %r15
shlq $12, %r15
mov (%r8,%r15,1), %r15
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_NC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'51': 21717, '00': 112}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
