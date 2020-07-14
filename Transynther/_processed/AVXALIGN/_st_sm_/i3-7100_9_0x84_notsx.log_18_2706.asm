.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xacdb, %rsi
and %r9, %r9
movw $0x6162, (%rsi)
nop
nop
cmp $8424, %rcx
lea addresses_WC_ht+0x1ce27, %r14
clflush (%r14)
nop
add %r12, %r12
movb $0x61, (%r14)
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x13a5b, %rsi
lea addresses_WT_ht+0x1ca5b, %rdi
nop
nop
cmp $47580, %r15
mov $48, %rcx
rep movsb
nop
nop
add %r12, %r12
lea addresses_WT_ht+0x1781b, %r14
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %r14
movntdq %xmm7, (%r14)
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x8f7f, %rsi
lea addresses_UC_ht+0x102e3, %rdi
nop
and %r13, %r13
mov $16, %rcx
rep movsl
nop
nop
nop
nop
xor $58745, %r13
lea addresses_UC_ht+0x11a5b, %r9
nop
nop
and $12540, %rdi
mov (%r9), %r13w
nop
nop
dec %rcx
lea addresses_A_ht+0x113d7, %rsi
nop
add %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xdec7, %r9
cmp %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
cmp $31920, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rbx
push %rcx

// Store
lea addresses_US+0x16a5b, %rax
nop
cmp $19513, %r12
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovaps %ymm7, (%rax)
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0xe55b, %r10
nop
nop
xor %rcx, %rcx
movb $0x51, (%r10)

// Exception!!!
nop
nop
nop
mov (0), %r11
nop
nop
nop
nop
sub $43681, %r10

// Store
lea addresses_US+0x189db, %r12
nop
nop
nop
nop
nop
cmp $13827, %r10
movw $0x5152, (%r12)
nop
add $53579, %rbx

// Faulty Load
lea addresses_US+0x16a5b, %rcx
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%rcx), %bx
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_US', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_US', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': True, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'58': 18}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
