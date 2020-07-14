.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xfa0c, %rsi
lea addresses_WC_ht+0x19224, %rdi
nop
dec %rdx
mov $11, %rcx
rep movsb
and %rax, %rax
lea addresses_A_ht+0x1430c, %rsi
lea addresses_normal_ht+0x1eb4c, %rdi
nop
nop
nop
nop
dec %rdx
mov $67, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %rax
lea addresses_D_ht+0x1a12c, %rsi
lea addresses_normal_ht+0x9a0c, %rdi
nop
nop
nop
nop
nop
dec %r9
mov $94, %rcx
rep movsl
nop
add %rdx, %rdx
lea addresses_WC_ht+0x500c, %rcx
nop
nop
nop
nop
nop
add %r12, %r12
movb $0x61, (%rcx)
nop
nop
and $36075, %r12
lea addresses_UC_ht+0x18ffc, %r9
nop
nop
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %r9
movaps (%r9), %xmm7
vpextrq $1, %xmm7, %rsi
nop
cmp %rsi, %rsi
lea addresses_D_ht+0xe00c, %rsi
lea addresses_WT_ht+0x360c, %rdi
clflush (%rsi)
clflush (%rdi)
nop
xor %r9, %r9
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
and $15088, %r9
lea addresses_WC_ht+0xd60c, %rsi
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x533c, %rsi
lea addresses_UC_ht+0x14a0c, %rdi
nop
nop
nop
cmp %r15, %r15
mov $38, %rcx
rep movsw
nop
nop
xor $42691, %r12
lea addresses_UC_ht+0x1ae0c, %r9
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%r9)
nop
cmp $56970, %rcx
lea addresses_WT_ht+0x1750c, %rsi
lea addresses_A_ht+0x1d20c, %rdi
xor $40729, %rdx
mov $96, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $58782, %rdi
lea addresses_WT_ht+0x320c, %rdi
and %r12, %r12
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1626c, %rsi
lea addresses_normal_ht+0x12d0c, %rdi
clflush (%rdi)
nop
dec %r12
mov $11, %rcx
rep movsq
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x1820c, %rsi
lea addresses_normal_ht+0x11be7, %rdi
nop
cmp $14059, %r12
mov $58, %rcx
rep movsb
nop
nop
and $61284, %r9
lea addresses_UC_ht+0x17e0c, %r9
sub $47897, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %r9
movntdq %xmm6, (%r9)
nop
nop
nop
nop
xor $13929, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xaf4aa00000008b0, %rsi
lea addresses_normal+0xee0c, %rdi
nop
nop
and $61203, %rbx
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rbx, %rbx

// Faulty Load
lea addresses_D+0x1c60c, %r12
nop
inc %rsi
mov (%r12), %cx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 9, 'same': False}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 16, 'NT': True, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 11}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 11}}
{'36': 2}
36 36
*/
