.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xf05a, %rsi
lea addresses_WC_ht+0xa212, %rdi
clflush (%rdi)
nop
nop
nop
inc %r13
mov $76, %rcx
rep movsl
nop
nop
dec %rcx
lea addresses_UC_ht+0x5dd2, %rsi
lea addresses_WT_ht+0xd1d2, %rdi
nop
nop
xor %rbp, %rbp
mov $99, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x10bd2, %rdi
nop
nop
nop
nop
and $36070, %r11
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
nop
and $61365, %rsi
lea addresses_normal_ht+0x1e1b2, %rdi
clflush (%rdi)
add $28618, %r15
mov (%rdi), %r13w
nop
and %r11, %r11
lea addresses_WC_ht+0x7cd2, %r13
xor %r11, %r11
movw $0x6162, (%r13)
nop
nop
lfence
lea addresses_normal_ht+0x75d2, %rsi
lea addresses_A_ht+0x131a2, %rdi
nop
nop
nop
dec %rbp
mov $89, %rcx
rep movsw
nop
add %rsi, %rsi
lea addresses_normal_ht+0x972, %rcx
nop
nop
nop
add %rdi, %rdi
movw $0x6162, (%rcx)
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x1982e, %rsi
nop
nop
sub $43988, %r11
vmovups (%rsi), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbp
nop
nop
nop
nop
nop
add $41451, %r13
lea addresses_A_ht+0x159d2, %r15
and %r11, %r11
movb $0x61, (%r15)
nop
lfence
lea addresses_WT_ht+0x128de, %rsi
lea addresses_normal_ht+0x1d7ec, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r10, %r10
mov $1, %rcx
rep movsw
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_WC_ht+0x2392, %rcx
add $35471, %r11
mov $0x6162636465666768, %r15
movq %r15, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
sub $36786, %r13
lea addresses_WC_ht+0x5d32, %rsi
clflush (%rsi)
and %r13, %r13
mov (%rsi), %r15
nop
cmp $42860, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rax
push %rsi

// Faulty Load
lea addresses_US+0x135d2, %rsi
nop
nop
nop
cmp $54247, %rax
movb (%rsi), %r14b
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rsi
pop %rax
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 2, 'same': True, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 8}
00 00 00 00 00 00 00 00
*/
