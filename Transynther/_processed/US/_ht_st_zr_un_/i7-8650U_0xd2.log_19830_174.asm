.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x980f, %rdx
nop
nop
nop
nop
dec %rcx
mov (%rdx), %ebx
nop
nop
nop
nop
cmp $41713, %r14
lea addresses_UC_ht+0xa4ff, %rsi
lea addresses_D_ht+0x1eff, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $114, %rcx
rep movsq
nop
nop
add %r15, %r15
lea addresses_WT_ht+0xd3ff, %rsi
lea addresses_normal_ht+0x148ff, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $9386, %rbx
mov $7, %rcx
rep movsb
and %rdi, %rdi
lea addresses_UC_ht+0x1507f, %rbx
clflush (%rbx)
nop
nop
nop
nop
sub %rsi, %rsi
movl $0x61626364, (%rbx)
nop
sub %rdx, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rcx

// Faulty Load
lea addresses_US+0x1f8ff, %r12
nop
nop
cmp $39682, %rcx
mov (%r12), %r14w
lea oracles, %r12
and $0xff, %r14
shlq $12, %r14
mov (%r12,%r14,1), %r14
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'00': 8446, '30': 6578, 'ff': 3227, '47': 1477, '49': 16, 'ba': 1, '52': 41, '3e': 1, '02': 1, '18': 2, '76': 1, '2a': 2, '80': 7, '22': 1, '10': 1, 'a0': 2, 'dc': 1, '44': 4, '38': 2, '14': 2, 'a2': 1, 'c6': 1, '5e': 1, '06': 1, 'f8': 1, '3c': 1, '2e': 1, '48': 1, 'ea': 1, '2c': 2, '92': 1, '8f': 1, 'e6': 2, 'd6': 1, '56': 1}
00 30 30 ff 47 ff 00 00 00 00 00 00 47 00 00 ff 00 00 30 00 00 47 00 ff 30 30 ff 47 30 00 00 00 30 00 ff 00 30 30 ff 00 ff 30 30 ff 30 ff 30 30 ff ff 30 30 00 00 ff 00 00 ff 47 00 ff ff 00 47 00 ff 00 30 00 30 00 00 30 ff 00 ff ff ff 00 00 30 00 30 00 30 00 30 00 30 ff 00 00 30 00 00 00 ff 30 00 00 ff ff 30 00 00 00 00 30 ff 00 30 30 ff ff ff ff ff 30 00 ff 47 00 ff 30 00 00 30 00 00 00 00 00 30 30 30 00 00 30 30 00 00 47 ff 47 ff 00 ff 47 00 00 47 ff 30 ff ff 00 30 ff ff 30 00 30 30 30 00 30 ff 30 30 00 30 00 ff 47 00 00 00 00 00 00 30 00 30 00 00 30 00 47 00 00 ff 30 00 00 ff 00 30 30 00 00 00 00 30 00 30 30 30 ff 30 00 00 30 30 30 00 47 00 00 00 ff ff ff ff 30 00 ff 30 30 30 30 00 30 30 30 00 00 00 47 30 00 00 30 30 00 47 30 00 00 00 47 30 00 00 00 00 30 ff ff 30 00 30 ff 00 30 ff 30 30 30 00 47 00 00 00 ff 00 30 30 00 00 47 47 00 00 30 ff 00 00 00 30 00 00 00 00 00 30 30 30 30 00 00 47 30 ff 30 00 ff 00 30 30 ff 30 00 00 00 00 ff ff 00 00 00 00 30 00 30 00 00 30 47 00 30 00 00 30 ff 00 ff 00 30 30 00 00 30 47 00 30 30 30 00 ff ff 30 47 30 47 ff ff 47 00 30 00 00 30 00 00 30 30 30 49 30 00 30 ff 00 47 ff 00 30 00 00 00 30 ff 30 30 ff ff 00 00 30 00 00 00 00 00 00 00 30 47 ff 00 ff 00 30 00 30 00 30 30 00 30 47 ff 00 ff 30 00 00 30 30 30 47 ff ff 30 30 00 00 00 47 30 00 ff 30 30 00 30 00 00 ff ff 00 00 30 30 00 30 00 00 30 00 47 00 00 30 ff ff ff 30 30 00 30 00 30 30 30 ff 30 00 00 00 00 30 00 00 00 ff 47 30 30 00 30 00 00 30 00 30 00 00 00 ff 30 30 47 47 30 47 00 00 00 30 30 00 00 ff 30 00 00 30 00 30 47 30 00 00 00 00 00 30 00 00 00 00 30 00 00 00 30 30 00 30 30 30 00 ff 00 ff 00 ff 30 30 00 00 30 00 00 ff 30 00 47 ff 00 30 00 ff 30 30 00 ff 00 30 00 30 ff 30 47 47 00 00 30 00 00 00 00 00 47 ff ba 30 47 30 ff 00 00 30 00 00 52 47 30 00 00 30 00 00 30 30 30 ff 30 30 30 30 00 30 30 30 00 00 00 30 47 30 00 30 00 30 00 30 00 00 30 00 47 00 47 30 00 00 00 00 00 00 00 30 00 30 00 00 30 ff 00 30 00 00 ff ff 30 00 00 ff 00 00 47 30 30 30 00 ff 30 ff ff ff 30 30 30 30 47 00 30 ff ff 30 00 00 00 00 ff 00 00 ff 30 ff 30 47 00 30 ff 00 30 30 ff ff 30 00 ff 30 30 00 00 47 ff 30 00 ff 00 00 00 00 47 30 30 ff 00 ff 47 00 30 30 ff ff 00 30 00 ff 00 30 00 47 00 00 47 00 47 ff ff 00 47 30 00 30 00 30 30 30 ff 30 47 ff ff 00 ff 00 30 ff 00 30 30 ff 30 30 ff 30 47 00 00 00 30 00 ff 30 30 ff ff ff 00 ff 47 47 00 00 00 00 00 30 00 30 00 00 00 30 00 30 00 47 47 ff 00 00 30 ff 00 00 00 00 ff 00 47 00 ff ff ff 30 00 00 30 ff 47 30 00 ff 30 00 47 00 30 00 00 00 00 30 ff 00 30 30 00 00 30 00 00 00 47 30 00 30 00 00 30 00 47 30 00 00 00 30 ff 00 00 00 30 00 00 00 30 30 47 30 30 ff 00 00 00 30 ff 30 00 00 30 00 00 00 30 47 30 00 30 ff 00 00 30 00 00 00 00 30 ff ff 30 ff 00 00 30 30 30 30 00 00 30 00 30 30 00 30 47 ff 30 00 30 00 47 30 30 00 00 30 00 00 30 ff 00 00 00 30 30 ff 30 00 47 00 30 00 00 ff 00 30 ff 30 ff 00 00 ff 30 30 00 00 00 30 ff 00 47 ff 30 00 00 00 30 ff 30 30 30 30 ff 30 00 ff 47 30 ff 30 30 00 00 30 00 30 ff ff 30 47 ff ff 30 30 00 00 30 30 00 30 00 00
*/
