.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa9bf, %rax
xor %rdx, %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rax)
nop
nop
nop
nop
nop
xor $13184, %r15
lea addresses_UC_ht+0x61f, %rsi
lea addresses_A_ht+0x371f, %rdi
nop
nop
inc %r14
mov $27, %rcx
rep movsw
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x17b9f, %rsi
lea addresses_WT_ht+0x5a1f, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r15
mov $73, %rcx
rep movsb
nop
nop
nop
nop
nop
add $23975, %rax
lea addresses_A_ht+0x14d1f, %r14
nop
nop
cmp $54832, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
add %rdi, %rdi
lea addresses_WC_ht+0x421f, %rsi
lea addresses_D_ht+0xa1f, %rdi
nop
nop
nop
nop
nop
sub $20785, %r15
mov $77, %rcx
rep movsq
nop
nop
nop
cmp $40496, %r10
lea addresses_UC_ht+0x10a1f, %rsi
lea addresses_UC_ht+0x19687, %rdi
clflush (%rdi)
nop
nop
cmp $35963, %rax
mov $90, %rcx
rep movsb
cmp $39886, %r15
lea addresses_A_ht+0x545f, %rsi
lea addresses_D_ht+0x1ce3f, %rdi
nop
nop
inc %rdx
mov $15, %rcx
rep movsw
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xf1f, %rsi
lea addresses_D_ht+0x13d1f, %rdi
nop
add %rdx, %rdx
mov $116, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Faulty Load
mov $0x694d200000000a1f, %rax
nop
nop
nop
nop
sub %r8, %r8
vmovups (%rax), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'00': 106, '46': 29, '48': 29}
00 46 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 48 00 48 46 48 00 48 00 00 00 00 00 00 46 00 48 00 46 00 48 46 00 00 00 48 00 00 00 00 46 46 00 00 00 46 00 48 46 00 00 00 46 00 00 46 46 48 00 00 46 48 00 48 00 48 00 00 48 48 00 46 00 00 48 00 00 48 00 00 46 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 46 48 00 48 00 00 00 46 00 00 48 00 00 00 48 48 48 00 48 00 46 00 48 46 00 00 00 46 46 00 46 48 46 00 46 00 00 00 00 00 46 48 00 00 00 00 46 00 48 00 00 00 00 46
*/
