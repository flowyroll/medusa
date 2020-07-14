.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1863a, %rbp
nop
nop
nop
nop
cmp $14806, %r12
mov (%rbp), %si
nop
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x1697a, %rsi
lea addresses_WC_ht+0x1e3a, %rdi
nop
nop
nop
nop
nop
xor $10042, %r13
mov $46, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_normal_ht+0x793a, %rcx
nop
nop
nop
dec %rbx
mov (%rcx), %edi
add $13888, %rbx
lea addresses_UC_ht+0x1aa3a, %rsi
lea addresses_WC_ht+0x873a, %rdi
nop
and %r11, %r11
mov $8, %rcx
rep movsw
nop
nop
nop
nop
and $41200, %rbx
lea addresses_normal_ht+0x1255a, %rdi
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rbx
movq %rbx, (%rdi)
and %rcx, %rcx
lea addresses_normal_ht+0xdf7a, %rsi
lea addresses_WT_ht+0x1d4ba, %rdi
nop
nop
nop
nop
nop
sub $51351, %r12
mov $0, %rcx
rep movsq
nop
sub %rbp, %rbp
lea addresses_WC_ht+0xf35a, %rdi
nop
cmp $29716, %r12
mov (%rdi), %r11w
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0x1ba3a, %rsi
lea addresses_UC_ht+0x1c43a, %rdi
nop
nop
xor %r12, %r12
mov $43, %rcx
rep movsw
nop
nop
sub $39302, %rsi
lea addresses_normal_ht+0x14f5a, %rsi
lea addresses_normal_ht+0xc5f4, %rdi
xor $20816, %r13
mov $121, %rcx
rep movsl
nop
nop
nop
xor %rbx, %rbx
lea addresses_WC_ht+0x963a, %rbp
nop
nop
nop
nop
nop
and %r12, %r12
movb $0x61, (%rbp)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x1de0a, %rsi
cmp %r12, %r12
movw $0x6162, (%rsi)
nop
nop
nop
lfence
lea addresses_UC_ht+0x4a3a, %r13
nop
nop
nop
nop
sub $45067, %rbx
vmovups (%r13), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rcx
sub %r13, %r13
lea addresses_WC_ht+0xb83a, %rsi
lea addresses_A_ht+0x10e3a, %rdi
clflush (%rsi)
sub %r11, %r11
mov $4, %rcx
rep movsw
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1163a, %r12
nop
nop
nop
cmp %r11, %r11
mov (%r12), %rbp
nop
nop
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rdi
push %rsi

// Store
lea addresses_normal+0x1be3a, %rdi
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
nop
nop
nop
cmp $64032, %r8

// Faulty Load
lea addresses_UC+0x11e3a, %rbp
nop
nop
nop
nop
nop
dec %r10
vmovaps (%rbp), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r13
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rsi
pop %rdi
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 4, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'00': 1138, '5f': 18795, '58': 1896}
5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 58 5f 00 00 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 58 00 5f 5f 00 58 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 58 5f 5f 58 58 5f 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 58 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 58 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 00 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 00 5f 00 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 00 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 00 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 00 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 00 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 00 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 00 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 00 00 5f 58 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 00 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 00 5f 5f 5f 00 5f 5f 5f 5f 00 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 00 00 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f
*/
