.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x9db4, %r14
clflush (%r14)
nop
nop
cmp $24767, %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm2
movups %xmm2, (%r14)
nop
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x8550, %rsi
lea addresses_normal_ht+0x3d50, %rdi
clflush (%rdi)
nop
nop
nop
inc %r14
mov $103, %rcx
rep movsl
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0xfc38, %rsi
lea addresses_UC_ht+0x7628, %rdi
nop
nop
xor $9154, %r10
mov $14, %rcx
rep movsq
nop
add $29857, %rax
lea addresses_WT_ht+0x14ff8, %rsi
cmp %rdi, %rdi
movb (%rsi), %r14b
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x2638, %rsi
lea addresses_normal_ht+0x186e8, %rdi
nop
sub %r13, %r13
mov $41, %rcx
rep movsw
nop
nop
nop
nop
sub $13734, %r14
lea addresses_D_ht+0x15038, %rsi
lea addresses_UC_ht+0xdd24, %rdi
nop
nop
nop
and $47435, %r15
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $23743, %r10
lea addresses_normal_ht+0x3838, %rsi
lea addresses_normal_ht+0xf838, %rdi
clflush (%rdi)
nop
dec %rax
mov $9, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x13f38, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov (%rdi), %r13w
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x15438, %rsi
nop
nop
nop
nop
nop
and %r13, %r13
movb $0x61, (%rsi)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x13038, %rsi
xor $35250, %r14
mov $0x6162636465666768, %rcx
movq %rcx, (%rsi)
nop
and $37339, %rax
lea addresses_normal_ht+0x7258, %rsi
lea addresses_UC_ht+0x1ab98, %rdi
nop
nop
nop
xor %r13, %r13
mov $33, %rcx
rep movsq
nop
nop
and %r15, %r15
lea addresses_D_ht+0x10d82, %rdi
nop
sub %rax, %rax
movw $0x6162, (%rdi)
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x8eac, %rsi
nop
nop
nop
and %r13, %r13
movups (%rsi), %xmm2
vpextrq $1, %xmm2, %rdi
nop
and $53411, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rdx
push %rsi

// Store
lea addresses_WT+0xe718, %r10
nop
nop
nop
add $31934, %r11
movw $0x5152, (%r10)
nop
nop
nop
nop
and $29262, %r8

// Store
lea addresses_D+0x12094, %r14
nop
nop
xor %r15, %r15
movw $0x5152, (%r14)
nop
nop
add $12195, %rdx

// Store
lea addresses_RW+0x6e58, %r14
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
inc %r11

// Store
lea addresses_normal+0x74a6, %rsi
clflush (%rsi)
xor %r14, %r14
movl $0x51525354, (%rsi)
nop
xor $34683, %rdx

// Faulty Load
lea addresses_WT+0x1038, %rsi
cmp $17934, %r10
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rsi
pop %rdx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': True, 'size': 1, 'NT': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'44': 1043, '46': 2463, '48': 72, '00': 657, '96': 1, '5c': 1, '53': 1384, '0c': 1, '49': 163, 'cc': 1, '6e': 1, 'f6': 1, 'ff': 14684, '02': 1, '45': 1353, '12': 1, '3c': 1, '84': 1}
44 00 ff 53 46 00 44 53 46 ff ff ff ff ff 46 ff 46 ff ff ff ff ff ff 45 ff 46 53 ff ff ff ff ff 45 ff 46 ff ff 45 ff ff ff ff ff ff ff 46 ff ff 53 46 46 ff ff 44 ff ff ff 46 ff ff 44 45 ff ff 46 ff ff ff ff 45 ff ff ff ff ff 45 ff ff ff ff ff ff ff ff 45 46 ff 44 ff ff 46 ff 45 ff ff 44 ff ff 46 44 ff ff 45 ff ff ff ff ff 46 ff ff ff 44 ff 45 ff ff 53 46 ff ff 45 ff ff ff ff 45 ff ff ff 53 ff 45 53 ff ff ff 49 46 ff ff ff 45 ff 53 ff ff 45 ff ff 53 46 00 ff ff ff ff 45 ff ff ff ff ff ff 46 ff ff ff 46 53 53 ff ff ff ff 44 53 ff ff ff ff ff ff ff ff ff 53 ff 46 ff ff 45 ff ff 53 46 ff ff ff ff ff 48 ff ff ff ff ff 46 ff ff ff 53 ff 46 44 44 ff ff ff ff ff ff ff ff ff 45 ff 46 53 53 ff ff ff ff ff ff ff ff ff ff ff ff ff ff 44 ff ff ff 46 ff ff 00 ff 49 ff ff ff ff 46 ff ff ff ff ff ff ff ff ff 46 ff ff ff ff ff ff ff ff ff 45 ff 46 ff 44 ff ff ff ff ff ff ff 46 44 ff ff ff ff ff 44 ff 45 ff ff ff ff 46 ff 44 46 ff ff ff 53 53 ff ff ff 00 ff 46 44 ff ff ff ff ff ff ff ff 46 ff ff ff ff ff 46 ff ff ff 46 ff 44 ff ff ff ff ff 00 45 ff ff ff ff ff ff 44 ff 46 46 ff 44 53 45 ff ff 46 53 ff ff ff ff 53 ff 44 ff ff 46 ff ff 44 45 45 ff 45 45 00 ff 46 ff 45 ff 46 ff ff 45 53 ff ff ff ff ff 53 ff 46 44 ff ff ff 44 ff 45 12 46 44 46 46 ff ff ff ff ff 00 46 ff ff ff ff 45 ff 53 ff ff ff ff 45 ff ff 46 ff ff 45 ff ff 45 53 ff ff 46 ff ff ff ff ff ff ff 45 ff ff 46 53 ff 45 ff 45 ff ff ff 00 ff ff ff ff 46 ff 44 ff ff ff ff ff ff ff ff 53 45 ff 46 ff ff ff 45 53 ff ff ff ff ff ff ff ff ff ff 44 45 ff ff ff ff ff ff ff ff 00 45 45 ff ff ff 44 ff ff ff 53 46 ff 44 45 46 ff ff ff ff ff ff ff ff ff ff ff ff 45 ff ff 44 ff ff 00 ff ff ff ff 45 ff ff ff ff ff 46 ff ff 53 ff ff ff 44 53 46 46 44 ff ff ff ff ff ff 46 ff 46 44 ff 45 46 ff 53 46 ff ff 45 ff 46 ff 44 ff 53 ff ff ff ff ff ff 53 ff ff 46 ff ff 45 ff ff ff ff ff ff ff ff ff ff ff 46 ff 44 44 ff 45 53 ff 53 53 ff 44 ff ff ff ff 46 53 ff ff ff ff ff 46 00 ff ff 46 ff ff ff ff 53 ff ff 44 ff ff ff 44 ff 45 46 ff ff ff 53 46 ff ff ff ff ff ff ff ff ff 46 44 ff 46 ff ff 44 ff ff 44 ff ff ff 44 ff ff ff 48 ff ff ff ff 49 ff ff ff ff ff 45 ff ff ff 45 ff ff ff ff ff ff ff 46 ff ff 45 ff 46 ff ff ff ff ff 00 53 ff 46 ff ff ff ff ff ff ff 44 ff 46 44 44 00 44 ff 45 ff 46 53 46 00 ff ff ff 53 ff 45 ff ff ff 49 46 46 ff ff ff 46 53 45 ff ff 53 46 44 ff 45 ff ff ff ff ff ff 00 ff 44 ff ff 53 ff 53 ff ff 46 ff ff 45 ff ff 46 46 ff ff 53 ff 45 45 ff ff ff ff ff ff ff 53 00 ff ff ff ff ff ff ff ff ff ff ff ff 44 46 ff ff 53 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 48 ff ff 46 ff ff ff 00 ff 45 ff 46 46 ff ff ff 53 ff 46 46 ff ff 00 ff ff 45 53 46 44 ff ff 00 ff ff ff ff 44 45 ff ff ff 53 46 00 ff 49 ff ff ff 46 ff ff 45 ff ff ff ff 46 ff ff ff ff 45 45 ff ff ff ff 45 ff 00 ff 46 ff ff ff 53 ff ff ff 00 ff 44 ff ff ff ff ff ff ff ff ff 53 ff ff ff 46 00 ff ff ff ff ff 45 46 ff ff ff 45 ff ff ff ff 45 ff ff ff 45 ff ff ff ff 53 ff ff ff 44 ff ff 45 ff 46 53 ff ff ff ff ff ff ff ff 53 ff 44 ff ff ff 53 ff ff ff 45 ff 46
*/
