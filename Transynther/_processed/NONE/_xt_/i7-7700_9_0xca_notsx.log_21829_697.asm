.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1c663, %r10
sub $16387, %r8
movw $0x6162, (%r10)
nop
nop
nop
cmp %r13, %r13
lea addresses_WC_ht+0x13f15, %r11
nop
nop
sub %rax, %rax
movb (%r11), %r10b
and %r8, %r8
lea addresses_UC_ht+0x95f4, %r11
nop
nop
nop
nop
xor $27821, %r8
movb (%r11), %al
nop
nop
nop
and %r10, %r10
lea addresses_UC_ht+0x1bf15, %r13
nop
nop
nop
nop
lfence
mov (%r13), %r10
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xf95, %r13
clflush (%r13)
nop
nop
nop
cmp %rsi, %rsi
movb $0x61, (%r13)
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x3015, %r10
nop
nop
nop
nop
xor $48418, %r8
movb (%r10), %cl
nop
nop
add %r8, %r8
lea addresses_A_ht+0x19215, %r10
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r11
nop
nop
xor %r11, %r11
lea addresses_UC_ht+0x4715, %r11
nop
nop
nop
nop
nop
and $14297, %rsi
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
cmp $62791, %r8
lea addresses_normal_ht+0x1215, %r11
nop
nop
nop
dec %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%r11)
nop
and $21911, %r8
lea addresses_normal_ht+0x4435, %r11
nop
nop
nop
and $57443, %r10
movb (%r11), %r8b
xor $60390, %r10
lea addresses_WC_ht+0x1a215, %r8
xor $29493, %r13
mov (%r8), %r10d
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_UC_ht+0xb7c1, %rax
nop
cmp $11725, %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rax)
nop
nop
inc %r13
lea addresses_normal_ht+0x157d5, %r10
nop
nop
nop
nop
nop
add $9635, %r11
movb $0x61, (%r10)
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x2795, %rsi
lea addresses_D_ht+0xa325, %rdi
clflush (%rsi)
nop
cmp $13837, %r13
mov $80, %rcx
rep movsq
nop
nop
nop
nop
xor %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rbx
push %rcx
push %rdi

// Faulty Load
lea addresses_normal+0x16715, %r9
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r9), %ebx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': True, 'AVXalign': True, 'size': 1, 'congruent': 7, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
