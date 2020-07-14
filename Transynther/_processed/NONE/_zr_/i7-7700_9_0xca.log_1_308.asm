.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xaf52, %r14
nop
nop
nop
cmp %r12, %r12
mov (%r14), %eax
nop
nop
cmp %rsi, %rsi
lea addresses_D_ht+0x4d9, %rsi
lea addresses_WC_ht+0xf1d9, %rdi
nop
nop
nop
nop
lfence
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_D_ht+0x5b97, %r8
clflush (%r8)
nop
nop
nop
sub %rsi, %rsi
movb (%r8), %al
cmp %r14, %r14
lea addresses_D_ht+0x147d9, %rsi
lea addresses_WC_ht+0x1d319, %rdi
nop
nop
nop
xor $55124, %rdx
mov $10, %rcx
rep movsw
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x93d9, %r14
nop
nop
nop
nop
cmp $25189, %rdx
movl $0x61626364, (%r14)
nop
and %rax, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x14a09, %rsi
lea addresses_UC+0x137a8, %rdi
nop
nop
nop
nop
nop
add $11426, %rbp
mov $24, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_UC+0x18459, %rsi
nop
nop
nop
inc %r8
movups (%rsi), %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_D'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}}
{'00': 1}
00
*/
