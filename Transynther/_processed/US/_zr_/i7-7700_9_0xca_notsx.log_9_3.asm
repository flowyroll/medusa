.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x229e, %rsi
lea addresses_normal_ht+0x2baa, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $60, %rcx
rep movsw
nop
nop
nop
sub $50888, %r15
lea addresses_UC_ht+0x1c06e, %rax
nop
and $3144, %rdx
mov (%rax), %ecx
nop
nop
nop
cmp $54768, %rsi
lea addresses_normal_ht+0x1161e, %rsi
lea addresses_WT_ht+0xa6de, %rdi
nop
nop
nop
and %r10, %r10
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $19041, %rdx
lea addresses_A_ht+0x1d15e, %rsi
lea addresses_D_ht+0xf61e, %rdi
nop
nop
xor $64825, %r8
mov $38, %rcx
rep movsb
nop
nop
nop
xor $55073, %r8
lea addresses_WT_ht+0x19a1e, %r10
nop
nop
inc %rsi
mov (%r10), %di
inc %rdi
lea addresses_UC_ht+0xd90e, %rsi
lea addresses_WC_ht+0x17e87, %rdi
nop
nop
nop
nop
nop
xor $42579, %r10
mov $6, %rcx
rep movsw
nop
nop
dec %r8
lea addresses_WC_ht+0x15a70, %rsi
lea addresses_A_ht+0x173de, %rdi
nop
add $28120, %r8
mov $66, %rcx
rep movsw
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x451e, %rsi
cmp %r10, %r10
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %r8
nop
dec %r8
lea addresses_normal_ht+0x7ea8, %rsi
lea addresses_normal_ht+0x1da1e, %rdi
nop
nop
nop
sub $32863, %r15
mov $25, %rcx
rep movsl
nop
and %rsi, %rsi
lea addresses_A_ht+0xeb9e, %r8
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r8)
nop
nop
nop
sub $44433, %rcx
lea addresses_WC_ht+0x1ae1e, %rsi
lea addresses_normal_ht+0x3d1e, %rdi
nop
nop
nop
nop
nop
add $14487, %rdx
mov $70, %rcx
rep movsl
nop
nop
nop
nop
xor $53771, %rax
lea addresses_normal_ht+0x1da1e, %rdx
nop
nop
nop
xor $20205, %r8
movups (%rdx), %xmm3
vpextrq $0, %xmm3, %r15
nop
nop
nop
nop
sub %r15, %r15
lea addresses_normal_ht+0x1e5e, %rcx
nop
and %rdi, %rdi
movb (%rcx), %r8b
nop
nop
nop
nop
add $33853, %rsi
lea addresses_UC_ht+0x19c96, %rsi
lea addresses_WT_ht+0x3e1e, %rdi
and %rdx, %rdx
mov $101, %rcx
rep movsl
nop
nop
dec %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rbp
push %rbx
push %rdx

// Store
lea addresses_D+0x18a1e, %rbx
nop
nop
nop
nop
nop
xor $53692, %rbp
movb $0x51, (%rbx)
inc %rbp

// Faulty Load
lea addresses_US+0x17e1e, %rbp
nop
nop
nop
inc %r8
mov (%rbp), %dx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3, 'same': True, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
