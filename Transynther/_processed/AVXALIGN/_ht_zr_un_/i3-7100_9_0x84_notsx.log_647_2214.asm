.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5fa1, %rsi
lea addresses_WC_ht+0x18021, %rdi
nop
nop
nop
cmp $55174, %r9
mov $115, %rcx
rep movsq
nop
cmp %r9, %r9
lea addresses_D_ht+0x17021, %rsi
lea addresses_WT_ht+0x187f9, %rdi
nop
nop
sub $59049, %rax
mov $115, %rcx
rep movsl
nop
nop
nop
nop
xor $58052, %rsi
lea addresses_WT_ht+0x1afe1, %rsi
lea addresses_UC_ht+0xe2a8, %rdi
nop
nop
sub $2958, %r13
mov $11, %rcx
rep movsl
nop
nop
nop
add $17210, %r9
lea addresses_normal_ht+0x1175d, %r9
nop
and $4564, %r8
and $0xffffffffffffffc0, %r9
movntdqa (%r9), %xmm7
vpextrq $1, %xmm7, %r13
nop
nop
nop
add $31491, %rdi
lea addresses_D_ht+0x1cb11, %r8
nop
xor $23205, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r8)
nop
nop
and $828, %rax
lea addresses_A_ht+0xafa1, %rsi
lea addresses_A_ht+0x1a021, %rdi
nop
nop
nop
cmp $55855, %r10
mov $127, %rcx
rep movsl
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x15e21, %rdi
nop
nop
nop
nop
nop
add %rax, %rax
movb (%rdi), %cl
nop
nop
and $37073, %rax
pop %rsi
pop %rdi
pop %rcx
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
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0x14021, %rsi
nop
nop
cmp %rax, %rax
movl $0x51525354, (%rsi)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_normal+0xb821, %r10
nop
nop
nop
xor $4252, %rax
movw $0x5152, (%r10)
xor %rsi, %rsi

// Store
mov $0x560c430000000421, %rsi
nop
nop
nop
nop
nop
dec %rbx
movb $0x51, (%rsi)
nop
nop
inc %rsi

// Faulty Load
lea addresses_WT+0x4021, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx
movaps (%rsi), %xmm5
vpextrq $1, %xmm5, %rdi
lea oracles, %rdx
and $0xff, %rdi
shlq $12, %rdi
mov (%rdx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'46': 84, '00': 166, '45': 395, '08': 2}
00 45 45 45 45 00 45 45 46 45 45 45 45 45 00 00 46 46 46 45 00 45 45 00 45 45 45 46 00 46 00 46 45 45 00 46 46 45 45 45 45 45 00 45 45 45 45 45 00 46 45 46 00 45 45 00 46 00 46 00 45 45 00 45 46 45 45 00 00 45 45 45 45 45 45 00 45 45 00 46 45 00 45 45 45 45 45 46 00 45 45 46 00 46 45 45 00 45 00 45 00 00 46 45 46 45 00 46 00 45 45 45 45 46 00 46 45 45 45 00 00 45 00 45 00 46 00 45 45 45 45 45 45 45 45 45 45 45 45 00 46 45 00 45 45 00 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 46 45 45 45 45 45 46 00 45 46 45 46 45 45 46 45 00 45 00 46 46 46 00 45 00 45 00 46 00 45 45 45 45 45 45 46 45 46 45 45 00 00 45 45 45 00 45 45 46 45 00 45 46 45 45 45 45 45 00 45 45 45 45 45 00 45 00 46 46 00 00 45 00 00 00 00 00 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 08 45 00 45 45 00 46 00 45 45 45 45 45 45 45 45 45 45 00 46 00 45 00 00 46 45 45 45 45 46 46 00 00 00 45 00 00 00 00 00 45 45 45 45 45 00 45 45 00 46 45 00 00 00 45 46 45 00 46 45 00 45 46 00 46 00 45 46 45 45 45 45 45 45 45 46 45 45 45 45 00 45 46 45 45 00 00 45 00 00 00 00 45 45 45 45 00 45 45 45 45 00 45 45 00 46 00 46 00 46 00 00 45 45 45 45 46 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 46 45 45 00 00 45 45 00 46 45 00 45 46 45 46 45 00 00 45 00 45 45 00 45 45 45 00 00 00 45 00 45 45 45 00 45 45 46 45 46 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 00 46 45 00 00 45 45 45 45 45 00 45 45 00 45 45 00 00 00 45 46 45 45 46 45 45 45 00 46 45 45 00 45 45 45 46 45 45 00 45 45 00 45 45 00 46 46 45 45 00 46 45 45 45 45 45 00 45 45 45 45 46 46 46 00 45 45 00 45 45 45 45 45 00 00 00 45 00 45 45 45 45 45 46 45 45 00 00 00 45 46 45 46 45 45 45 45 45 00 45 00 45 00 00 45 45 45 45 45 45 45 08 45 45 45 46 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 46 00 46 45 45 45 46 45 46 00 45 45 00 45 45 45 46 45 45 00 45 45 45 45 45 46 45 45 45 00 45 45 45 45 00 00 45 45 45 00 45 45 00 45 00 45 45 00 00 00
*/
