.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x13e7f, %rsi
nop
cmp $24693, %rcx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r15
sub $3996, %rdi
lea addresses_D_ht+0x633, %r15
nop
dec %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r15)
nop
nop
nop
nop
nop
add $12829, %rax
lea addresses_WC_ht+0x16233, %rdi
sub %rsi, %rsi
movb (%rdi), %cl
nop
nop
nop
nop
nop
add $39899, %rax
lea addresses_normal_ht+0x3551, %rsi
nop
add %r8, %r8
mov (%rsi), %rbp
nop
nop
sub $55433, %rcx
lea addresses_D_ht+0x773, %rsi
lea addresses_WC_ht+0x21bc, %rdi
nop
nop
add %rbx, %rbx
mov $33, %rcx
rep movsl
nop
nop
nop
nop
cmp $22348, %rax
lea addresses_A_ht+0x9d0b, %rdi
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdi)
and $6610, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r9
push %rax
push %rcx

// Store
mov $0xed9, %r12
nop
nop
sub %r9, %r9
movb $0x51, (%r12)
nop
nop
nop
nop
nop
xor %r13, %r13

// Store
mov $0x7264f0000000e33, %rax
nop
and %r14, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movntdq %xmm1, (%rax)
nop
and %rax, %rax

// Store
mov $0x7264f0000000e33, %rax
nop
cmp %r12, %r12
movb $0x51, (%rax)
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_US+0x17033, %rax
nop
dec %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rax)
nop
nop
nop
and $36388, %r9

// Store
mov $0x7264f0000000e33, %rax
nop
nop
nop
cmp $49050, %r14
movw $0x5152, (%rax)
nop
xor %r12, %r12

// Store
lea addresses_WC+0x10c33, %r13
nop
nop
nop
nop
nop
and %r9, %r9
movl $0x51525354, (%r13)

// Exception!!!
mov (0), %r10
nop
nop
nop
cmp $1259, %r9

// Faulty Load
mov $0x7264f0000000e33, %r12
nop
nop
and $62295, %r9
movaps (%r12), %xmm1
vpextrq $0, %xmm1, %r10
lea oracles, %r12
and $0xff, %r10
shlq $12, %r10
mov (%r12,%r10,1), %r10
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': True, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'00': 2600, '52': 19229}
00 00 52 52 00 52 00 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 00 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 52 52 00 52 52 52 00 52 52 00 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 00 00 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 00 00 52 52 52 52 52 52 00 00 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 00 52 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 00 52 52 00 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 00 00 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 00 52 00 52 52 52 00 00 00 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 00 00 52 52 00 00 52 52 52 00 52 52 52 52 00 52 00 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 00 00 52 52 52 52 52 52 00 52 00 52 00 00 52 52 00 52 52 52 00 00 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 00 52 52 00 52 52 52 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 00 52 52 52 52 52 52 00 52 52 00 52 52 52 52 00 52 00 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 00 52 52 00 52 52 52 52 00 00 52 00 52 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 00 52 52 52
*/
