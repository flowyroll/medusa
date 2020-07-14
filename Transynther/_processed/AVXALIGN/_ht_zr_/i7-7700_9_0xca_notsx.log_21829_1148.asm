.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1cf31, %r14
nop
nop
nop
sub $37020, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r14)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x9685, %rax
nop
nop
nop
and $16768, %rdi
mov (%rax), %r11d
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x1c885, %r14
nop
nop
nop
nop
nop
xor %rax, %rax
movb $0x61, (%r14)
nop
nop
dec %rdi
lea addresses_WC_ht+0x5885, %rdi
nop
nop
nop
nop
inc %rbx
movb (%rdi), %cl
cmp $30907, %rax
lea addresses_UC_ht+0x1a515, %r9
nop
nop
nop
cmp $54658, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
sub $39910, %rbx
lea addresses_A_ht+0x1e485, %rsi
lea addresses_UC_ht+0x3599, %rdi
nop
nop
nop
nop
xor $62155, %r9
mov $109, %rcx
rep movsq
nop
nop
cmp $73, %r9
lea addresses_D_ht+0x1b685, %rdi
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rdi)
nop
nop
nop
xor $22864, %r14
lea addresses_A_ht+0xaa05, %rdi
xor $35739, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
vmovups %ymm6, (%rdi)
nop
cmp $59074, %r9
lea addresses_WT_ht+0xf085, %rcx
clflush (%rcx)
nop
add %r9, %r9
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
add $64188, %rcx
lea addresses_WC_ht+0x56c5, %rsi
lea addresses_A_ht+0x1c5c5, %rdi
cmp %rax, %rax
mov $38, %rcx
rep movsl
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0x1a341, %rax
nop
nop
nop
nop
and $32245, %r9
mov (%rax), %edi
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x32c5, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
xor $60879, %r14
mov $0x6162636465666768, %r9
movq %r9, (%rbx)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_WT_ht+0x4d85, %rbx
nop
nop
nop
nop
nop
inc %r11
movb $0x61, (%rbx)
nop
nop
nop
sub $32080, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rdx

// Store
lea addresses_RW+0x58a5, %rbx
nop
mfence
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
sub $4996, %r14

// Store
lea addresses_D+0x14cb7, %r11
sub %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
and $34782, %r15

// Store
lea addresses_UC+0xf005, %r14
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %r11
movq %r11, (%r14)
nop
nop
nop
and $24718, %r14

// Store
lea addresses_WC+0xf695, %r9
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
sub $32607, %r15

// Faulty Load
lea addresses_UC+0x18885, %rax
add %r15, %r15
movntdqa (%rax), %xmm1
vpextrq $1, %xmm1, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_D'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_UC'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'00': 2118, '45': 19431, '49': 235, '48': 45}
45 45 00 00 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 00 45 00 00 49 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 49 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45
*/
