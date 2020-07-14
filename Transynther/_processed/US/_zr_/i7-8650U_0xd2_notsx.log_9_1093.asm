.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x167e9, %rdx
nop
nop
inc %r14
movw $0x6162, (%rdx)
nop
add %rdx, %rdx
lea addresses_D_ht+0xd0fc, %rsi
lea addresses_WC_ht+0x64fb, %rdi
nop
nop
nop
dec %r13
mov $28, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0x140a5, %rsi
lea addresses_A_ht+0x13cfb, %rdi
dec %r8
mov $7, %rcx
rep movsl
nop
xor $30398, %r14
lea addresses_normal_ht+0x1487b, %rdi
nop
nop
nop
nop
sub %r14, %r14
movl $0x61626364, (%rdi)
nop
nop
nop
sub $41056, %rcx
lea addresses_D_ht+0x83fb, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
movups (%r13), %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
and $57426, %r14
lea addresses_WT_ht+0x1c53b, %r8
xor %r13, %r13
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0xa007, %rcx
nop
dec %r8
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r13
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x184fb, %rsi
lea addresses_WC_ht+0x2afb, %rdi
nop
nop
cmp $39894, %r13
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xe45b, %r13
nop
nop
xor %rdi, %rdi
movb (%r13), %dl
nop
nop
inc %rdx
lea addresses_WC_ht+0x10cfb, %rsi
lea addresses_normal_ht+0x194fb, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $71, %rcx
rep movsq
mfence
lea addresses_WC_ht+0xc9d1, %rsi
lea addresses_WT_ht+0x837b, %rdi
nop
inc %r13
mov $21, %rcx
rep movsq
cmp %rdi, %rdi
lea addresses_WC_ht+0x141fb, %rbx
nop
add %r14, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rbx)
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Faulty Load
lea addresses_US+0xdcfb, %r9
nop
nop
add $12215, %r10
mov (%r9), %rsi
lea oracles, %r8
and $0xff, %rsi
shlq $12, %rsi
mov (%r8,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
