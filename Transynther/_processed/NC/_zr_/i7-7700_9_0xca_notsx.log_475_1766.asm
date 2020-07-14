.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x815d, %rsi
lea addresses_WC_ht+0x18a5d, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $100, %rcx
rep movsq
nop
nop
nop
lfence
lea addresses_WC_ht+0x808d, %r9
nop
and $17028, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
nop
dec %r8
lea addresses_A_ht+0x1d245, %rsi
lea addresses_normal_ht+0x4a5d, %rdi
inc %rax
mov $78, %rcx
rep movsb
xor $40584, %r8
lea addresses_D_ht+0x1de5d, %rsi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r9
movq %r9, %xmm6
and $0xffffffffffffffc0, %rsi
movntdq %xmm6, (%rsi)
nop
add %rcx, %rcx
lea addresses_WC_ht+0xf8dd, %rdi
nop
sub %rcx, %rcx
movl $0x61626364, (%rdi)
nop
cmp $27129, %r9
lea addresses_D_ht+0xcddd, %rsi
lea addresses_normal_ht+0x1d05d, %rdi
nop
nop
nop
nop
xor $10963, %r14
mov $117, %rcx
rep movsq
nop
nop
nop
cmp $16902, %r9
lea addresses_A_ht+0x1d51d, %r8
nop
add $56523, %rax
mov (%r8), %rsi
cmp %rax, %rax
lea addresses_normal_ht+0x16c5d, %rsi
lea addresses_UC_ht+0x193ad, %rdi
nop
nop
nop
nop
inc %r11
mov $107, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x1325d, %r14
nop
and $14958, %r8
movups (%r14), %xmm7
vpextrq $0, %xmm7, %r9
nop
nop
nop
cmp $20743, %r8
lea addresses_A_ht+0x1103d, %r9
nop
nop
nop
nop
cmp $58968, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm6
vmovups %ymm6, (%r9)
xor $39680, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rdi
push %rsi

// Load
lea addresses_WC+0xd25d, %rax
nop
nop
nop
xor %rdi, %rdi
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r14
nop
xor %r13, %r13

// Faulty Load
mov $0x74be81000000025d, %r10
nop
nop
nop
sub $61609, %rsi
movb (%r10), %r14b
lea oracles, %rdi
and $0xff, %r14
shlq $12, %r14
mov (%rdi,%r14,1), %r14
pop %rsi
pop %rdi
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8, 'same': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': True, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'00': 475}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
