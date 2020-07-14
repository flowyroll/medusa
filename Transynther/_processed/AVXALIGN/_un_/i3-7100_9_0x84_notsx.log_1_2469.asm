.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1422, %r11
xor %rsi, %rsi
movb (%r11), %cl
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x1b2e0, %rsi
lea addresses_UC_ht+0x1bef2, %rdi
nop
xor %r13, %r13
mov $70, %rcx
rep movsw
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_WC_ht+0xe2c2, %rbp
nop
nop
add %rcx, %rcx
mov (%rbp), %r13d
nop
nop
sub $18934, %rsi
lea addresses_UC_ht+0x1d042, %rsi
lea addresses_UC_ht+0x10c02, %rdi
nop
nop
inc %r10
mov $95, %rcx
rep movsw
sub $64621, %rbp
lea addresses_UC_ht+0x18942, %rsi
nop
cmp $17031, %r10
mov (%rsi), %r13d
and $22336, %r10
lea addresses_WT_ht+0x12cc6, %rsi
lea addresses_D_ht+0x1acca, %rdi
clflush (%rsi)
nop
cmp %r8, %r8
mov $79, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x19842, %rbp
sub %rsi, %rsi
movb $0x61, (%rbp)
nop
inc %r10
lea addresses_normal_ht+0x1ed60, %rcx
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%rcx)
nop
cmp $24145, %rcx
lea addresses_A_ht+0x100c2, %rcx
nop
nop
nop
nop
nop
xor %r8, %r8
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rsi
sub %rcx, %rcx
lea addresses_normal_ht+0x150c2, %r10
nop
nop
nop
nop
sub %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
xor $49871, %rcx
lea addresses_WT_ht+0xc242, %r13
clflush (%r13)
nop
nop
nop
nop
and %r8, %r8
mov (%r13), %r10w
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xedc2, %r13
nop
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
cmp %r14, %r14

// Store
lea addresses_WC+0x7ac2, %r11
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %r9
movq %r9, (%r11)
nop
nop
nop
nop
nop
cmp %r9, %r9

// REPMOV
lea addresses_A+0xa6c2, %rsi
mov $0x399e4a0000000cc2, %rdi
nop
nop
nop
add %rax, %rax
mov $108, %rcx
rep movsw
nop
nop
and $16364, %r14

// Faulty Load
mov $0x399e4a0000000cc2, %rcx
nop
nop
nop
nop
cmp $60175, %rdx
mov (%rcx), %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_NC', 'congruent': 0, 'same': True}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'14': 1}
14
*/
