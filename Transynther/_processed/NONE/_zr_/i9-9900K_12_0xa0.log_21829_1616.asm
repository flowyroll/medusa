.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf1ec, %rdx
nop
nop
nop
nop
dec %r10
movl $0x61626364, (%rdx)
dec %r12
lea addresses_UC_ht+0x132ec, %rsi
lea addresses_D_ht+0x91cc, %rdi
nop
nop
nop
nop
sub %r10, %r10
mov $13, %rcx
rep movsl
nop
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x1428c, %rsi
lea addresses_D_ht+0x1196c, %rdi
nop
nop
inc %r11
mov $102, %rcx
rep movsl
nop
xor $32323, %rdi
lea addresses_D_ht+0x76c4, %r11
nop
nop
nop
xor $23862, %rdx
mov (%r11), %rdi
nop
nop
nop
nop
add $16049, %rcx
lea addresses_D_ht+0x9c2c, %rsi
nop
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%rsi)
nop
and %r10, %r10
lea addresses_A_ht+0x1f5c, %r12
nop
nop
nop
nop
nop
add $9546, %r10
movb $0x61, (%r12)
cmp $53589, %rdi
lea addresses_WC_ht+0xebbc, %rdx
nop
nop
cmp $17442, %rsi
movb (%rdx), %r11b
dec %rsi
lea addresses_A_ht+0xfaec, %rdx
nop
nop
nop
nop
nop
xor %r11, %r11
movw $0x6162, (%rdx)
nop
nop
and $32167, %rdx
lea addresses_WC_ht+0x16bc4, %rdx
clflush (%rdx)
nop
nop
nop
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
xor $31043, %r10
lea addresses_WT_ht+0x14aec, %rsi
lea addresses_D_ht+0x15d6c, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %r15, %r15
mov $80, %rcx
rep movsq
nop
nop
nop
nop
cmp $62892, %r15
lea addresses_A_ht+0x1d2ec, %rsi
lea addresses_A_ht+0xd2ec, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $123, %rcx
rep movsw
nop
and $6915, %r11
lea addresses_UC_ht+0xe774, %rsi
lea addresses_normal_ht+0xbcec, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $17, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x11aec, %r11
nop
nop
nop
nop
add %r15, %r15
vmovups (%r11), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
nop
sub $27724, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0xfe8, %rax
inc %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
movups %xmm7, (%rax)
nop
nop
cmp %r12, %r12

// Store
lea addresses_UC+0xdaec, %rcx
nop
nop
nop
nop
nop
xor %rsi, %rsi
movw $0x5152, (%rcx)
nop
nop
dec %rdi

// Store
lea addresses_RW+0x9c44, %rsi
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%rsi)
nop
inc %rsi

// Load
lea addresses_WC+0x9f6c, %rax
nop
nop
nop
sub $45099, %r13
mov (%rax), %rcx
nop
nop
nop
nop
and $12285, %r11

// Load
mov $0x2bee4e000000066c, %rdi
nop
nop
nop
nop
nop
cmp $59384, %rsi
movaps (%rdi), %xmm4
vpextrq $0, %xmm4, %r12
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_WC+0x28ec, %r13
nop
xor %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovaps %ymm3, (%r13)
nop
nop
nop
nop
nop
and $16952, %rcx

// Store
lea addresses_US+0x17201, %rcx
inc %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rcx)
nop
nop
and $10778, %r13

// Faulty Load
lea addresses_UC+0x32ec, %r12
nop
nop
nop
sub $30754, %rsi
movb (%r12), %r11b
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_P', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_NC', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'src': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
