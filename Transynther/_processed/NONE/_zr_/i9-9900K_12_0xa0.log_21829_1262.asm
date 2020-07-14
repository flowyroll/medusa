.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2ec1, %rsi
lea addresses_WC_ht+0xc2e5, %rdi
clflush (%rsi)
nop
nop
add $5391, %r10
mov $123, %rcx
rep movsw
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x295d, %r12
nop
inc %r9
mov (%r12), %esi
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x17efd, %rsi
lea addresses_UC_ht+0x1241d, %rdi
and %r13, %r13
mov $44, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_WT_ht+0x904d, %rsi
lea addresses_D_ht+0x17ddd, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $8, %rcx
rep movsq
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0xfa9d, %r12
and %r9, %r9
vmovups (%r12), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
and $8160, %r13
lea addresses_normal_ht+0x101bd, %r13
nop
add $6470, %rdi
movb $0x61, (%r13)
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x5d, %rsi
nop
nop
nop
inc %r13
mov (%rsi), %r10d
nop
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x1e6dd, %rax
nop
nop
and %r12, %r12
mov $0x6162636465666768, %r13
movq %r13, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x432d, %r13
nop
nop
nop
xor $39495, %rsi
movw $0x6162, (%r13)
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WC_ht+0xbd5d, %rax
nop
nop
add %rdi, %rdi
mov (%rax), %r9w
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x19de1, %rcx
nop
nop
nop
nop
nop
dec %r13
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
add %r13, %r13
lea addresses_A_ht+0x10815, %rax
nop
nop
nop
nop
and $16525, %r10
mov (%rax), %si
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0xb15d, %r9
nop
nop
nop
nop
nop
cmp $54464, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
sub $12246, %rsi
lea addresses_WC_ht+0x1471d, %r13
clflush (%r13)
cmp $31417, %rax
mov (%r13), %rsi
nop
nop
nop
inc %r12
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x13d5d, %rbp
clflush (%rbp)
add %rbx, %rbx
movb $0x51, (%rbp)
and $54026, %r14

// Load
mov $0x9126d0000000b41, %r14
nop
nop
nop
nop
sub $16802, %rcx
mov (%r14), %r8
nop
nop
add $58556, %rbx

// Store
lea addresses_PSE+0x1c0dd, %r8
nop
nop
nop
add %r13, %r13
movb $0x51, (%r8)
cmp $44387, %r14

// Store
lea addresses_normal+0xfc35, %rax
nop
nop
sub $43144, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rax)
nop
nop
nop
nop
nop
xor %r14, %r14

// Store
mov $0x4593fa00000003bd, %rcx
nop
nop
dec %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
dec %r13

// Store
lea addresses_A+0x318b, %rbx
nop
nop
xor $48530, %r13
movl $0x51525354, (%rbx)
nop
add %r14, %r14

// Store
lea addresses_D+0x19a51, %r8
nop
sub %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
nop
cmp %r8, %r8

// Faulty Load
lea addresses_WC+0x1e55d, %rcx
nop
nop
nop
nop
cmp %r14, %r14
mov (%rcx), %ax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
