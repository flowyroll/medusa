.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x11ccb, %r13
nop
nop
nop
add $43487, %r11
movups (%r13), %xmm5
vpextrq $0, %xmm5, %rdx
nop
nop
sub $5142, %rax
lea addresses_D_ht+0x1b34b, %rsi
lea addresses_normal_ht+0x16db0, %rdi
nop
nop
nop
nop
nop
sub %r14, %r14
mov $74, %rcx
rep movsl
nop
nop
dec %rdx
lea addresses_A_ht+0x67db, %rsi
lea addresses_A_ht+0x57cb, %rdi
nop
nop
nop
add %rax, %rax
mov $47, %rcx
rep movsb
nop
and $21963, %r14
lea addresses_D_ht+0x1000b, %rsi
nop
nop
cmp %r11, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1774b, %rax
nop
cmp $4260, %rsi
movw $0x6162, (%rax)
and $13710, %rdi
lea addresses_D_ht+0x644b, %rdx
nop
add %r13, %r13
and $0xffffffffffffffc0, %rdx
vmovaps (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x1e06b, %rsi
lea addresses_D_ht+0x11233, %rdi
nop
nop
add %rdx, %rdx
mov $66, %rcx
rep movsw
nop
nop
xor $11802, %rax
lea addresses_normal_ht+0x1a0cb, %rcx
nop
nop
sub %r14, %r14
mov (%rcx), %rdx
nop
nop
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x1074b, %r14
nop
and $50822, %r13
movl $0x61626364, (%r14)
xor $29338, %rdi
lea addresses_WT_ht+0xb56d, %r11
nop
nop
nop
nop
nop
dec %rdi
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm1
vpextrq $1, %xmm1, %rax
and $52151, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rbx
push %rcx

// Load
lea addresses_US+0x734b, %r12
nop
nop
cmp $39558, %r13
mov (%r12), %ebx
inc %rcx

// Faulty Load
lea addresses_US+0x734b, %r15
nop
nop
nop
nop
cmp $60394, %rcx
movb (%r15), %al
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 48}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
