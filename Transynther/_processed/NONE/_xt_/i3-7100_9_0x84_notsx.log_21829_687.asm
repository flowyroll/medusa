.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1e10, %rdx
nop
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %rdx
vmovntdqa (%rdx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
and $24822, %r9
lea addresses_WC_ht+0xc588, %rsi
lea addresses_UC_ht+0x1ebd0, %rdi
nop
mfence
mov $2, %rcx
rep movsl
nop
nop
nop
nop
sub $30320, %rax
lea addresses_D_ht+0xf9d0, %rsi
lea addresses_WC_ht+0xed4, %rdi
nop
nop
cmp %r9, %r9
mov $81, %rcx
rep movsw
nop
nop
nop
nop
xor $56129, %rdx
lea addresses_WT_ht+0x13620, %rsi
lea addresses_WC_ht+0x14c82, %rdi
cmp $2329, %rdx
mov $5, %rcx
rep movsw
nop
nop
nop
xor $54402, %rbx
lea addresses_WT_ht+0x112d0, %rsi
lea addresses_A_ht+0x1dd0, %rdi
nop
nop
nop
add %r9, %r9
mov $37, %rcx
rep movsq
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_WC_ht+0x6ad0, %rsi
lea addresses_A_ht+0x8ad0, %rdi
clflush (%rsi)
nop
nop
and $36635, %r9
mov $98, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x10720, %rsi
lea addresses_WC_ht+0x13a9a, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $78, %rcx
rep movsq
nop
nop
nop
nop
and $34460, %rax
lea addresses_A_ht+0x160f6, %rax
nop
nop
nop
dec %r11
movb (%rax), %r9b
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x19d0, %rdx
nop
nop
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rdx)
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x1b9d0, %rsi
lea addresses_UC_ht+0x159d0, %rdi
clflush (%rsi)
nop
nop
and %r11, %r11
mov $41, %rcx
rep movsl
nop
add $26560, %rdx
lea addresses_WC_ht+0x2fd0, %rdi
sub $52193, %r11
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
xor $64934, %r11
lea addresses_WT_ht+0x89d0, %rsi
lea addresses_WC_ht+0x11d0, %rdi
nop
nop
nop
nop
and %rdx, %rdx
mov $97, %rcx
rep movsw
nop
nop
nop
xor $6620, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_UC+0x1d3e0, %r11
nop
nop
nop
and %r12, %r12
mov (%r11), %rax
nop
nop
nop
cmp %r13, %r13

// REPMOV
lea addresses_A+0xc1d0, %rsi
lea addresses_WT+0x51d0, %rdi
add $46003, %rax
mov $68, %rcx
rep movsb
xor %rsi, %rsi

// REPMOV
lea addresses_PSE+0x4850, %rsi
lea addresses_D+0x7950, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $42, %rcx
rep movsl
add %r13, %r13

// Store
lea addresses_PSE+0x18130, %r9
add %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%r9)
nop
nop
and $7765, %rax

// Faulty Load
lea addresses_A+0xc1d0, %rsi
nop
add %r13, %r13
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'35': 21829}
35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
