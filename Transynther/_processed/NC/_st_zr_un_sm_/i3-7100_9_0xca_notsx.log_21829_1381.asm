.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3209, %r9
nop
cmp %r14, %r14
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
add $670, %r11
lea addresses_A_ht+0x93ec, %r13
nop
nop
nop
nop
xor %r14, %r14
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%r13)
cmp $18853, %r9
lea addresses_WC_ht+0xb3ec, %r14
and $35098, %rbx
vmovups (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r9
nop
nop
inc %rax
lea addresses_UC_ht+0xc4ec, %rbx
nop
nop
nop
nop
add $54422, %r14
mov (%rbx), %r11
nop
add %rbx, %rbx
lea addresses_WT_ht+0x10bf4, %rax
nop
nop
nop
nop
and %r9, %r9
and $0xffffffffffffffc0, %rax
vmovaps (%rax), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdx
nop
xor %rbx, %rbx
lea addresses_D_ht+0x13ec, %rbx
nop
nop
xor $65451, %rax
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
vmovups %ymm6, (%rbx)
add $27825, %rax
lea addresses_WT_ht+0x14fec, %rsi
lea addresses_WC_ht+0x1df80, %rdi
xor %r14, %r14
mov $79, %rcx
rep movsq
nop
nop
nop
nop
nop
add $14238, %rdx
lea addresses_UC_ht+0x122ec, %r14
clflush (%r14)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x133ec, %r11
nop
nop
sub $33311, %rsi
movl $0x61626364, (%r11)
nop
nop
nop
sub $1899, %r13
lea addresses_normal_ht+0x1ac6c, %rsi
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %r9
movq %r9, %xmm3
vmovups %ymm3, (%rsi)
and $17299, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rax
push %rdi
push %rdx

// Store
lea addresses_WC+0x1fbec, %rax
cmp %r12, %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%rax)
nop
nop
nop
nop
and $57086, %rax

// Store
lea addresses_WC+0xbc74, %rdi
nop
nop
nop
nop
sub $20015, %r8
movb $0x51, (%rdi)
nop
nop
nop
nop
nop
cmp $13941, %r13

// Store
mov $0xfdf440000000bec, %rdx
nop
nop
nop
nop
xor $28396, %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rdx)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
mov $0xfdf440000000bec, %r13
nop
nop
nop
dec %rdi
movb (%r13), %r14b
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdx
pop %rdi
pop %rax
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'58': 19073, '00': 134, 'b0': 1, '70': 2621}
58 58 58 58 58 58 70 58 58 58 58 70 58 00 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 70 58 58 58 58 58 58 70 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 70 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 70 70 70 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 70 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 70 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 70 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 58 58 58 58 58 58 70 58 58 58 70 70 58 58 58 58 58 58 58 58 58 70 70 58 58 58 70 58 58 58 58 58 58 58 70 58 58 58 70 58 70 58 58 58 58 58 58 58 58 70 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 70 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 70 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 70 58 70 70 58 58 58 70 58 58 70 58 58 58 58 58 58 58 58 58 58 70 70 58 58 70 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 70 58 70 58 58 70 58 58 58 58 58 58 58 58 58 58
*/
