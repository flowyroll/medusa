.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x10d77, %rax
nop
cmp $37290, %rsi
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
xor $23715, %rbp
lea addresses_WT_ht+0x3307, %rsi
lea addresses_WC_ht+0x16647, %rdi
nop
nop
nop
nop
and $42055, %r14
mov $123, %rcx
rep movsb
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x9807, %rdi
clflush (%rdi)
nop
add %rax, %rax
mov (%rdi), %r14w
nop
nop
cmp $5056, %rsi
lea addresses_WT_ht+0x15fe7, %rsi
lea addresses_WC_ht+0x1db2f, %rdi
nop
nop
nop
nop
nop
and $56311, %r8
mov $78, %rcx
rep movsw
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x2247, %r14
nop
nop
nop
nop
add $62447, %rdi
movb $0x61, (%r14)
nop
nop
nop
inc %rbp
lea addresses_normal_ht+0x3087, %rsi
lea addresses_D_ht+0x156e7, %rdi
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $33, %rcx
rep movsq
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0xde7, %r11
lfence
movb $0x61, (%r11)
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xe247, %rsi
lea addresses_UC_ht+0xf0a7, %rdi
and %rax, %rax
mov $12, %rcx
rep movsl
xor %rcx, %rcx
lea addresses_UC_ht+0xa557, %r14
nop
nop
nop
sub %rsi, %rsi
mov (%r14), %bp
nop
nop
nop
nop
nop
xor $19906, %r8
lea addresses_WT_ht+0x65f9, %r8
clflush (%r8)
nop
xor $50725, %rdi
mov (%r8), %eax
xor %r14, %r14
lea addresses_UC_ht+0x6647, %rsi
lea addresses_normal_ht+0x7307, %rdi
cmp %r11, %r11
mov $49, %rcx
rep movsw
nop
nop
nop
nop
nop
add $19426, %r8
lea addresses_WC_ht+0x18c7, %r11
nop
nop
nop
add $10279, %rax
mov (%r11), %r14w
nop
and %rax, %rax
lea addresses_WT_ht+0x18b0a, %rsi
lea addresses_WT_ht+0x5ac7, %rdi
clflush (%rsi)
nop
nop
nop
and $63900, %rbp
mov $102, %rcx
rep movsl
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x3247, %rsi
nop
nop
add %rdi, %rdi
movw $0x6162, (%rsi)
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rax
push %rdx

// Faulty Load
lea addresses_UC+0x18247, %rax
nop
nop
xor %r9, %r9
mov (%rax), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': True, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'44': 6280, '49': 13, '00': 15501, '04': 35}
00 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 44 44 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 44 00 00 44 44 00 44 44 00 00 00 00 44 00 00 44 44 44 00 44 44 00 44 00 44 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 44 04 44 44 44 00 00 44 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 44 00 00 00 44 00 00 00 00 44 44 00 44 00 44 00 00 44 00 00 00 44 00 00 44 00 44 00 00 00 44 00 00 44 44 00 00 44 44 00 44 44 00 00 44 00 00 00 00 44 00 00 00 00 44 44 44 00 44 00 00 00 00 00 44 00 00 00 00 44 00 44 00 44 44 44 44 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 44 44 00 00 44 00 00 00 00 44 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 49 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 44 00 44 44 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 44 00 00 44 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 44 44 44 00 00 00 00 00 00 44 44 44 00 00 44 00 00 00 44 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 44 44 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 00 44 44 44 00 00 44 00 44 44 00 00 00 00 44 00 44 00 44 00 00 44 00 00 00 00 44 44 44 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 44 44 00 44 44 00 00 44 00 00 44 44 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 44 00 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 44 44 00 44 00 00 44 00 44 00 00 44 00 00 00 00 00 44 00 44 00 44 00 44 00 00 44 00 00 44 44 00 44 00 00 00 44 44 00 00 00 44 00 00 44 00 44 00 00 00 00 44 44 00 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 44 00 00 44 44 44 44 00 00 00 44 00 00 00 44 44 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 44 44 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 44 44 44 00 00 44 44 00 00 00 44 00 44 00 44 44 44 00 00 44 00 00 00 00 44 00 00 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 44 00 44 00 00 00 44 44 00 44 00 00 44 44 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 00 44 44 00 44 44 00 44 00 00 00 44 00 44 00 44 44 00 44 00 00 44 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 00 44 00 00 44 00 00 44 44 00 44 44 00 44 44 00 00 00 44 00 00 44 00 00
*/
