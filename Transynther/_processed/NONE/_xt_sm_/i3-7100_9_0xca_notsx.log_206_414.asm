.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1248a, %rbp
xor %rax, %rax
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r9
and %rbp, %rbp
lea addresses_A_ht+0x17a1e, %rsi
lea addresses_UC_ht+0x1e42, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r12, %r12
mov $36, %rcx
rep movsw
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x11c10, %rsi
lea addresses_WT_ht+0x11d8e, %rdi
sub %r10, %r10
mov $78, %rcx
rep movsb
nop
dec %r9
lea addresses_A_ht+0x1d662, %rsi
lea addresses_WC_ht+0x97d2, %rdi
xor %r10, %r10
mov $5, %rcx
rep movsb
nop
inc %rdi
lea addresses_UC_ht+0x14d02, %rsi
lea addresses_WT_ht+0x15e42, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $43, %rcx
rep movsq
nop
nop
nop
nop
sub $48581, %rsi
lea addresses_A_ht+0xd0c2, %rsi
lea addresses_UC_ht+0xa542, %rdi
cmp $15931, %r10
mov $60, %rcx
rep movsl
add $41839, %r12
lea addresses_WC_ht+0x9ec2, %rax
nop
nop
nop
nop
nop
and $29903, %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
and $0xffffffffffffffc0, %rax
movaps %xmm4, (%rax)
nop
nop
nop
nop
nop
cmp $37255, %rbp
lea addresses_A_ht+0x596e, %rcx
nop
nop
and $47739, %rbp
movw $0x6162, (%rcx)
nop
nop
and $36757, %r12
lea addresses_WT_ht+0xfe42, %r10
nop
nop
nop
and $14380, %r12
movl $0x61626364, (%r10)
nop
nop
and $20674, %r12
lea addresses_WT_ht+0x1702, %rcx
cmp %rsi, %rsi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $22013, %r9
lea addresses_normal_ht+0x98a2, %rdi
nop
nop
nop
nop
add %r9, %r9
mov (%rdi), %ecx
nop
nop
nop
nop
xor $6934, %rsi
lea addresses_normal_ht+0xe902, %rsi
lea addresses_UC_ht+0x194c2, %rdi
nop
nop
sub $49378, %r12
mov $50, %rcx
rep movsw
nop
nop
nop
nop
add %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rdx

// Store
mov $0x35b8d70000000402, %rax
nop
nop
nop
sub %rdx, %rdx
movl $0x51525354, (%rax)
nop
nop
sub %r9, %r9

// Store
lea addresses_A+0xd75a, %r9
nop
nop
and %r11, %r11
movw $0x5152, (%r9)
add $31547, %rdx

// Store
lea addresses_D+0x17ec2, %r11
nop
nop
nop
nop
nop
dec %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r11)
xor $41059, %rbx

// Faulty Load
lea addresses_D+0x17ec2, %r11
sub %r8, %r8
movb (%r11), %r14b
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'58': 206}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
