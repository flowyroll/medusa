.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xbffe, %r13
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r13)
and $25565, %rbp
lea addresses_WC_ht+0xc61c, %rsi
lea addresses_normal_ht+0x1d4e2, %rdi
inc %r14
mov $52, %rcx
rep movsq
nop
nop
cmp $14013, %r14
lea addresses_UC_ht+0x9bb2, %rsi
nop
nop
nop
nop
nop
and $3668, %r12
mov (%rsi), %r13w
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x37a2, %rbp
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
nop
sub $12044, %rcx
lea addresses_UC_ht+0x178e2, %r14
nop
nop
nop
nop
and $23722, %rdi
mov (%r14), %ebp
nop
nop
nop
nop
cmp $22965, %r12
lea addresses_D_ht+0x54e2, %rsi
lea addresses_WC_ht+0x19fe2, %rdi
clflush (%rsi)
nop
nop
nop
and $24275, %rbp
mov $74, %rcx
rep movsq
nop
nop
nop
nop
and $10483, %rsi
lea addresses_UC_ht+0xdd94, %rcx
nop
sub %rdi, %rdi
mov (%rcx), %rbp
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x7ee7, %rsi
lea addresses_A_ht+0x14c42, %rdi
nop
nop
nop
nop
nop
sub $55199, %r9
mov $103, %rcx
rep movsq
nop
sub $19696, %rdi
lea addresses_A_ht+0x3e38, %r14
nop
cmp $25836, %rdi
movw $0x6162, (%r14)
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0x15194, %rsi
lea addresses_D_ht+0xac78, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $32, %rcx
rep movsw
nop
nop
nop
nop
dec %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x13ce2, %rbp
nop
nop
nop
nop
nop
xor %rax, %rax
movb (%rbp), %dl
lea oracles, %rdi
and $0xff, %rdx
shlq $12, %rdx
mov (%rdi,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 8, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
