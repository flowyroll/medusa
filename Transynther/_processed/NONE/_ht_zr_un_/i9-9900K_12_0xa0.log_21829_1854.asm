.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1881a, %rsi
lea addresses_A_ht+0x53fa, %rdi
nop
nop
nop
nop
nop
cmp %r13, %r13
mov $46, %rcx
rep movsl
add %r8, %r8
lea addresses_A_ht+0x1a67a, %r11
xor %rsi, %rsi
movb $0x61, (%r11)
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xa51a, %rsi
lea addresses_normal_ht+0x1a26a, %rdi
nop
nop
mfence
mov $106, %rcx
rep movsw
nop
nop
sub $31327, %r8
lea addresses_D_ht+0x40fa, %rsi
lea addresses_WC_ht+0x1212, %rdi
nop
dec %rbx
mov $50, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $11831, %rdi
lea addresses_WT_ht+0x1658a, %r8
nop
nop
cmp %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x24fa, %rsi
lea addresses_WT_ht+0x12bfa, %rdi
nop
dec %rbp
mov $34, %rcx
rep movsw
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x393a, %rbp
nop
add $64484, %r11
mov (%rbp), %cx
nop
xor %rbx, %rbx
lea addresses_normal_ht+0x5968, %rsi
lea addresses_A_ht+0x1bb76, %rdi
nop
nop
nop
sub $1398, %r8
mov $67, %rcx
rep movsq
add $47647, %rbp
lea addresses_WC_ht+0x180aa, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
add $15545, %r13
movb (%rbx), %r11b
nop
sub $48338, %rcx
lea addresses_A_ht+0x19d3a, %r13
nop
nop
inc %rdi
movl $0x61626364, (%r13)
nop
nop
nop
nop
xor $48972, %rdi
lea addresses_UC_ht+0x199fa, %rbx
nop
nop
nop
nop
nop
xor $49763, %rcx
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x126fa, %rcx
nop
sub %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%rcx)
nop
nop
nop
nop
xor %r13, %r13
lea addresses_WT_ht+0xf8fa, %r13
cmp %rsi, %rsi
mov (%r13), %r11
nop
nop
nop
nop
sub $4242, %r8
lea addresses_UC_ht+0x46fa, %rsi
lea addresses_WC_ht+0xecfa, %rdi
clflush (%rsi)
and %rbx, %rbx
mov $94, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $25879, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_WT+0x1c2fa, %rcx
nop
nop
cmp $59738, %rdx
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %r10
lea oracles, %rcx
and $0xff, %r10
shlq $12, %r10
mov (%rcx,%r10,1), %r10
pop %rdx
pop %rcx
pop %rax
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'44': 3950, '46': 4, 'ff': 2, '00': 17583, '47': 272, '08': 12, '50': 6}
00 44 00 00 00 00 00 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 44 00 44 44 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 44 44 00 44 44 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 44 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 47 47 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 47 44 00 00 44 00 47 00 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 44 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 47 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 47 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 44 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 47 00 47 00 44 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 44 44 00 47 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 00 00 08 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 47 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 00 00 00 00 00 00 00 00 00 44 44 00 44 00 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 44 47 44 00 44 44 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00
*/
