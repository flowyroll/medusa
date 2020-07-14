.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x124df, %r12
nop
nop
nop
nop
inc %r13
mov $0x6162636465666768, %r10
movq %r10, %xmm0
movups %xmm0, (%r12)
nop
nop
nop
add %r14, %r14
lea addresses_D_ht+0x1a3df, %rsi
lea addresses_A_ht+0xba92, %rdi
dec %r13
mov $28, %rcx
rep movsb
nop
nop
nop
nop
dec %rsi
lea addresses_UC_ht+0x65ff, %rsi
lea addresses_UC_ht+0xf87f, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $96, %rcx
rep movsl
nop
nop
cmp $53823, %rcx
lea addresses_UC_ht+0x1b07f, %r10
add %r13, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r10)
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x158df, %r14
clflush (%r14)
sub %rsi, %rsi
movb $0x61, (%r14)
nop
nop
nop
nop
sub $36712, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rdx

// Faulty Load
lea addresses_US+0xe4df, %r11
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov (%r11), %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 59}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
