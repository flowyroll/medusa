.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xc617, %rax
nop
sub $49786, %rsi
mov (%rax), %rcx
nop
nop
nop
nop
inc %r12
lea addresses_D_ht+0x1d487, %r10
and $17431, %r8
movb $0x61, (%r10)
and $37515, %rcx
lea addresses_D_ht+0x1ecc1, %rsi
lea addresses_WC_ht+0xd357, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0x7e67, %rsi
lea addresses_WT_ht+0x15e97, %rdi
clflush (%rsi)
nop
and $26966, %rax
mov $105, %rcx
rep movsq
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x4997, %rsi
lea addresses_D_ht+0xee97, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $14, %rcx
rep movsq
nop
nop
nop
nop
cmp $31596, %r12
lea addresses_WC_ht+0x15a97, %rax
nop
nop
nop
add %r10, %r10
movups (%rax), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x1ee97, %r12
nop
nop
xor $16848, %r8
movb (%r12), %al
nop
cmp $22402, %r8
lea addresses_WC_ht+0x6397, %rsi
lea addresses_A_ht+0xf367, %rdi
nop
nop
sub %r14, %r14
mov $73, %rcx
rep movsw
nop
and %r10, %r10
lea addresses_WT_ht+0x8297, %rsi
lea addresses_D_ht+0x144ed, %rdi
clflush (%rdi)
and $23502, %r12
mov $89, %rcx
rep movsb
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x7697, %r8
clflush (%r8)
nop
nop
nop
nop
sub $23664, %r10
movb $0x61, (%r8)
nop
nop
and %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %rax
push %rbp
push %rdx

// Store
lea addresses_normal+0x12097, %r10
nop
inc %r12
movl $0x51525354, (%r10)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Faulty Load
lea addresses_US+0x1f697, %rdx
nop
xor $53456, %rbp
movups (%rdx), %xmm4
vpextrq $1, %xmm4, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rdx
pop %rbp
pop %rax
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 9, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'44': 12833, '48': 1892, '49': 149, '20': 4, '00': 5894, '46': 1052, '08': 1, 'ff': 4}
00 00 44 48 00 44 44 46 48 00 44 00 48 00 44 46 00 00 00 44 48 44 44 44 44 00 00 00 44 44 00 44 44 46 44 44 44 46 00 44 44 00 44 44 46 44 44 44 44 00 44 44 00 00 44 48 00 44 44 44 44 48 44 46 44 00 44 44 48 00 44 00 44 00 00 44 44 48 00 44 44 48 44 44 00 44 00 44 44 00 00 44 44 00 44 44 44 00 44 44 48 44 44 44 46 44 48 00 44 44 44 46 44 46 00 44 44 00 00 44 44 00 48 44 44 00 00 00 44 00 00 00 00 44 48 00 44 00 44 44 44 00 00 44 44 48 44 44 48 44 48 48 44 44 00 44 48 44 44 00 44 44 44 48 44 44 46 00 00 44 44 00 00 44 44 00 44 44 00 00 44 44 48 00 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 46 00 44 00 00 44 00 44 44 44 44 44 00 44 44 00 44 44 46 00 44 44 48 44 44 44 00 00 00 44 00 00 44 44 46 44 44 00 44 00 46 00 00 00 44 44 46 44 00 00 44 00 00 00 00 44 46 00 44 44 00 44 44 00 00 48 44 48 00 44 44 44 00 00 44 44 44 00 44 44 00 48 44 44 00 00 44 44 00 00 44 44 44 00 44 44 44 44 00 44 46 00 44 44 00 00 44 46 44 44 46 48 00 44 44 00 44 44 00 00 44 44 44 44 44 44 44 48 44 44 44 00 44 00 00 44 44 44 00 46 00 44 44 44 00 44 44 44 44 44 44 44 44 44 46 00 44 48 00 44 44 48 46 44 44 48 44 44 44 00 44 00 00 00 44 44 46 00 00 49 00 44 44 48 00 44 44 48 44 00 00 48 00 44 44 44 00 44 44 44 44 44 44 00 44 44 44 48 00 44 44 00 44 44 44 00 44 44 00 48 44 44 00 44 44 44 00 00 44 44 00 00 44 44 46 00 00 44 00 00 44 44 48 00 48 44 44 46 00 44 44 44 00 44 44 48 44 44 49 48 00 44 44 00 00 44 44 44 48 00 44 00 44 00 44 44 00 44 44 44 00 44 44 44 00 44 00 44 44 00 44 48 48 44 00 44 00 44 44 44 48 44 44 48 44 44 48 00 48 44 00 44 00 44 44 00 44 48 44 44 44 00 44 00 46 00 44 44 00 44 44 46 44 44 44 48 44 44 44 00 00 00 44 46 00 44 48 44 00 44 44 48 44 44 00 48 00 46 44 00 44 44 44 44 00 44 44 48 44 44 00 48 44 44 44 00 00 44 46 00 44 44 44 48 44 44 00 00 44 44 00 00 44 44 44 00 44 44 46 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 48 00 44 44 00 44 44 46 00 44 44 46 48 44 44 48 44 44 44 46 44 00 44 00 00 44 44 00 44 44 44 00 00 44 44 00 44 48 00 00 44 44 00 44 44 44 44 00 44 44 00 00 44 44 00 44 44 48 44 44 48 00 44 44 46 44 44 44 44 44 44 46 00 44 44 48 48 44 44 44 00 44 44 00 44 44 00 44 44 46 44 44 00 00 44 44 44 00 00 00 46 00 44 44 44 00 00 44 00 00 48 00 00 44 00 44 44 48 44 44 00 48 44 44 44 00 00 44 44 00 44 44 44 44 00 44 44 44 46 00 00 44 44 44 00 00 44 44 48 46 44 00 00 44 48 44 44 46 00 44 44 00 44 44 00 44 44 00 46 44 00 44 44 44 00 00 44 44 44 48 44 44 48 44 00 00 48 00 44 44 44 44 48 44 44 00 44 44 44 00 00 44 44 48 44 44 48 00 44 48 44 44 48 00 44 44 44 44 44 46 44 44 44 00 44 44 44 44 48 44 44 44 44 44 46 00 44 44 00 44 00 00 00 44 44 48 00 44 44 00 44 44 00 44 44 44 00 44 00 44 00 44 44 44 00 00 00 44 48 44 44 48 00 44 44 44 44 44 44 00 44 44 00 00 00 44 44 00 44 00 46 00 44 00 46 00 44 00 00 44 44 44 00 00 44 00 44 00 00 44 44 44 00 44 44 44 44 00 44 46 00 44 44 00 00 00 44 46 00 44 44 46 44 48 48 44 48 44 44 00 00 44 00 44 44 44 44 48 44 44 44 46 00 44 44 48 44 48 48 44 44 44 46 44 44 44 00 44 44 00 00 00 44 44 00 44 44 00 00 44 44 44 48 44
*/
