.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rdx
push %rsi
lea addresses_WT_ht+0x18863, %r13
and $27480, %rsi
mov $0x6162636465666768, %r12
movq %r12, (%r13)
nop
nop
nop
cmp %rdx, %rdx
pop %rsi
pop %rdx
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %rax
push %rcx

// Store
lea addresses_A+0x14103, %r10
clflush (%r10)
nop
and $27789, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%r10)
nop
nop
nop
nop
nop
sub $19732, %r11

// Store
lea addresses_WC+0x1ae63, %rcx
clflush (%rcx)
add %r13, %r13
movl $0x51525354, (%rcx)
nop
nop
nop
sub $14295, %r13

// Store
lea addresses_WT+0x10863, %r12
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movups %xmm5, (%r12)
and %r12, %r12

// Faulty Load
lea addresses_UC+0x4e63, %rax
nop
nop
nop
nop
sub %r13, %r13
vmovaps (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'00': 42}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
