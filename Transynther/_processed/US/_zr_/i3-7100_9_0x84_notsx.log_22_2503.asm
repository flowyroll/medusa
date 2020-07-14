.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xe80a, %r9
nop
add %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r9)
cmp $41654, %r9
lea addresses_WT_ht+0x54e1, %rcx
xor $29038, %r10
mov (%rcx), %rax
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0x873d, %r11
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov (%r11), %r10d
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x1a369, %rsi
lea addresses_normal_ht+0x2599, %rdi
nop
nop
cmp %rax, %rax
mov $72, %rcx
rep movsb
nop
nop
sub $50620, %rcx
lea addresses_WT_ht+0xe1, %rsi
clflush (%rsi)
nop
inc %rbp
movb (%rsi), %al
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1aa1d, %r9
nop
nop
nop
nop
and %rdi, %rdi
movb $0x61, (%r9)
nop
cmp %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x100ae700000000e1, %rbx
nop
nop
nop
nop
nop
and $65496, %rcx
mov $0x5152535455565758, %r13
movq %r13, (%rbx)
nop
nop
nop
nop
nop
cmp %rsi, %rsi

// Store
lea addresses_D+0xf6e1, %rsi
nop
nop
nop
and $11532, %rdx
mov $0x5152535455565758, %r12
movq %r12, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi

// Load
lea addresses_WC+0x1b3d1, %rdx
nop
nop
cmp %rcx, %rcx
movaps (%rdx), %xmm2
vpextrq $0, %xmm2, %r15
nop
nop
sub %r12, %r12

// Load
mov $0x961, %r15
nop
nop
nop
cmp %rbx, %rbx
movntdqa (%r15), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
sub $22723, %rdx

// Faulty Load
lea addresses_US+0x178e1, %r13
nop
nop
sub $43152, %rbx
mov (%r13), %r12w
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_NC', 'same': False, 'size': 8, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_P', 'same': False, 'size': 16, 'congruent': 7, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 11, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 22}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
