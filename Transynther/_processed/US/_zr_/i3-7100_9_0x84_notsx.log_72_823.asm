.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x5c69, %rsi
lea addresses_WC_ht+0x1ee69, %rdi
nop
nop
nop
nop
dec %r11
mov $115, %rcx
rep movsw
nop
nop
nop
and $56082, %r9
lea addresses_A_ht+0x1943, %rsi
lea addresses_UC_ht+0x11c69, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $125, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_D_ht+0xec69, %r11
nop
sub $37679, %rdx
mov (%r11), %r10d
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x17969, %r10
clflush (%r10)
nop
nop
and $60936, %rcx
movb (%r10), %dl
nop
nop
nop
xor $27280, %r9
lea addresses_WC_ht+0x6069, %r9
nop
nop
nop
xor $37798, %rdx
movups (%r9), %xmm7
vpextrq $1, %xmm7, %rcx
nop
xor $2215, %rdi
lea addresses_WT_ht+0xe3c1, %rdx
nop
nop
cmp %r9, %r9
movups (%rdx), %xmm6
vpextrq $1, %xmm6, %r10
nop
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x10069, %r9
clflush (%r9)
nop
nop
nop
xor %r11, %r11
mov (%r9), %edi
nop
nop
nop
and $50315, %r11
lea addresses_normal_ht+0x1370d, %rsi
clflush (%rsi)
nop
nop
nop
nop
sub $50368, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm4
and $0xffffffffffffffc0, %rsi
vmovntdq %ymm4, (%rsi)
nop
nop
add $63439, %rdi
lea addresses_A_ht+0x15f69, %r10
add %r9, %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r10)
nop
nop
inc %r10
lea addresses_D_ht+0x1e1e9, %rdx
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%rdx), %r10d
nop
nop
add $7834, %r10
lea addresses_A_ht+0x14de9, %r11
nop
nop
nop
cmp %rdi, %rdi
mov (%r11), %esi
nop
nop
nop
nop
nop
add $44939, %r9
lea addresses_UC_ht+0x19ba9, %rsi
nop
nop
nop
nop
nop
cmp $33514, %rdi
mov (%rsi), %dx
nop
dec %r10
lea addresses_normal_ht+0x9469, %rsi
lea addresses_WT_ht+0xa7d9, %rdi
nop
nop
inc %r12
mov $85, %rcx
rep movsb
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0xbfb2, %rdi
nop
nop
nop
nop
nop
inc %r9
mov (%rdi), %r12w
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x8b69, %r12
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
cmp $51318, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rbp
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x5469, %r13
nop
nop
and $59024, %rbp
mov (%r13), %r10d
lea oracles, %rsi
and $0xff, %r10
shlq $12, %r10
mov (%rsi,%r10,1), %r10
pop %rsi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 4, 'congruent': 9, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 72}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
