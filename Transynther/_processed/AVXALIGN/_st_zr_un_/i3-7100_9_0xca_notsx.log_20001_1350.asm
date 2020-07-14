.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x16507, %r14
nop
nop
add $53316, %r10
mov (%r14), %rcx
nop
nop
dec %r15
lea addresses_normal_ht+0x1aae7, %rax
add %r14, %r14
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
and $38906, %r14
lea addresses_WT_ht+0xdd0b, %r11
nop
nop
nop
sub $57944, %r10
movups (%r11), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
nop
nop
add $24488, %r15
lea addresses_normal_ht+0x1ef07, %rsi
lea addresses_D_ht+0x1737a, %rdi
nop
nop
cmp %rax, %rax
mov $8, %rcx
rep movsq
nop
nop
nop
xor $19656, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_D+0x5907, %rcx
clflush (%rcx)
nop
nop
nop
and %r8, %r8
movw $0x5152, (%rcx)
nop
nop
nop
nop
add $52476, %rbx

// Store
lea addresses_WC+0x6907, %r10
cmp %r15, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r10)
add %rbx, %rbx

// Store
lea addresses_A+0x14707, %r10
nop
nop
add $20004, %rdi
movl $0x51525354, (%r10)
nop
nop
nop
nop
and $31089, %r9

// Faulty Load
mov $0x907, %r8
nop
add %r10, %r10
vmovntdqa (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'58': 17320, '00': 687, '70': 1994}
00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 70 58 58 58 70 58 58 58 70 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 70 58 58 58 58 70 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 58 70 58 58 58 58 58 58 58 58 70 70 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 00 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 70 58 00 58 58 58 58 58 58 58 58 58 58 70 58 70 58 58 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 70 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 00 58 58 58 58 70 58 58 58 58 58 00 58 58 58 58 70 58 70 70 58 58 58 00 58 58 58 58 58 58 58 58 70 58 58 70 58 58 58 58 70 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 70 58 58 58 58 58 00 58 70 58 70 58 58 58 58 58 58 70 58 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 70 70 58 58 58 70 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 70 58 58 00 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 70 58 00 58 58 58 58 70 58 70 58 58 58 70 70 58 58 58 58 58 58 70 58 58 58 58 70 70 58 70 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 70 58 58 58 58 58 58 58 70 58 70 70 70 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 70 58 58 58 58 00 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 70 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 70 58 70 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 70 58 58 58 70 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 70 70 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
