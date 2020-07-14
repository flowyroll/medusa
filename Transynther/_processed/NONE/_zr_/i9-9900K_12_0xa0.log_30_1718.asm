.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x53b1, %r10
nop
nop
nop
nop
sub %r12, %r12
mov (%r10), %r9d
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x10e79, %rsi
lea addresses_WT_ht+0xd279, %rdi
nop
nop
dec %r11
mov $83, %rcx
rep movsw
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x2279, %r11
inc %r12
mov (%r11), %r10
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x11279, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
add $55598, %rsi
lea addresses_D_ht+0x6e99, %r11
nop
and %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1aa79, %rsi
lea addresses_D_ht+0xee19, %rdi
nop
nop
nop
sub $9104, %r14
mov $44, %rcx
rep movsq
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0xecbd, %r11
nop
and %rcx, %rcx
mov $0x6162636465666768, %r10
movq %r10, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
sub $13449, %rdi
lea addresses_A_ht+0x6879, %rsi
lea addresses_WC_ht+0x1af9, %rdi
clflush (%rsi)
nop
xor $10688, %r9
mov $3, %rcx
rep movsb
nop
and $17201, %r10
lea addresses_D_ht+0x16c51, %r10
nop
nop
nop
nop
nop
xor $46352, %rcx
movw $0x6162, (%r10)
nop
nop
nop
nop
nop
sub $33560, %r12
lea addresses_WC_ht+0x3a59, %r10
nop
sub %r9, %r9
mov (%r10), %r12
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1a319, %r9
nop
nop
nop
nop
xor $48233, %rcx
movl $0x61626364, (%r9)
nop
nop
nop
nop
xor $26845, %r12
lea addresses_WC_ht+0x8179, %rsi
lea addresses_normal_ht+0xfeb9, %rdi
nop
nop
nop
nop
nop
xor $26635, %r14
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
and $55334, %r11
lea addresses_UC_ht+0xd8c3, %r11
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r9
movq %r9, %xmm7
movups %xmm7, (%r11)
nop
nop
nop
add $31647, %r9
lea addresses_D_ht+0x17f93, %r10
add %rsi, %rsi
mov (%r10), %rdi
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0xa679, %rsi
nop
nop
nop
nop
nop
xor $6565, %rdi
movb $0x61, (%rsi)
nop
nop
add $61411, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x7bb9, %rsi
lea addresses_normal+0xa979, %rdi
and %rbp, %rbp
mov $36, %rcx
rep movsl
nop
nop
sub $39072, %rbp

// Load
mov $0x21790b0000000279, %rbp
nop
nop
and %r8, %r8
mov (%rbp), %r11w
nop
nop
nop
cmp %rsi, %rsi

// Store
mov $0x239, %r11
nop
nop
xor %r12, %r12
movb $0x51, (%r11)
nop
nop
add $33448, %rsi

// Faulty Load
lea addresses_A+0x1fe79, %r12
nop
nop
xor %rsi, %rsi
movups (%r12), %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal'}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 4, 'type': 'addresses_P', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 3, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 7, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 1}}
{'00': 30}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
