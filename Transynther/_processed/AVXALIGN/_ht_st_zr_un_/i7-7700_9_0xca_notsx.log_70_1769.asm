.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x162f4, %rsi
lea addresses_WT_ht+0x1bbc, %rdi
nop
nop
cmp $4800, %r13
mov $88, %rcx
rep movsw
nop
cmp $8459, %rsi
lea addresses_D_ht+0xbbf, %rsi
lea addresses_WC_ht+0xf99c, %rdi
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $1, %rcx
rep movsl
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1a89c, %rsi
lea addresses_UC_ht+0x1123c, %rdi
cmp %r10, %r10
mov $125, %rcx
rep movsw
dec %rcx
lea addresses_normal_ht+0x171c, %r11
dec %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
xor $5282, %r13
lea addresses_WC_ht+0x7f88, %r13
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rdi
movq %rdi, (%r13)
nop
nop
cmp $56470, %rsi
lea addresses_UC_ht+0xa09c, %rsi
nop
nop
nop
nop
xor %rcx, %rcx
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
nop
nop
nop
dec %r13
lea addresses_WT_ht+0xb937, %rsi
lea addresses_WT_ht+0x1e54f, %rdi
nop
nop
add %rbx, %rbx
mov $2, %rcx
rep movsq
sub $41281, %rdi
lea addresses_WT_ht+0x17a9c, %r13
nop
nop
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%r13)
nop
dec %rdx
lea addresses_A_ht+0x7fc, %rdx
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x61, (%rdx)
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x3f0c, %rsi
lea addresses_D_ht+0x1b6dc, %rdi
nop
nop
cmp %r13, %r13
mov $119, %rcx
rep movsw
nop
cmp %r10, %r10
lea addresses_normal_ht+0x17e9c, %rdx
xor $48899, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdx)
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x7c9c, %r15
nop
nop
nop
nop
nop
cmp %r11, %r11
mov $0x5152535455565758, %r13
movq %r13, (%r15)
cmp %r15, %r15

// REPMOV
lea addresses_D+0x449c, %rsi
lea addresses_normal+0x109c, %rdi
nop
nop
nop
nop
sub %rbx, %rbx
mov $77, %rcx
rep movsl
sub $23274, %r15

// Store
mov $0x75dc2a0000000d1c, %r13
clflush (%r13)
nop
nop
nop
sub $28819, %r14
movb $0x51, (%r13)
nop
nop
nop
nop
and %r14, %r14

// Store
lea addresses_RW+0xd59c, %rcx
nop
nop
nop
nop
sub $105, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movntdq %xmm3, (%rcx)
nop
nop
cmp %r15, %r15

// Faulty Load
lea addresses_D+0x449c, %rsi
nop
nop
add %rdi, %rdi
vmovntdqa (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
lea oracles, %r14
and $0xff, %r13
shlq $12, %r13
mov (%r14,%r13,1), %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11, 'same': False, 'type': 'addresses_PSE'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_normal'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_NC'}, 'OP': 'STOR'}
{'dst': {'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 5, 'same': False, 'type': 'addresses_RW'}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'STOR'}
{'36': 30, '00': 37, 'd8': 1, '48': 2}
00 36 00 48 00 00 36 00 00 36 00 36 00 00 00 36 00 00 00 36 00 36 36 00 00 00 36 00 36 00 36 00 00 36 36 36 00 00 00 36 36 00 36 00 48 00 00 36 00 36 36 36 36 00 00 36 36 d8 00 00 36 36 00 36 00 36 36 00 36 00
*/
