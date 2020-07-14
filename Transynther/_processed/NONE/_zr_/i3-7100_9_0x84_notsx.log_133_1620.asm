.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x132dc, %r8
nop
cmp %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r8)
nop
nop
xor $25299, %rcx
lea addresses_normal_ht+0x1e8dc, %r14
nop
nop
xor %r11, %r11
mov (%r14), %esi
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_normal_ht+0x1a58a, %rsi
lea addresses_WC_ht+0x1c7dc, %rdi
nop
nop
nop
nop
add $21343, %r11
mov $37, %rcx
rep movsb
nop
nop
nop
cmp $9821, %r11
lea addresses_normal_ht+0xd10, %r14
sub $38582, %rdi
movups (%r14), %xmm4
vpextrq $1, %xmm4, %rcx
nop
nop
nop
nop
nop
cmp $41301, %rdi
lea addresses_normal_ht+0xb0dc, %rsi
lea addresses_A_ht+0x2fdc, %rdi
clflush (%rdi)
sub $40851, %r9
mov $51, %rcx
rep movsq
xor %rdi, %rdi
lea addresses_UC_ht+0x690c, %r8
nop
nop
nop
nop
nop
inc %rsi
vmovups (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
nop
cmp $15732, %r9
lea addresses_WT_ht+0xcfde, %rsi
xor %r11, %r11
mov (%rsi), %rdi
nop
nop
nop
nop
xor %r9, %r9
lea addresses_D_ht+0xbb13, %rdi
and $54670, %rsi
mov (%rdi), %r11d
nop
nop
nop
sub $36651, %r9
lea addresses_WT_ht+0xc2bc, %r14
xor $65107, %rcx
movups (%r14), %xmm2
vpextrq $0, %xmm2, %rdi
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Store
lea addresses_A+0x259c, %rax
cmp %r10, %r10
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movntdq %xmm1, (%rax)
add $21086, %r9

// Store
lea addresses_WT+0xd99c, %r10
nop
add $8124, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r10)
dec %rdx

// Faulty Load
lea addresses_A+0x19bdc, %rsi
nop
nop
nop
cmp $16050, %rdx
vmovups (%rsi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 0, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 16, 'congruent': 6, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 32, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': True, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 133}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
