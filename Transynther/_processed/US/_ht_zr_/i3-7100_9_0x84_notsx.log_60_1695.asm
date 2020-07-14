.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xfc82, %rsi
lea addresses_normal_ht+0x12162, %rdi
nop
nop
nop
nop
nop
cmp $49244, %r12
mov $11, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x14bf2, %rsi
nop
nop
nop
nop
nop
cmp $16001, %rdx
movb (%rsi), %r11b
sub $35757, %rsi
lea addresses_normal_ht+0x96c2, %rsi
lea addresses_A_ht+0x159c2, %rdi
nop
nop
and %rbx, %rbx
mov $4, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $24324, %rbx
lea addresses_WT_ht+0x168c2, %r11
nop
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, (%r11)
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0xa6a2, %r8
clflush (%r8)
nop
nop
nop
add %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r8)
sub $63818, %r8

// Faulty Load
lea addresses_US+0xc0c2, %rsi
nop
nop
xor %rdi, %rdi
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %r14
and $0xff, %r8
shlq $12, %r8
mov (%r14,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 58, '44': 2}
00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
