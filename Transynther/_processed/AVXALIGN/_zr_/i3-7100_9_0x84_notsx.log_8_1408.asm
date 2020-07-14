.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x35e4, %rsi
nop
cmp %rbx, %rbx
mov (%rsi), %r15
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x290e, %rsi
lea addresses_WT_ht+0xc324, %rdi
nop
cmp %r14, %r14
mov $125, %rcx
rep movsw
xor $46327, %rbx
lea addresses_UC_ht+0x4044, %rsi
nop
nop
nop
cmp %r12, %r12
movl $0x61626364, (%rsi)
nop
dec %rcx
lea addresses_D_ht+0x159c, %r15
xor %rbx, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r15)
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x4ea4, %rsi
lea addresses_UC_ht+0x5124, %rdi
nop
cmp $50647, %r9
mov $20, %rcx
rep movsw
nop
nop
nop
nop
add %r15, %r15
lea addresses_WC_ht+0x3224, %r15
nop
and $39519, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
nop
nop
dec %r15
lea addresses_normal_ht+0x199e4, %r9
nop
nop
dec %rbx
mov $0x6162636465666768, %rsi
movq %rsi, (%r9)
nop
cmp $57406, %r14
lea addresses_D_ht+0x1e924, %r9
nop
nop
nop
nop
nop
and $44527, %rbx
movw $0x6162, (%r9)
nop
nop
nop
sub $52438, %r15
lea addresses_UC_ht+0x6d80, %rsi
nop
dec %rdi
movb (%rsi), %r9b
nop
nop
dec %r12
lea addresses_WC_ht+0xb724, %r14
clflush (%r14)
nop
nop
nop
nop
nop
sub $49905, %rbx
movb (%r14), %cl
nop
nop
add $42595, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rdi

// Faulty Load
mov $0x124, %rax
nop
nop
nop
xor $33894, %rdi
movb (%rax), %r11b
lea oracles, %rax
and $0xff, %r11
shlq $12, %r11
mov (%rax,%r11,1), %r11
pop %rdi
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'same': True, 'size': 1, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'same': True, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': True}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 1, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
