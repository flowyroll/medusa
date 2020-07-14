.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x19e4b, %rsi
lea addresses_normal_ht+0x1d3eb, %rdi
clflush (%rsi)
nop
nop
nop
xor %r9, %r9
mov $11, %rcx
rep movsw
cmp %rdx, %rdx
lea addresses_normal_ht+0xbd93, %rsi
lea addresses_A_ht+0x506b, %rdi
nop
nop
nop
add $44367, %r12
mov $19, %rcx
rep movsb
sub $49268, %rsi
lea addresses_WT_ht+0x8a4b, %rcx
nop
xor %r11, %r11
mov $0x6162636465666768, %rdx
movq %rdx, %xmm6
movups %xmm6, (%rcx)
nop
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0xd8ec, %rcx
inc %rsi
mov (%rcx), %r11w
nop
nop
nop
nop
nop
and $47041, %rsi
lea addresses_WT_ht+0x109cb, %rsi
lea addresses_WT_ht+0x298b, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $65, %rcx
rep movsb
nop
nop
dec %rsi
lea addresses_normal_ht+0x1d6cb, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rcx), %r11d
nop
nop
nop
sub $18376, %r11
lea addresses_UC_ht+0x62ab, %rsi
lea addresses_normal_ht+0x1024b, %rdi
nop
nop
nop
nop
nop
inc %r13
mov $118, %rcx
rep movsq
add %rcx, %rcx
lea addresses_D_ht+0x12137, %r11
nop
nop
nop
nop
sub %rsi, %rsi
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rdx
nop
nop
nop
nop
nop
cmp $35885, %rdi
lea addresses_WC_ht+0x7a4b, %rdx
and $2351, %r11
movw $0x6162, (%rdx)
nop
nop
nop
inc %r11
lea addresses_WC_ht+0x1407b, %rsi
lea addresses_D_ht+0x524b, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $87, %rcx
rep movsl
nop
nop
cmp $24345, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdx

// Load
lea addresses_WC+0x1c24b, %r9
nop
nop
and %rbx, %rbx
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
cmp $56375, %r9

// Store
lea addresses_normal+0xa68b, %rax
nop
nop
nop
sub %rcx, %rcx
movw $0x5152, (%rax)
cmp $41559, %r12

// Store
lea addresses_D+0x17a4b, %rdx
nop
nop
nop
nop
xor $39257, %rbx
movl $0x51525354, (%rdx)
nop
xor $41959, %rdx

// Load
lea addresses_UC+0x1f24b, %r12
nop
add %rcx, %rcx
mov (%r12), %rbx
inc %rax

// Store
lea addresses_A+0x13d8b, %rbx
nop
nop
nop
inc %r8
mov $0x5152535455565758, %r12
movq %r12, (%rbx)
nop
nop
nop
nop
and %rax, %rax

// Store
mov $0xa8b, %r9
nop
sub %rbx, %rbx
movl $0x51525354, (%r9)
nop
nop
and %r12, %r12

// Load
lea addresses_WC+0x1431b, %rax
nop
nop
nop
nop
nop
add %rbx, %rbx
mov (%rax), %r12d
nop
nop
xor $36325, %rcx

// Faulty Load
lea addresses_WC+0x1c24b, %r8
nop
and %rbx, %rbx
vmovaps (%r8), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'08': 3, '48': 18723, '72': 2, '46': 1645, '00': 1456}
48 48 48 48 48 48 00 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 46 46 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 46 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 46 48 46 48 48 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 00 46 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 46 48 46 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 46 46 48 48 48 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 00 46 46 46 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 00 48 46 46 48 48 48 48 48 48 48 48 46 00 48 46 46 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 46 46 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 46 48 48 48 48 48 48 48 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 48 46 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 48 00 00 48 46 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 00 00 46 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 46 48 48 48 48 48 48 48 48 48 00 46 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 46
*/
