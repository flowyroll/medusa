.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xd04f, %rsi
nop
cmp %rbp, %rbp
mov (%rsi), %r10w
and $50996, %r8
lea addresses_UC_ht+0xef0f, %rdx
nop
nop
nop
nop
inc %r11
mov (%rdx), %ecx
dec %rsi
lea addresses_UC_ht+0x18a0f, %r8
nop
nop
nop
nop
nop
sub %rbp, %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
inc %r11
lea addresses_UC_ht+0x98f, %rcx
nop
cmp %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
add $4204, %rbp
lea addresses_normal_ht+0x61cf, %rsi
lea addresses_WC_ht+0xa90f, %rdi
nop
nop
nop
nop
nop
dec %rbp
mov $54, %rcx
rep movsb
nop
add $45896, %rcx
lea addresses_WC_ht+0xb70f, %rsi
lea addresses_WC_ht+0x1f37, %rdi
clflush (%rdi)
inc %r10
mov $51, %rcx
rep movsq
nop
and %rdx, %rdx
lea addresses_D_ht+0x19847, %rbp
dec %r10
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
add $36587, %rcx
lea addresses_UC_ht+0x1670f, %rsi
lea addresses_UC_ht+0x1610f, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $58, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0xe90f, %rsi
lea addresses_WT+0xef0f, %rdi
nop
nop
nop
and $61623, %r10
mov $105, %rcx
rep movsl
nop
nop
nop
cmp $18791, %r10

// Load
lea addresses_WT+0xef0f, %rcx
nop
nop
nop
nop
nop
and %rbx, %rbx
mov (%rcx), %edi
add $35766, %rsi

// Store
lea addresses_RW+0x633f, %rsi
nop
nop
inc %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%rsi)
nop
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0x736e86000000018f, %rbx
inc %rsi
movb $0x51, (%rbx)
cmp $36397, %rdi

// Faulty Load
lea addresses_WT+0xef0f, %rdi
nop
nop
inc %r11
vmovaps (%rdi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WT_ht', 'same': True, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': True, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'47': 3, '00': 287, '48': 2343, '36': 1581}
48 36 36 36 00 48 00 36 00 00 48 36 36 36 48 48 36 36 36 48 36 36 36 36 48 48 48 36 48 36 48 48 36 36 36 48 48 36 48 36 36 48 36 36 36 48 48 48 48 48 36 36 36 48 48 48 36 48 48 00 36 36 48 36 48 48 48 48 36 36 48 36 36 36 48 48 48 36 48 00 36 48 36 36 36 48 36 36 36 36 36 48 48 48 48 48 48 48 48 36 00 36 36 36 36 36 36 36 00 36 48 48 36 48 36 48 48 48 36 36 36 48 48 36 48 48 48 36 48 48 48 48 48 48 48 48 48 48 48 48 48 36 36 48 48 48 36 48 48 36 36 48 48 48 36 36 36 36 48 48 48 48 48 48 36 36 36 48 48 48 48 48 48 48 48 36 48 48 48 36 36 48 36 48 00 00 48 48 48 48 48 36 36 36 36 36 48 36 36 36 48 36 36 48 36 48 48 36 36 48 36 36 36 36 48 36 36 48 48 36 36 36 00 48 48 36 36 36 36 36 48 48 48 36 48 48 36 36 36 36 48 48 48 48 36 48 48 36 48 48 36 48 36 48 48 36 36 48 48 48 48 48 36 48 00 48 48 36 36 36 48 36 48 48 36 48 36 36 36 48 36 48 00 36 48 48 48 48 48 36 36 36 36 36 48 48 36 36 36 48 36 36 48 48 48 48 48 36 48 48 00 36 36 36 36 00 48 36 48 36 36 48 48 36 48 36 48 48 48 48 36 48 36 48 48 48 48 48 36 48 48 48 36 36 48 48 36 36 48 48 48 48 36 36 48 36 48 36 36 48 48 36 36 36 48 48 48 48 48 48 48 36 48 48 36 48 48 36 36 48 48 48 36 48 48 36 48 48 48 36 48 48 48 48 48 48 48 36 48 48 36 36 36 36 36 48 48 48 48 36 48 48 48 36 48 48 36 36 48 48 48 48 48 36 36 36 36 48 48 36 48 36 48 48 36 48 36 48 48 36 48 48 36 48 00 48 36 36 36 48 36 48 48 48 48 36 48 48 36 36 36 36 36 48 48 48 48 48 36 36 48 48 48 48 36 48 36 00 00 00 36 00 36 36 48 36 48 48 00 48 48 00 36 00 48 00 00 48 00 00 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 00 48 36 48 00 48 36 00 48 48 48 48 00 48 36 00 00 48 00 00 00 00 48 48 48 00 36 00 48 36 00 00 48 48 48 00 00 36 00 00 00 00 00 48 00 00 36 36 36 48 36 36 00 00 36 48 36 48 48 00 48 00 36 48 36 48 36 36 48 48 48 48 36 36 00 48 36 48 36 48 36 36 48 48 48 48 36 48 00 36 48 48 00 36 36 36 00 36 48 36 36 36 36 48 36 36 36 36 48 48 48 48 48 48 48 48 48 36 48 48 48 36 36 36 36 48 48 36 48 48 36 48 48 48 48 36 36 48 48 48 48 48 48 36 36 48 48 48 48 36 36 00 36 36 48 48 48 48 36 48 48 48 48 36 48 36 48 36 36 00 48 36 48 48 36 48 48 36 48 00 00 36 48 36 48 36 48 48 36 36 00 36 36 36 36 48 36 48 48 36 48 48 48 36 48 48 36 48 48 36 48 48 48 48 48 36 36 48 48 48 36 48 36 48 48 48 36 48 36 48 36 48 48 36 48 36 36 36 48 48 36 48 48 48 48 48 48 36 36 36 00 36 48 36 48 36 36 48 48 36 36 48 36 48 00 48 36 36 48 36 36 48 36 48 00 00 36 48 36 36 36 48 36 48 48 48 48 36 48 00 36 36 48 36 48 48 36 48 48 48 48 48 48 48 48 48 48 36 36 36 48 48 36 48 48 48 48 36 48 36 36 48 48 36 36 36 48 36 48 36 36 48 36 36 36 48 48 48 48 36 48 48 36 48 48 48 36 48 48 48 48 36 36 36 36 00 48 48 36 48 36 48 36 48 48 48 48 48 36 48 48 36 36 48 36 00 36 48 36 36 48 36 48 48 36 36 36 36 36 48 48 48 48 48 00 48 48 48 36 36 36 48 00 48 48 48 48 48 48 36 00 48 48 48 36 36 48 36 36 48 48 48 48 36 48 36 36 48 48 48 48 48 36 36 48 48 48 48 48 48 36 36 36 36 48 48 48 48 36 48 48 00 48 48 48 36 48 48 48 48 48 48 36 36 48 36 36 48 48 36 48 48 36 48 48 48 48 36 36 48 36
*/
