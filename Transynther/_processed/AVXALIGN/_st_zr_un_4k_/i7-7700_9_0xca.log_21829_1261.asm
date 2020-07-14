.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x137, %rsi
lea addresses_A_ht+0x8483, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $88, %rcx
rep movsq
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1c6b7, %r14
nop
add $52565, %r12
movb (%r14), %cl
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xaf73, %r12
nop
nop
nop
nop
nop
cmp %rbx, %rbx
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
nop
and $34652, %r12
lea addresses_D_ht+0x319f, %rsi
lea addresses_normal_ht+0x153b7, %rdi
nop
nop
nop
nop
sub $9231, %r12
mov $88, %rcx
rep movsw
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x66b7, %rsi
lea addresses_UC_ht+0x180b7, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $54, %rcx
rep movsl
nop
nop
nop
nop
sub $1902, %r13
lea addresses_WT_ht+0xd2b7, %rsi
nop
inc %rdi
movb (%rsi), %r10b
xor %r14, %r14
lea addresses_normal_ht+0xceb7, %rsi
lea addresses_WT_ht+0x99b7, %rdi
clflush (%rsi)
sub %rbx, %rbx
mov $20, %rcx
rep movsw
cmp %r12, %r12
lea addresses_normal_ht+0xceb7, %r13
nop
nop
nop
nop
sub $21279, %rdi
movups (%r13), %xmm5
vpextrq $1, %xmm5, %r10
nop
xor %r12, %r12
lea addresses_UC_ht+0x4e89, %rsi
lea addresses_normal_ht+0x1925b, %rdi
xor $57166, %r14
mov $61, %rcx
rep movsl
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_normal_ht+0x14937, %r10
clflush (%r10)
nop
nop
nop
nop
nop
cmp %r13, %r13
mov (%r10), %ecx
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x36b7, %r14
nop
xor %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovaps %ymm1, (%r14)
nop
xor %rax, %rax

// Faulty Load
mov $0x4c39a600000006b7, %r13
nop
nop
and $59176, %r12
mov (%r13), %rdi
lea oracles, %r12
and $0xff, %rdi
shlq $12, %rdi
mov (%r12,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'79': 2, '00': 3847, '5f': 17735, '58': 245}
5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 00 00 5f 5f 00 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 00 00 5f 00 00 00 5f 00 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 58 5f 5f 5f 5f 00 5f 5f 5f 00 5f 00 5f 5f 00 00 5f 00 5f 00 00 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 00 58 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 00 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 00 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 00 00 5f 5f 5f 00 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 00 5f 5f 58 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 58 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 00 00 5f 00 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 00 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 00 5f 5f 5f 5f 5f
*/
