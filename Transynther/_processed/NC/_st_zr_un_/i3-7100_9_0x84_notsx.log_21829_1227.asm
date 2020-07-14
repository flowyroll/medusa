.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x67e6, %rsi
lea addresses_UC_ht+0x8e46, %rdi
clflush (%rdi)
xor %r9, %r9
mov $123, %rcx
rep movsl
nop
and %rdi, %rdi
lea addresses_normal_ht+0x2752, %rdx
nop
nop
nop
nop
sub %r11, %r11
movb $0x61, (%rdx)
nop
and %rdx, %rdx
lea addresses_WT_ht+0xb112, %rsi
lea addresses_A_ht+0xf746, %rdi
nop
nop
sub %r15, %r15
mov $20, %rcx
rep movsw
nop
nop
nop
sub $14494, %rsi
lea addresses_normal_ht+0x13c36, %rsi
lea addresses_normal_ht+0x146, %rdi
nop
xor %r12, %r12
mov $59, %rcx
rep movsw
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_WC_ht+0xea06, %rsi
lea addresses_UC_ht+0x1fe6, %rdi
nop
nop
nop
nop
nop
add $30361, %r11
mov $42, %rcx
rep movsw
sub $24762, %rcx
lea addresses_normal_ht+0x1b606, %r11
cmp $7466, %r15
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
add %r15, %r15
lea addresses_WC_ht+0x4b36, %rsi
lea addresses_WC_ht+0xf346, %rdi
nop
inc %r12
mov $64, %rcx
rep movsq
nop
add %r11, %r11
lea addresses_A_ht+0xe572, %rsi
lea addresses_A_ht+0x3486, %rdi
cmp %r11, %r11
mov $105, %rcx
rep movsb
nop
nop
nop
nop
xor $33632, %rdx
lea addresses_A_ht+0x1ad17, %rsi
lea addresses_normal_ht+0xdb46, %rdi
nop
nop
nop
nop
cmp $27645, %r12
mov $29, %rcx
rep movsl
nop
nop
nop
nop
add $61047, %rdx
lea addresses_A_ht+0xcd46, %rcx
clflush (%rcx)
nop
nop
add %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
cmp %r12, %r12
lea addresses_WC_ht+0x104e6, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $53309, %r9
movw $0x6162, (%rsi)
nop
xor %rsi, %rsi
lea addresses_WC_ht+0xe86, %rdi
nop
nop
and %rsi, %rsi
movb $0x61, (%rdi)
nop
nop
and $15082, %r12
lea addresses_A_ht+0xea36, %rsi
lea addresses_WC_ht+0x16346, %rdi
clflush (%rsi)
nop
nop
nop
cmp $13716, %r11
mov $36, %rcx
rep movsb
sub %rsi, %rsi
lea addresses_A_ht+0x1bc96, %rsi
lea addresses_A_ht+0x946, %rdi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $93, %rcx
rep movsq
nop
nop
nop
nop
nop
add $57736, %rcx
lea addresses_WC_ht+0x13346, %rdx
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%rdx), %r9d
nop
nop
nop
nop
nop
add $64348, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1c19a, %r11
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r11)
nop
nop
nop
nop
nop
and %r8, %r8

// REPMOV
lea addresses_WC+0x3531, %rsi
lea addresses_A+0x42c6, %rdi
nop
nop
nop
nop
nop
add $42663, %r11
mov $102, %rcx
rep movsl
nop
nop
inc %r11

// Store
mov $0x26a, %r11
nop
nop
cmp $24666, %r8
mov $0x5152535455565758, %rax
movq %rax, (%r11)

// Exception!!!
mov (0), %rcx
nop
add %r8, %r8

// Faulty Load
mov $0xd340e0000000346, %r8
nop
nop
nop
add %rbp, %rbp
mov (%r8), %rsi
lea oracles, %r11
and $0xff, %rsi
shlq $12, %rsi
mov (%r11,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 8, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'ec': 1, '1a': 1106, 'd0': 1, '28': 2, '0a': 1, 'e0': 4, 'b8': 2, '55': 1, '00': 20675, '58': 4, '38': 24, 'be': 8}
00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 1a 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 1a 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00 00 00 1a 00 00 00 00 00 00 00 00
*/
