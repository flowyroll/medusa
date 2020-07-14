.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xb3c, %rcx
nop
nop
nop
nop
nop
and %r15, %r15
vmovups (%rcx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0xf5c4, %rsi
lea addresses_A_ht+0xe5ac, %rdi
nop
nop
nop
nop
nop
sub %r13, %r13
mov $99, %rcx
rep movsq
nop
nop
and %r13, %r13
lea addresses_A_ht+0x11e94, %rsi
lea addresses_A_ht+0x15dc4, %rdi
nop
nop
cmp $53791, %r12
mov $11, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $41564, %r13
lea addresses_UC_ht+0x143a3, %r12
nop
nop
nop
cmp $62642, %r8
movl $0x61626364, (%r12)
nop
cmp %r10, %r10
lea addresses_A_ht+0xaf9b, %rsi
lea addresses_D_ht+0x6544, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $37, %rcx
rep movsl
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x19944, %rdi
nop
nop
cmp $8544, %r10
movl $0x61626364, (%rdi)
nop
nop
and %r8, %r8
lea addresses_D_ht+0x1ad44, %rsi
lea addresses_D_ht+0x1d204, %rdi
nop
nop
nop
nop
add %r10, %r10
mov $124, %rcx
rep movsw
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0x32e4, %r13
nop
xor %rdi, %rdi
movl $0x61626364, (%r13)
nop
nop
nop
cmp %r12, %r12
lea addresses_A_ht+0x6394, %r10
nop
nop
nop
nop
cmp $34925, %r13
mov (%r10), %si
nop
nop
nop
nop
nop
xor $44048, %rsi
lea addresses_WT_ht+0xedc4, %rsi
lea addresses_normal_ht+0x193d6, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $84, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x108a4, %rcx
nop
nop
nop
nop
nop
inc %r12
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
inc %r13
lea addresses_WC_ht+0x7c4, %r13
nop
nop
nop
lfence
mov (%r13), %r15
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rcx
push %rsi

// Store
lea addresses_PSE+0x169c4, %rcx
nop
nop
nop
nop
nop
xor $55847, %r13
mov $0x5152535455565758, %r9
movq %r9, %xmm7
movntdq %xmm7, (%rcx)
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0x777e, %rax
nop
nop
add $24337, %r12
movb $0x51, (%rax)
nop
nop
nop
and %rax, %rax

// Faulty Load
lea addresses_A+0x3dc4, %r13
nop
nop
nop
and %r9, %r9
mov (%r13), %r11d
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': True, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 1}}
[Faulty Load]
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'00': 4}
00 00 00 00
*/
