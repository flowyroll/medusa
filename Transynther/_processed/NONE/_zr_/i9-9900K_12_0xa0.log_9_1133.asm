.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rdx
lea addresses_A_ht+0x10b96, %rax
clflush (%rax)
nop
nop
mfence
mov $0x6162636465666768, %r14
movq %r14, (%rax)
nop
nop
nop
nop
dec %r13
lea addresses_normal_ht+0x12e6e, %r10
nop
nop
nop
cmp $4656, %r12
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
movups %xmm6, (%r10)
nop
nop
nop
nop
nop
sub $33806, %r14
lea addresses_A_ht+0x1cd96, %r10
clflush (%r10)
and %rax, %rax
movw $0x6162, (%r10)
nop
cmp %r13, %r13
lea addresses_A_ht+0x19f6, %rbp
add $5065, %r14
mov (%rbp), %r13d
nop
and $15912, %r12
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x13d8a, %r14
nop
nop
nop
cmp $9794, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x7996, %r13
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r13)
nop
xor $4515, %r11

// Store
lea addresses_D+0x1796, %r11
nop
nop
add $17629, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r11)
nop
add $22544, %rsi

// Faulty Load
lea addresses_WC+0x4d96, %r8
nop
nop
and %r11, %r11
vmovups (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_D', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
