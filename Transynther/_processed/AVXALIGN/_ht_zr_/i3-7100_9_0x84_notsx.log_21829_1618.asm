.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1834b, %rsi
lea addresses_WC_ht+0xb20b, %rdi
nop
nop
nop
nop
nop
sub $13823, %rdx
mov $40, %rcx
rep movsb
nop
sub $60322, %r12
lea addresses_UC_ht+0x9209, %r13
nop
nop
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
and $0xffffffffffffffc0, %r13
movaps %xmm4, (%r13)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0xea16, %r12
nop
inc %r9
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rsi
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x894b, %rsi
lea addresses_D_ht+0x8705, %rdi
clflush (%rdi)
nop
nop
nop
add %r11, %r11
mov $123, %rcx
rep movsw
nop
cmp $9707, %r11
lea addresses_D_ht+0x1ab4b, %rsi
nop
nop
nop
inc %r12
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
nop
nop
sub $19682, %rcx
lea addresses_WT_ht+0x1554b, %rsi
lea addresses_UC_ht+0x59cb, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $108, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_normal_ht+0xf24b, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %r9
movq %r9, %xmm7
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm7, (%rdi)
nop
nop
nop
sub $35868, %r13
lea addresses_UC_ht+0x578b, %r12
nop
xor %rdi, %rdi
movb $0x61, (%r12)
nop
nop
nop
nop
and $29141, %r11
lea addresses_D_ht+0xf74b, %rdx
nop
nop
nop
cmp %r9, %r9
mov (%rdx), %si
mfence
lea addresses_UC_ht+0x8f4b, %rdi
nop
add %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x1e34b, %rsi
lea addresses_WT_ht+0x2e1, %rdi
inc %r13
mov $51, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x1034b, %rsi
lea addresses_normal_ht+0x1cdfb, %rdi
nop
nop
xor $29192, %r9
mov $47, %rcx
rep movsl
add %r11, %r11
lea addresses_normal_ht+0xfb03, %r11
clflush (%r11)
nop
nop
nop
nop
sub $10598, %rcx
movw $0x6162, (%r11)
nop
nop
nop
nop
xor $11928, %r11
lea addresses_A_ht+0x9202, %rsi
lea addresses_A_ht+0x1a10b, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $57, %rcx
rep movsw
nop
nop
cmp $39783, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_RW+0x834b, %r12
nop
nop
and %r9, %r9
movaps (%r12), %xmm2
vpextrq $1, %xmm2, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'49': 11349, '00': 7092, '45': 2457, '44': 931}
49 49 49 00 49 00 49 49 45 00 49 49 00 45 49 00 00 49 49 00 49 00 00 49 49 00 49 49 00 00 49 00 00 49 49 45 49 00 00 49 00 45 45 00 49 49 00 00 44 00 44 00 49 45 49 44 49 49 00 45 44 49 49 49 00 49 49 00 49 49 00 00 49 44 45 49 00 45 49 00 00 49 00 00 49 49 00 49 45 49 49 00 00 49 00 00 49 49 00 49 49 00 45 49 45 00 49 00 49 44 49 49 49 00 45 49 00 00 49 44 00 49 49 00 00 49 00 49 00 00 49 00 45 49 49 49 00 00 49 45 00 49 49 00 49 49 00 00 49 49 49 00 45 49 45 49 49 00 49 49 49 00 49 00 00 49 45 00 49 49 49 00 45 49 49 49 44 00 49 49 45 45 49 49 49 49 00 45 49 45 00 49 49 00 45 49 00 49 00 45 49 49 49 49 44 00 45 49 00 45 49 44 00 49 49 00 00 49 49 00 00 49 45 49 49 45 00 49 49 00 49 49 44 00 49 49 00 00 49 44 49 49 49 49 49 00 49 00 00 49 00 49 45 49 49 45 00 49 49 00 00 49 49 00 49 49 00 45 44 00 49 49 00 00 49 49 49 49 00 49 45 44 00 49 49 00 00 49 49 45 49 00 00 49 44 49 44 49 49 00 49 49 00 45 49 45 00 49 49 00 44 00 49 00 45 49 45 00 49 49 44 49 00 45 49 49 49 49 44 49 00 00 00 49 49 44 00 49 00 49 49 49 45 49 49 00 00 49 49 00 49 49 00 00 45 49 49 49 00 49 00 49 00 49 49 49 00 00 49 00 00 49 00 00 44 00 00 49 45 49 49 49 49 44 00 49 49 00 00 49 49 00 45 49 00 45 49 49 49 49 49 49 44 49 49 49 00 00 49 00 44 00 45 49 45 49 49 44 49 49 49 00 49 00 00 49 00 00 49 49 00 00 49 49 45 00 49 00 49 00 45 45 00 49 49 00 45 44 49 49 49 00 49 45 00 49 49 00 49 45 00 49 49 00 49 49 00 00 49 45 49 00 45 49 49 49 49 00 45 49 00 00 49 49 49 44 00 49 49 00 45 44 00 49 00 49 49 49 49 49 00 00 49 49 00 49 00 49 44 49 45 00 49 00 49 00 49 49 49 00 00 49 45 49 49 49 00 45 49 00 49 00 49 00 00 49 49 49 00 49 49 00 45 49 49 00 00 49 49 49 49 49 45 00 49 44 00 49 49 45 45 49 49 49 49 49 49 00 45 00 00 49 49 49 49 00 49 49 49 00 00 49 49 49 00 49 49 00 49 00 49 00 49 49 45 45 00 49 00 00 00 49 49 49 45 45 00 45 49 00 49 49 49 49 00 00 49 45 00 49 45 49 49 00 45 49 00 00 49 49 49 49 49 00 45 49 49 49 00 49 49 45 00 49 00 49 49 45 00 49 49 49 45 49 00 00 49 49 00 00 49 00 49 49 45 49 49 00 49 49 00 49 49 44 49 49 49 00 00 49 00 00 49 49 00 49 49 00 49 49 00 49 49 00 45 49 00 49 49 00 49 49 00 49 00 49 49 44 49 44 49 49 49 45 00 49 45 00 49 49 45 49 44 00 00 49 00 00 49 00 00 49 49 00 49 49 00 00 49 44 00 00 44 00 49 49 45 00 49 49 49 49 00 00 49 00 00 49 44 45 49 00 49 49 44 49 49 49 00 45 49 00 49 00 00 44 00 45 49 00 49 45 49 49 49 49 49 00 45 49 45 49 49 00 49 49 00 00 45 49 49 00 00 49 00 00 49 49 00 00 49 45 49 00 45 49 49 49 00 00 49 00 00 49 00 00 49 49 00 45 49 00 45 49 45 49 00 00 49 00 00 49 00 00 49 45 49 49 00 00 49 49 49 00 00 49 49 49 49 00 49 00 49 49 00 49 49 00 49 00 45 49 49 00 00 49 45 00 49 00 45 49 45 00 49 49 49 44 00 49 49 00 49 00 45 49 45 49 49 00 45 49 49 45 00 49 49 00 45 45 49 49 49 00 45 49 00 00 49 00 45 49 45 00 49 49 45 00 49 49 00 49 49 00 49 49 00 00 49 49 00 49 49 00 00 49 00 49 45 49 49 00 45 49 00 49 49 49 49 45 00 49 49 00 00 45 49 49 49 49 00 45 49 00 49 49 00 45 49 49 49 49 49 45 00 49 49 00 00 49 00 00 44 45 49 49 49 00 00 49
*/
