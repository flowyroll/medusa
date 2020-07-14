.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1748a, %rsi
lea addresses_UC_ht+0x1ac5a, %rdi
clflush (%rsi)
nop
nop
nop
nop
cmp %rdx, %rdx
mov $43, %rcx
rep movsw
nop
xor $11440, %rdx
lea addresses_WC_ht+0x100da, %rsi
lea addresses_A_ht+0x12fba, %rdi
nop
and %r13, %r13
mov $111, %rcx
rep movsl
nop
nop
nop
sub $53626, %rcx
lea addresses_A_ht+0x1470a, %rbx
nop
nop
nop
and $57360, %r8
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
dec %rdx
lea addresses_WC_ht+0xb570, %rbx
inc %r13
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %rdi
xor %r8, %r8
lea addresses_A_ht+0x1543a, %rsi
nop
cmp %r13, %r13
mov (%rsi), %rcx
and %rsi, %rsi
lea addresses_D_ht+0x1985a, %rsi
xor %r13, %r13
movb $0x61, (%rsi)
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %rax
push %rdx

// Faulty Load
lea addresses_WT+0x188da, %r12
nop
nop
nop
nop
nop
add $28473, %r11
movb (%r12), %al
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdx
pop %rax
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}}
{'40': 21696, '6a': 133}
40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 6a 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40 40
*/
