.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1aa85, %rbx
and $18829, %rsi
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
add $21621, %rax
lea addresses_UC_ht+0x3185, %rdx
nop
nop
xor $14715, %rcx
vmovups (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x10b45, %rsi
xor $42758, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x3105, %rsi
lea addresses_A_ht+0x1b285, %rdi
nop
dec %rdx
mov $2, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $8497, %rdi
lea addresses_D_ht+0x6905, %r11
nop
nop
nop
nop
nop
inc %rsi
movb $0x61, (%r11)
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0xb985, %rsi
lea addresses_D_ht+0xb9a1, %rdi
nop
nop
nop
nop
nop
sub %rax, %rax
mov $52, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_A_ht+0x9185, %r11
clflush (%r11)
nop
inc %rdi
vmovups (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
and %r12, %r12
lea addresses_A_ht+0x17985, %rdx
nop
nop
nop
cmp $12903, %rcx
movb $0x61, (%rdx)
nop
add %rax, %rax
lea addresses_normal_ht+0x3195, %rdi
nop
lfence
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
nop
nop
nop
dec %rdx
lea addresses_WT_ht+0x1c985, %rsi
lea addresses_A_ht+0x1f05, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $111, %rcx
rep movsl
nop
and %rdx, %rdx
lea addresses_A_ht+0x17585, %r12
nop
nop
xor %rax, %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rdx
push %rsi

// Store
lea addresses_D+0x10885, %rbp
nop
nop
sub %r15, %r15
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and $11150, %rsi

// Load
lea addresses_normal+0x6e75, %rdx
nop
nop
nop
cmp $40068, %rsi
mov (%rdx), %bx
sub $14419, %rsi

// Faulty Load
lea addresses_RW+0x1b185, %r15
nop
nop
nop
nop
and $45972, %r13
vmovntdqa (%r15), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': True, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 2}}
{'b7': 728, '51': 270, '3b': 91, '75': 1, 'e0': 174, '89': 766, '44': 4, '42': 1580, '00': 7547, '4c': 1, '0e': 31, '74': 91, '90': 3, '6e': 4, '6d': 3, '0a': 62, 'a3': 3, '29': 2, '2f': 1, '8b': 4, 'fa': 1, '71': 7, '4e': 93, '32': 1, 'f8': 277, 'bf': 2, 'd8': 1, '25': 93, '60': 2, '73': 1, '1b': 1, 'e8': 1, 'ad': 366, '13': 420, 'c2': 1, '40': 585, 'd7': 3, '8a': 639, 'a0': 1, 'ff': 6420, '1a': 1080, 'b0': 4, '61': 301, 'a2': 1, '08': 3, '55': 3, '37': 1, 'ee': 1, '57': 5, '34': 2, '2e': 7, '30': 1, '3f': 2, '87': 60, '68': 45, 'e7': 2, '66': 17, '12': 9, '9a': 1, '4a': 1, 'ec': 1, '6b': 1}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 89 ff 75 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff ff 8a 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 42 73 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 89 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 00 74 ff ff 8a ff 8a ff 8a ff ff ff 8a ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 8a ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 71 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 71 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 71 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 71 ff ff ff ff ff 71 ff ff ff ff ff ff ff ff ff 71 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 71 ff ff 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 42 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 42 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 42 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6e ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6e ff 6d ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6d ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 6d ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 00 00 00 00 00 00 00 00 00 00 00 00 42 ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff 1a ff ff
*/
