.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xeb7a, %rsi
lea addresses_WT_ht+0xa232, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $71, %rcx
rep movsq
nop
nop
add $7111, %rcx
lea addresses_A_ht+0x9b2, %r10
nop
nop
nop
nop
nop
sub %r13, %r13
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r11
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x3f92, %r11
add %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x19732, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $13576, %r11
mov (%rdi), %r10d
add %rsi, %rsi
lea addresses_D_ht+0x1052, %r13
nop
nop
xor $40993, %r10
movups (%r13), %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
add %rsi, %rsi
lea addresses_WT_ht+0x13ea, %rsi
lea addresses_normal_ht+0x17dfc, %rdi
nop
nop
and $14393, %r10
mov $50, %rcx
rep movsw
nop
nop
nop
add $10651, %r13
lea addresses_WC_ht+0x1e441, %rsi
lea addresses_A_ht+0x342a, %rdi
nop
nop
nop
nop
xor $32329, %r12
mov $97, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xbfcc, %r12
nop
nop
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%r12)
nop
nop
nop
dec %r12
lea addresses_A_ht+0x13812, %r11
clflush (%r11)
nop
and %rcx, %rcx
mov (%r11), %r12d
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x1c692, %rsi
lea addresses_WC_ht+0x12d92, %rdi
nop
nop
add %r12, %r12
mov $12, %rcx
rep movsb
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x3392, %r13
nop
nop
nop
nop
nop
sub %r12, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r13)
inc %rdi
lea addresses_WT_ht+0x12402, %r11
inc %rsi
mov (%r11), %r13
nop
nop
nop
cmp $43434, %rsi
lea addresses_UC_ht+0x9c12, %rcx
nop
nop
nop
add %r13, %r13
movb (%rcx), %r10b
nop
nop
and $53024, %r10
lea addresses_A_ht+0x1e892, %rsi
lea addresses_D_ht+0x11392, %rdi
nop
nop
sub $48263, %r10
mov $117, %rcx
rep movsw
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rbx
push %rcx

// Store
lea addresses_A+0x166c2, %rcx
inc %rbx
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovups %ymm4, (%rcx)
nop
nop
and $8491, %rcx

// Store
mov $0x7c2, %rbx
add %r12, %r12
movl $0x51525354, (%rbx)
nop
nop
nop
nop
xor $9060, %r12

// Store
lea addresses_WT+0x17d92, %rcx
nop
nop
dec %r14
movb $0x51, (%rcx)
nop
nop
nop
sub $51540, %r12

// Faulty Load
lea addresses_UC+0x10392, %r14
nop
nop
nop
nop
nop
dec %rbx
movaps (%r14), %xmm7
vpextrq $1, %xmm7, %r11
lea oracles, %r12
and $0xff, %r11
shlq $12, %r11
mov (%r12,%r11,1), %r11
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4, 'same': False, 'type': 'addresses_A'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_P'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_WT'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'src': {'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'49': 266, '00': 12298, '45': 2377, '48': 4657, '46': 2231}
00 00 46 00 00 48 48 00 48 00 00 45 48 46 00 00 00 46 00 00 45 48 00 00 45 48 49 00 45 48 46 00 00 45 00 46 00 48 00 00 00 45 00 00 48 00 00 48 46 46 00 45 48 46 00 45 48 46 00 00 48 46 00 00 00 00 46 00 00 00 00 00 48 46 45 00 48 48 46 00 00 48 00 00 48 00 00 00 48 00 00 00 48 46 00 48 48 46 00 45 48 46 00 00 45 00 00 00 48 00 00 48 48 46 00 00 48 49 00 00 45 48 46 00 00 45 00 45 00 45 48 00 00 48 00 00 48 00 00 45 48 00 00 45 48 46 00 00 48 48 46 00 00 48 49 00 00 48 00 00 45 48 45 00 00 48 48 46 00 00 48 46 00 00 45 48 00 00 45 48 46 00 00 48 46 00 00 00 00 46 00 00 45 48 46 00 00 45 48 00 00 48 00 46 00 45 48 46 00 00 00 48 00 00 00 45 00 00 00 00 48 46 45 00 00 48 46 46 00 00 00 46 00 00 00 45 00 00 48 46 00 00 45 00 45 00 00 48 48 00 45 48 00 00 48 46 00 00 48 46 00 00 45 48 00 00 45 48 00 00 48 48 45 00 45 48 46 00 00 48 48 45 00 00 00 45 00 00 48 00 00 00 48 00 00 48 48 45 00 45 48 00 00 00 48 46 00 00 00 00 45 48 46 00 00 48 48 46 00 00 00 46 00 00 48 48 46 00 00 48 49 00 00 00 48 46 00 00 45 48 46 00 00 48 00 46 00 00 48 46 00 00 45 48 46 00 00 00 48 46 45 00 45 48 45 00 00 00 00 00 00 00 00 45 48 46 00 00 45 48 46 00 00 48 00 45 00 00 48 00 00 48 46 00 00 48 48 46 00 00 00 00 00 45 48 46 00 00 48 48 45 00 45 00 46 00 00 48 00 00 45 48 46 00 00 48 00 00 45 48 46 00 00 48 00 00 00 46 45 00 48 48 46 00 45 48 46 45 00 45 48 46 00 00 48 00 00 48 00 00 45 48 00 00 00 46 00 00 00 48 46 00 00 45 00 00 00 00 46 00 00 45 48 00 00 45 48 00 00 00 00 00 45 48 00 00 00 00 45 00 45 48 46 00 00 00 49 00 00 45 48 00 00 48 48 00 00 48 00 00 45 48 00 00 00 45 00 45 48 46 00 00 48 00 45 00 45 48 46 00 00 00 46 00 00 45 48 46 00 00 48 46 45 00 45 48 45 00 00 48 00 00 00 00 00 48 00 00 00 00 46 00 00 00 49 00 00 00 48 00 45 00 00 45 49 00 00 00 00 45 48 46 00 00 48 00 00 00 48 46 00 00 48 00 00 45 00 00 00 00 48 00 00 00 00 46 00 00 45 00 00 00 00 46 00 00 00 00 46 00 00 45 48 48 00 00 45 48 00 00 45 48 46 00 00 48 00 45 00 45 48 46 00 00 45 48 46 00 00 00 46 00 45 49 00 00 00 48 48 46 00 00 48 00 00 00 45 48 46 00 00 45 48 46 00 00 48 00 00 48 00 46 00 00 48 49 00 48 00 45 00 00 00 46 00 00 00 00 00 48 46 45 00 45 48 46 00 00 48 46 00 00 45 48 46 00 00 48 48 45 00 00 48 00 00 00 48 46 00 00 48 00 00 48 48 46 00 00 48 46 00 00 48 00 46 00 00 00 48 00 00 48 00 00 00 00 00 45 48 46 00 00 00 00 00 45 48 46 00 00 48 00 00 45 48 46 00 00 48 46 00 00 00 45 00 00 48 48 45 00 45 48 00 00 00 00 48 00 00 45 48 46 00 00 48 48 45 00 45 48 46 00 45 48 46 00 00 48 48 00 48 46 00 00 48 46 00 00 48 00 45 00 45 48 00 48 00 46 00 00 00 46 00 00 48 00 00 00 48 00 46 00 00 48 49 00 00 00 00 46 00 00 45 48 46 00 45 48 46 00 00 48 00 00 00 00 00 49 00 00 45 48 00 00 48 46 00 00 00 00 00 00 45 48 00 45 48 46 00 00 00 00 00 00 45 00 00 48 48 00 00 45 48 46 00 00 00 00 00 45 48 00 00 48 46 00 00 45 48 00 00 45 48 46 00 00 48 00 00 00 00 48 48 46 00 00 48 00 00 45 48 00 00 45 48 46 00 00 45 48 46 00 00 45 48 45 00 00 48 48 46 00 45 48 00 00 00 00 00 48 00 46 00 00 00 00 00 00 00 45
*/
