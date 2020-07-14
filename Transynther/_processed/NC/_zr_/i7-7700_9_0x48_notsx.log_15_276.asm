.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %r8
push %rdi
lea addresses_UC_ht+0x1be12, %r8
nop
nop
cmp %r14, %r14
movw $0x6162, (%r8)
nop
nop
nop
inc %r10
lea addresses_normal_ht+0x1b972, %r13
sub $25148, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
and $49256, %r8
lea addresses_D_ht+0xb12, %r11
clflush (%r11)
nop
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
xor $63153, %r15
lea addresses_WT_ht+0x11c92, %r10
nop
nop
nop
nop
nop
sub $57382, %r8
mov (%r10), %r11
nop
nop
nop
nop
add %r8, %r8
pop %rdi
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x1a992, %rsi
nop
nop
nop
nop
sub $23263, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi

// Store
lea addresses_UC+0xf492, %rbp
xor %rdx, %rdx
mov $0x5152535455565758, %r14
movq %r14, %xmm3
movups %xmm3, (%rbp)
nop
nop
nop
nop
nop
xor $11457, %rdi

// REPMOV
lea addresses_A+0x1a8f2, %rsi
mov $0x992, %rdi
nop
nop
xor $38744, %r12
mov $49, %rcx
rep movsb
nop
nop
and %r14, %r14

// Store
mov $0xd62, %rdx
nop
nop
nop
add %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rdx)
nop
cmp %r14, %r14

// Store
mov $0xbeb4a000000027a, %r9
nop
nop
nop
nop
xor $48320, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
sub %rdi, %rdi

// Load
mov $0x28391b0000000792, %r14
add %rcx, %rcx
mov (%r14), %r9d
nop
nop
nop
and %rsi, %rsi

// Faulty Load
mov $0x28391b0000000792, %rcx
add $15778, %rdi
mov (%rcx), %r14w
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_P'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
