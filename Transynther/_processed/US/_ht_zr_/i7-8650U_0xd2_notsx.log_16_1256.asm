.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5366, %r10
nop
add %r8, %r8
mov (%r10), %eax
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WT_ht+0x5308, %r13
nop
nop
nop
nop
nop
xor $12602, %rdx
mov (%r13), %r9w
nop
sub $64000, %rbx
lea addresses_UC_ht+0x5de6, %r10
nop
nop
nop
add $55992, %r13
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %r10
vmovntdq %ymm7, (%r10)
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0xc6e6, %r8
nop
nop
nop
nop
sub %rax, %rax
movb (%r8), %r13b
nop
nop
nop
dec %r13
lea addresses_UC_ht+0x19456, %r8
nop
nop
nop
nop
nop
add $38898, %r10
mov $0x6162636465666768, %rbx
movq %rbx, (%r8)
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x766, %rdx
nop
nop
nop
nop
nop
xor $46039, %r10
movl $0x61626364, (%rdx)
and $29117, %r13
lea addresses_A_ht+0x1ccb6, %rsi
lea addresses_D_ht+0xc326, %rdi
nop
nop
nop
sub $38203, %r13
mov $39, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_D_ht+0x1b46, %rsi
lea addresses_UC_ht+0x15966, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $29, %rcx
rep movsq
cmp $50517, %rdi
lea addresses_UC_ht+0x6166, %rsi
nop
nop
nop
nop
xor %r13, %r13
movw $0x6162, (%rsi)
nop
nop
nop
nop
sub $7428, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0x186be, %rsi
lea addresses_UC+0x84e6, %rdi
nop
nop
and $46794, %rbx
mov $43, %rcx
rep movsb
nop
nop
xor %rbx, %rbx

// Store
mov $0x3e3c540000000466, %rdi
nop
nop
nop
nop
add %r14, %r14
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and $41115, %r14

// Faulty Load
lea addresses_US+0x19166, %r14
nop
nop
nop
nop
nop
add $7951, %rdi
vmovups (%r14), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
lea oracles, %r14
and $0xff, %r10
shlq $12, %r10
mov (%r14,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'00': 15, '46': 1}
00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
