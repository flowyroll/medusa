.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x17e44, %rsi
lea addresses_A_ht+0x108f4, %rdi
nop
nop
cmp $45958, %r13
mov $41, %rcx
rep movsl
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x17774, %rsi
lea addresses_WT_ht+0xeb38, %rdi
nop
nop
nop
cmp $13403, %r15
mov $35, %rcx
rep movsw
sub %rdi, %rdi
lea addresses_WT_ht+0x28f4, %rsi
lea addresses_WT_ht+0x30f4, %rdi
nop
nop
and %rax, %rax
mov $6, %rcx
rep movsw
nop
inc %rax
lea addresses_normal_ht+0x196f4, %rsi
lea addresses_A_ht+0x6cf4, %rdi
nop
add $34577, %r11
mov $12, %rcx
rep movsw
nop
nop
dec %r15
lea addresses_UC_ht+0x319a, %r15
nop
and %rdi, %rdi
mov (%r15), %si
nop
nop
dec %rcx
lea addresses_normal_ht+0x83f4, %rsi
lea addresses_normal_ht+0x4934, %rdi
nop
nop
nop
and %r14, %r14
mov $71, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x18352, %rsi
lea addresses_WC_ht+0xf74, %rdi
nop
and %r11, %r11
mov $42, %rcx
rep movsq
nop
nop
sub $23384, %rdi
lea addresses_D_ht+0x10e94, %r11
cmp $63252, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
and $0xffffffffffffffc0, %r11
vmovaps %ymm3, (%r11)
cmp %rdi, %rdi
lea addresses_D_ht+0xc0f4, %rsi
lea addresses_UC_ht+0x198f4, %rdi
nop
nop
nop
nop
dec %r11
mov $114, %rcx
rep movsq
nop
sub $54185, %rcx
lea addresses_D_ht+0x150ec, %r13
nop
nop
nop
nop
nop
dec %rax
movl $0x61626364, (%r13)
nop
nop
nop
and $11357, %rax
lea addresses_UC_ht+0x1b084, %rsi
lea addresses_UC_ht+0x100ae, %rdi
nop
nop
xor %r11, %r11
mov $104, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0x94f4, %r9
nop
inc %rdx
movl $0x51525354, (%r9)
nop
nop
nop
nop
nop
cmp $6381, %rsi

// Store
mov $0x7cf4be00000000f4, %rdi
nop
nop
dec %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_A+0xe814, %rdi
nop
cmp %rbp, %rbp
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
and %r13, %r13

// Store
lea addresses_WC+0x1b2e4, %rsi
clflush (%rsi)
cmp $36199, %r8
mov $0x5152535455565758, %r9
movq %r9, %xmm0
vmovups %ymm0, (%rsi)
nop
nop
xor $35550, %rbp

// Store
lea addresses_RW+0x12d0a, %r8
sub $10223, %r13
movw $0x5152, (%r8)
xor $19182, %rsi

// Store
lea addresses_D+0x17274, %r9
clflush (%r9)
nop
inc %rbp
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r9)
nop
cmp $33364, %rbp

// Faulty Load
lea addresses_A+0x1f8f4, %rdi
nop
nop
nop
xor %rbp, %rbp
movups (%rdi), %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': True, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'46': 1, '00': 4}
00 00 00 46 00
*/
