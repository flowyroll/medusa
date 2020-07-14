.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xd306, %rdx
nop
nop
inc %r12
movb (%rdx), %r8b
nop
nop
nop
nop
nop
sub $31624, %rax
lea addresses_normal_ht+0x129ae, %rsi
lea addresses_A_ht+0x13e66, %rdi
clflush (%rdi)
dec %rbx
mov $107, %rcx
rep movsb
nop
nop
nop
nop
nop
and $19929, %r12
lea addresses_WC_ht+0x135fc, %r12
nop
cmp $12929, %rdx
movb (%r12), %cl
nop
inc %rbx
lea addresses_A_ht+0x146a6, %rsi
lea addresses_UC_ht+0x2164, %rdi
nop
nop
cmp %r12, %r12
mov $114, %rcx
rep movsl
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x114ee, %rax
nop
nop
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm5
and $0xffffffffffffffc0, %rax
vmovaps %ymm5, (%rax)
nop
nop
nop
and $24815, %rcx
lea addresses_UC_ht+0xb796, %rdi
nop
nop
nop
nop
nop
xor $12269, %rsi
mov (%rdi), %rbx
nop
nop
nop
nop
xor $40689, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
mov $0xf26, %r14
nop
nop
nop
nop
and $53741, %r8
movb $0x51, (%r14)
xor %rsi, %rsi

// Load
lea addresses_UC+0xe9a6, %rcx
nop
add %rax, %rax
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
xor $48689, %rcx

// Faulty Load
lea addresses_UC+0x89a6, %rax
nop
nop
nop
xor $52211, %r13
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'44': 3015, '45': 18149, '00': 665}
44 00 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 44 45 45 45 00 45 44 45 45 00 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 00 45 45 45 45 44 45 45 45 45 45 45 45 44 44 45 45 00 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 00 45 45 45 45 45 44 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 00 45 44 45 45 44 45 45 45 44 45 45 44 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 00 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 00 44 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 00 45 44 45 45 45 45 45 45 45 00 44 45 45 44 45 45 45 45 45 45 45 45 45 00 45 45 45 45 44 45 45 45 00 45 44 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 00 45 44 45 45 45 45 45 45 44 44 45 44 45 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 45 45 45 45 44 45 44 45 45 45 00 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 00 45 45 45 44 45 45 45 45 45 45 45 44 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 44 45 45 44 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 44 45 45 00 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 00 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 00 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 44 45 00 45 45 45 44 45 00 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 44 45 45 45 45 00 45 00 44 45 45 44 45 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 44 00 44 45 44 45 45 45 45 45 45 00 45 45 45 45 44 45 45 00 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 44 45 45 44 45 45 44 45 45 45 45 44 45 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 44 45 45 45 45 45 44 45 45 45 44 45 45 45 45 45 45 45 45 45 00 45 44 45 45 44 45 45 45 44 45 45 44 45 45 45 45 45 45 44 45 45 44 45 45 45 45 45 45 45 45 45 45 45 45 45 44 45 45 44 45 44 45 44 45 45 45 45 45 45 45 44 45 45 45 45 45 45 45 45 45 45 45 44 45 45 45 44 45 45 44 45 45 44 45 45 45 45 44 45 44 45 45 45 45 45 44 45 45 45 45 45 45 44 45 45 45 00 45 45 00 45 45 45 45 45 45 45 44 45 45 45 44 45 45 45 00 45 45 00 45 45 45 44 45 45 45 45 45
*/
