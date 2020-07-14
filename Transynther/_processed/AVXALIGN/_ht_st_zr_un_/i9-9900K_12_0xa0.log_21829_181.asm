.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13e44, %rdi
nop
cmp $61102, %r13
mov (%rdi), %ax
nop
nop
nop
nop
add $40925, %rcx
lea addresses_WC_ht+0x42f4, %rsi
lea addresses_WT_ht+0x1a3f4, %rdi
nop
and %r11, %r11
mov $11, %rcx
rep movsb
nop
nop
xor %r13, %r13
lea addresses_A_ht+0x87f4, %r13
and $25279, %r11
movb $0x61, (%r13)
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x19ff4, %r13
nop
dec %r11
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
cmp $26680, %rsi
lea addresses_WC_ht+0xcfc, %rsi
lea addresses_WT_ht+0x19ff4, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $30893, %r8
mov $32, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xf755, %rcx
and $35610, %r11
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
nop
xor $47775, %rcx
lea addresses_D_ht+0x83f4, %rsi
lea addresses_D_ht+0x2b04, %rdi
cmp %r15, %r15
mov $124, %rcx
rep movsb
nop
nop
nop
dec %rax
lea addresses_normal_ht+0x59f4, %r8
nop
dec %r15
and $0xffffffffffffffc0, %r8
vmovaps (%r8), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
nop
cmp $41610, %rdi
lea addresses_normal_ht+0x1c3b4, %rsi
lea addresses_normal_ht+0x4bc1, %rdi
clflush (%rsi)
sub %r15, %r15
mov $88, %rcx
rep movsb
nop
nop
nop
nop
sub %rax, %rax
lea addresses_normal_ht+0x1ab4, %rsi
nop
and $59689, %rax
movl $0x61626364, (%rsi)
nop
nop
and $4304, %r8
lea addresses_UC_ht+0x49d4, %rcx
clflush (%rcx)
nop
nop
inc %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0xbc68, %r13
nop
cmp $16250, %r8
movl $0x61626364, (%r13)
nop
nop
nop
and %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_WT+0x135c, %r8
nop
nop
nop
sub %r13, %r13
movl $0x51525354, (%r8)
nop
nop
nop
nop
and %rax, %rax

// Store
lea addresses_UC+0x5ff4, %r9
clflush (%r9)
nop
nop
nop
nop
nop
xor %rdx, %rdx
movl $0x51525354, (%r9)
nop
add $33883, %r13

// Store
mov $0x4c4, %rcx
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%rcx)
nop
dec %rdi

// Faulty Load
lea addresses_US+0x6ff4, %rdx
nop
inc %rcx
vmovntdqa (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'52': 2, '35': 47, '5a': 144, 'fe': 754, 'a6': 1, '44': 10259, 'a7': 2, '5e': 1, '72': 746, '00': 1759, '03': 936, '7c': 583, 'c2': 1, '3a': 1, 'fa': 2, '4e': 1, 'dc': 1, '5c': 1, '54': 1, '41': 2, '21': 1, '7d': 21, '42': 1, '01': 1, '46': 5, 'f1': 10, '02': 12, '84': 1, '9c': 275, '8a': 1, '06': 52, 'ad': 126, '49': 1, 'dd': 56, 'a2': 93, 'ff': 1130, 'f2': 1, 'fb': 102, '37': 176, '7a': 1, 'ee': 1, 'be': 4264, '2a': 1, 'aa': 1, '24': 2, 'c4': 1, 'c8': 168, 'ea': 75, '67': 2, '9a': 3, 'ba': 1}
06 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 06 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 06 00 00 00 00 00 06 00 00 00 00 00 00 06 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 06 06 00 00 00 06 00 00 00 00 00 00 00 be 03 00 00 06 06 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 72 03 00 06 00 00 00 00 00 00 00 00 06 00 00 00 06 00 00 00 00 00 00 00 00 06 00 00 00 00 00 06 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 06 00 00 00 00 06 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 06 06 00 00 00 00 00 00 00 00 06 00 72 03 7c 44 44 44 44 44 06 7c 44 44 44 44 44 44 06 06 7c 44 44 44 44 44 44 06 7c 44 44 44 06 06 44 44 44 44 44 06 06 44 44 44 44 44 44 44 44 06 44 44 44 44 44 44 06 44 44 44 44 44 44 06 44 44 06 44 44 44 06 44 44 44 44 44 44 44 06 44 be 44 44 44 44 44 44 fe fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 fe fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 35 35 44 44 35 44 44 44 44 44 35 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 35 35 44 44 44 44 44 44 35 44 44 44 44 44 35 44 44 44 44 44 35 44 44 44 44 44 44 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 35 44 44 44 44 44 35 44 35 44 44 44 44 44 44 44 44 44 44 44 44 35 44 44 35 44 44 35 44 44 44 44 44 35 44 44 44 44 44 44 44 44 44 44 35 44 44 35 35 44 44 44 44 44 44 44 44 35 44 72 44 44 44 44 35 44 44 35 35 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 35 44 44 44 35 44 44 44 44 44 44 44 44 44 44 35 35 44 44 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 72 44 44 44 44 44 44 44 44 35 44 44 44 35 44 44 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 44 44 44 44 44 44 44 44 35 44 44 35 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 44 44 44 35 44 44 44 44 44 35 44 44 44 44 44 44 44 44 35 44 35 be 72 44 44 44 44 44 44 44 44 44 44 44 44 fe 44 44 44 44 fe 44 44 44 44 fe fe 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 44 44 fe 44 44 44 44 fe 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 44 fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 03 fe 44 44 44 44 03 03 fe 44 44 44 44 44 44 44 44 03 fe 03 fe 44 44 44 44 44 44 44 44 03 fe 44 44 44 44 44 03 fe 44 44 44 44 44 44 03 fe 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 03 fe 44 44 44 44 03 fe 72 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 fe 44 44 44
*/
