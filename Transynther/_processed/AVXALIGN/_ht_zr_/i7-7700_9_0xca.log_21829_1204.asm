.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1680c, %rsi
lea addresses_normal_ht+0x14ad0, %rdi
nop
nop
nop
and %rdx, %rdx
mov $54, %rcx
rep movsl
sub $26929, %r11
lea addresses_D_ht+0x10d8c, %rsi
lea addresses_A_ht+0x1d70c, %rdi
nop
nop
nop
nop
inc %r9
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x4d0c, %r9
clflush (%r9)
nop
nop
nop
nop
sub $28465, %rbp
mov (%r9), %di
nop
nop
add $21103, %rsi
lea addresses_WT_ht+0x19c44, %rdi
cmp $22033, %rdx
mov (%rdi), %r11d
cmp %rdi, %rdi
lea addresses_UC_ht+0x10a6c, %rsi
lea addresses_WC_ht+0xd4c, %rdi
nop
nop
nop
nop
nop
and $51368, %rbx
mov $63, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r11, %r11
lea addresses_D_ht+0xe90c, %rdi
nop
xor %rbx, %rbx
movw $0x6162, (%rdi)
nop
dec %rbp
lea addresses_WC_ht+0x1258c, %rbp
nop
nop
nop
nop
dec %rdx
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x1228c, %rbp
nop
nop
nop
xor $23386, %rdi
mov (%rbp), %edx
nop
nop
cmp $40019, %rbx
lea addresses_normal_ht+0x70b4, %r9
nop
nop
nop
cmp %rdx, %rdx
vmovups (%r9), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1e90c, %rsi
lea addresses_D_ht+0x1a4cc, %rdi
nop
sub %rbx, %rbx
mov $108, %rcx
rep movsq
and %rsi, %rsi
lea addresses_UC_ht+0x13cc, %r9
dec %rcx
mov (%r9), %di
nop
nop
nop
dec %r9
lea addresses_WC_ht+0x14d0c, %r11
nop
nop
nop
dec %rbx
movb $0x61, (%r11)
nop
nop
nop
xor $34400, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Load
lea addresses_PSE+0xfa2c, %rbp
nop
nop
nop
nop
nop
dec %rdx
movups (%rbp), %xmm6
vpextrq $0, %xmm6, %r12
nop
and $33817, %r10

// Store
lea addresses_A+0x1a04c, %rdi
nop
nop
nop
nop
nop
and $18190, %rsi
movb $0x51, (%rdi)
nop
nop
xor $7493, %rdi

// Faulty Load
lea addresses_PSE+0x1790c, %rsi
nop
and $34354, %r12
vmovntdqa (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 5, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'46': 343, '44': 59, '48': 7559, '00': 13868}
48 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 46 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 48 00 00 00 00 00 00 00 48 48 48 48 48 48 48 46 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 48 46 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 46 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 46 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 46 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 00 46 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 48 48 48 00 46 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 46 00 00 00 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 46 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 46 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 48 00 00 00 00 00 00 00 48 48 48 48 48 46 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 48 48 48 48 00 48 48 00 00 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 46 48 00 00 00 00 00 00 00 00 00 48 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 00 48 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 48 00 00 00 00 00 00 00 48 48 48 48 00 46 00 00 00 00 00 00 00 48 48 48 48 00
*/
