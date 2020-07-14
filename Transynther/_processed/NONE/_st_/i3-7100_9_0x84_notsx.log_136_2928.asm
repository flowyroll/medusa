.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1135, %rsi
lea addresses_normal_ht+0x17c35, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $34, %rcx
rep movsq
nop
nop
nop
nop
sub %r13, %r13
lea addresses_A_ht+0xcbad, %r13
nop
nop
cmp %rdi, %rdi
mov (%r13), %si
nop
nop
nop
xor $43460, %rdx
lea addresses_WC_ht+0xb36f, %rsi
lea addresses_UC_ht+0x4135, %rdi
nop
nop
nop
xor $64114, %r14
mov $71, %rcx
rep movsq
nop
add $54056, %rdi
lea addresses_normal_ht+0xd935, %r14
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r14)
nop
nop
nop
nop
and $56105, %rdx
lea addresses_D_ht+0x17135, %r11
clflush (%r11)
cmp $46142, %rcx
mov (%r11), %rdx
nop
add %rdx, %rdx
lea addresses_WT_ht+0x4335, %rsi
nop
nop
nop
nop
xor $24639, %rdi
movw $0x6162, (%rsi)
nop
nop
cmp $42644, %rcx
lea addresses_D_ht+0x14fb5, %rsi
lea addresses_WC_ht+0x1c995, %rdi
nop
nop
nop
cmp %r14, %r14
mov $31, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r11
lea addresses_D_ht+0x15535, %rsi
nop
nop
nop
sub $13255, %rcx
movb (%rsi), %r14b
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_normal_ht+0x1b335, %rsi
lea addresses_A_ht+0x17535, %rdi
nop
and %r13, %r13
mov $42, %rcx
rep movsq
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x11ef, %rsi
lea addresses_WC_ht+0x1cc35, %rdi
nop
nop
nop
nop
xor $56041, %r9
mov $94, %rcx
rep movsw
nop
nop
nop
xor %rdx, %rdx
lea addresses_A_ht+0x7215, %rdx
nop
add $2168, %r14
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
nop
nop
add $15102, %rdx
lea addresses_UC_ht+0x15935, %rdx
and $42254, %rcx
mov (%rdx), %r11d
add $60637, %r13
lea addresses_normal_ht+0x1e7cd, %rcx
nop
sub %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
cmp $10700, %r11
lea addresses_UC_ht+0x15cd5, %r11
and $30751, %r14
mov (%r11), %di
nop
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rdi

// Store
lea addresses_A+0xed35, %r12
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovaps %ymm0, (%r12)
nop
nop
nop
nop
xor %rbx, %rbx

// Faulty Load
lea addresses_A+0x15d35, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
movb (%rdi), %r12b
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 2, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 136}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
