.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x16bf9, %r8
nop
and $17950, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%r8)
nop
cmp $64323, %rdi
lea addresses_WT_ht+0x25f9, %rsi
lea addresses_UC_ht+0xd799, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
and $57478, %rbx
lea addresses_WT_ht+0x17d75, %rax
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
and $860, %rsi
lea addresses_UC_ht+0xe119, %rbx
clflush (%rbx)
nop
nop
nop
nop
add $33467, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rbx)
dec %rsi
lea addresses_WT_ht+0x5bf9, %rax
clflush (%rax)
nop
nop
nop
and $51576, %rbx
mov (%rax), %rsi
nop
nop
add %rax, %rax
lea addresses_WT_ht+0x133f9, %rsi
lea addresses_UC_ht+0x39d1, %rdi
and $10612, %r15
mov $3, %rcx
rep movsb
nop
nop
nop
nop
and $11255, %r13
lea addresses_A_ht+0x173f9, %rsi
lea addresses_D_ht+0xf281, %rdi
nop
nop
add %r13, %r13
mov $80, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_A_ht+0x4d99, %rbx
nop
nop
nop
lfence
movb (%rbx), %r13b
nop
nop
nop
sub $50462, %r15
lea addresses_UC_ht+0x7bf9, %r8
clflush (%r8)
dec %rsi
movb $0x61, (%r8)
dec %r8
lea addresses_A_ht+0x19f59, %r8
nop
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
sub %r13, %r13
lea addresses_WT_ht+0x37f9, %rsi
nop
nop
nop
nop
nop
sub $55116, %rbx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %rcx
nop
nop
and $33298, %r15
lea addresses_D_ht+0x1ab62, %rcx
clflush (%rcx)
xor $4885, %r13
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
xor $37584, %rcx
lea addresses_WC_ht+0xae38, %rsi
lea addresses_A_ht+0x71d2, %rdi
nop
nop
nop
nop
xor $30562, %r15
mov $96, %rcx
rep movsw
nop
nop
nop
nop
sub $14247, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rbp
push %rsi

// Store
lea addresses_WT+0x10913, %r11
clflush (%r11)
nop
nop
add $1917, %rsi
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub $57791, %r8

// Store
lea addresses_UC+0x1b3f9, %r11
nop
nop
nop
inc %r15
mov $0x5152535455565758, %r12
movq %r12, (%r11)
nop
nop
nop
xor $23201, %r14

// Store
lea addresses_A+0x3bf9, %rsi
clflush (%rsi)
nop
nop
cmp $24050, %r15
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
add $43132, %r15

// Faulty Load
lea addresses_A+0x3bf9, %r12
nop
dec %r14
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rbp
lea oracles, %r15
and $0xff, %rbp
shlq $12, %rbp
mov (%r15,%rbp,1), %rbp
pop %rsi
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': True, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'a4': 1, '00': 39, '3b': 1, '61': 2, '21': 2, '03': 2, '44': 2, '76': 2, 'c9': 1, 'fc': 1, '4c': 2, '42': 10, '74': 1, 'e9': 2, 'f5': 15, '84': 2, '3a': 5, '0e': 4, 'c1': 1, '45': 28, '8b': 1, '70': 1, 'c6': 1, '5c': 1, 'de': 7, 'd9': 1, '01': 2, '9d': 1, 'ee': 4, 'f0': 6, '4f': 3, '02': 2, '14': 2, '40': 5, '95': 1, '8a': 1, 'ff': 211, '65': 1, 'dd': 4, 'a2': 1, 'f2': 1, '31': 11, 'fb': 1, 'f7': 1, 'f3': 1, '7a': 21, '19': 1, 'bb': 2, '2a': 1, '24': 2, '3f': 1, '05': 4, '93': 1, '9c': 6, 'd7': 1, '4a': 1}
00 9c 9c 9c 9c 9c 9c ff ff 00 00 8b ff ff ff ff ff ff ff ff ff 74 7a 7a 7a 7a de 00 00 7a 7a 7a 7a 7a ff ff ff ff ff ff ff 4c 4c de 45 44 45 de de ff 31 31 00 45 45 de de ff ff ff 00 00 05 05 05 05 01 01 f3 ee ee ff ff ff ff ff 00 42 00 ff 45 42 00 c9 ff ff c1 00 00 00 bb bb ff ff ff ff ff 42 ff ff ff ff ff de 93 42 45 00 00 ff 7a ff ff ff ff 76 76 42 ff 31 ff ff ff 5c 7a ff ff ff ff ff ff ff ff ff 31 ff ff ff 31 45 ff ff ff ff ff ff ff ff 00 2a ff 21 21 31 ff 45 00 00 ff ff ff fc ff ff 31 ee ee e9 e9 31 ff ff ff ff 7a 45 45 45 ff 31 42 31 42 42 31 7a 45 a2 ff ff 9d ff ff ff 40 ff 8a f5 f5 45 f5 f5 f5 ff ff 70 ff ff 45 7a f5 45 7a 7a f5 ff 00 ff ff ff ff ff 45 ff ff ff 3b 45 ff 7a 7a ff 7a f5 00 24 24 19 ff ff ff ff ff f5 f5 f5 00 00 42 02 ff fb ff 00 f5 f5 ff f0 f0 45 ff ff ff ff f5 ff dd dd dd dd d9 ff ff ff ff c6 ff ff ff ff ff 45 45 45 45 45 00 00 00 00 95 f5 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 7a ff ff ff ff ff 45 ff ff ff ff ff ff ff 45 ff 00 ff ff ff ff ff 4f 4f 4f ff 3a 40 3a 3a 3f 40 3a ff 7a 00 ff ff ff ff ff ff 14 14 ff 3a ff ff 03 03 02 00 00 00 00 00 f7 f2 f0 f0 f0 f0 ff ff 45 ff ff d7 40 ff ff ff ff ff 40 ff ff ff ff ff ff ff ff 00 a4 00 00 ff 00 ff ff 0e ff ff 84 84 ff ff ff ff ff ff ff ff ff 42 ff ff ff ff ff 65 61 61 ff 45 ff 45 ff ff ff 4a 44 0e 0e 0e
*/
