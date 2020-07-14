.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x18362, %rbx
clflush (%rbx)
nop
add %r13, %r13
mov (%rbx), %ax
nop
nop
nop
sub $48796, %r9
lea addresses_D_ht+0x105bd, %r13
nop
and $4115, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x179da, %rsi
lea addresses_normal_ht+0x12f7a, %rdi
nop
nop
and $23314, %rax
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $2078, %r9
lea addresses_A_ht+0x15ada, %r13
dec %rsi
movb (%r13), %al
cmp %rbp, %rbp
lea addresses_A_ht+0x1265a, %r9
nop
dec %rsi
mov $0x6162636465666768, %r13
movq %r13, (%r9)
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x1d61a, %rsi
lea addresses_WT_ht+0x1c3ca, %rdi
nop
nop
nop
nop
sub $30974, %r13
mov $90, %rcx
rep movsl
add %rbp, %rbp
lea addresses_D_ht+0x176da, %r13
nop
nop
nop
and $53126, %r9
mov (%r13), %cx
nop
nop
nop
nop
nop
inc %r9
lea addresses_A_ht+0x1691a, %rax
nop
xor $58036, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm3
and $0xffffffffffffffc0, %rax
vmovaps %ymm3, (%rax)
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0xb1da, %rsi
lea addresses_A_ht+0x16a9a, %rdi
nop
add %rax, %rax
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $40873, %rcx
lea addresses_D_ht+0x1cada, %rsi
lea addresses_WT_ht+0x1485a, %rdi
nop
nop
nop
and $24788, %r9
mov $78, %rcx
rep movsb
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rbx
push %rcx

// Store
lea addresses_D+0x16e3a, %r13
nop
nop
nop
nop
inc %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm2
vmovups %ymm2, (%r13)
nop
nop
nop
nop
add $5642, %r12

// Store
lea addresses_PSE+0x5bdc, %r9
xor %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
movaps %xmm7, (%r9)
nop
nop
nop
nop
sub %r9, %r9

// Store
mov $0x48817300000003b2, %r12
sub %r9, %r9
movw $0x5152, (%r12)
nop
cmp %r10, %r10

// Store
lea addresses_WC+0x2ada, %rcx
nop
nop
nop
inc %r12
movw $0x5152, (%rcx)
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x7ada, %r12
nop
nop
xor $62231, %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm5
movups %xmm5, (%r12)
nop
nop
xor %r10, %r10

// Faulty Load
lea addresses_WT+0x7ada, %r13
nop
nop
nop
nop
cmp %r10, %r10
vmovaps (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 1, 'NT': True, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'46': 2, '00': 86, '45': 2}
00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
