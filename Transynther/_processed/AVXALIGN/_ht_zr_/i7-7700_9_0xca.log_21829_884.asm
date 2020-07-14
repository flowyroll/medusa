.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1dd31, %rsi
lea addresses_WC_ht+0xd319, %rdi
sub $22368, %r11
mov $81, %rcx
rep movsb
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0x167e5, %r9
nop
nop
add %r12, %r12
mov (%r9), %r13d
nop
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x1199d, %rsi
lea addresses_A_ht+0x13271, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $62968, %r10
mov $25, %rcx
rep movsl
nop
nop
and $10430, %r10
lea addresses_WT_ht+0x11fc1, %rcx
nop
nop
nop
nop
sub $45844, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rcx)
dec %r13
lea addresses_WC_ht+0x1cbb1, %rsi
lea addresses_normal_ht+0x14b71, %rdi
clflush (%rdi)
nop
sub $29967, %r10
mov $71, %rcx
rep movsw
nop
nop
nop
nop
nop
add $19859, %r13
lea addresses_UC_ht+0x15264, %rcx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rcx), %edi
nop
nop
nop
nop
cmp $5262, %r13
lea addresses_A_ht+0x194b1, %rsi
sub %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rsi)
nop
nop
nop
nop
add $45713, %r9
lea addresses_WT_ht+0xc71, %rcx
clflush (%rcx)
nop
nop
nop
nop
xor %r11, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x70b1, %r12
nop
nop
nop
add $42857, %r11
movups (%r12), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
sub $10209, %r10
lea addresses_WT_ht+0xab91, %r9
nop
nop
nop
nop
nop
cmp $43403, %r12
mov (%r9), %cx
nop
nop
nop
dec %r9
lea addresses_UC_ht+0xcd67, %rsi
lea addresses_D_ht+0x10091, %rdi
nop
nop
nop
nop
xor $38904, %r11
mov $82, %rcx
rep movsl
xor $16197, %r10
lea addresses_normal_ht+0x7a71, %r9
sub %r10, %r10
movw $0x6162, (%r9)
nop
nop
dec %r12
lea addresses_WT_ht+0x12571, %rsi
cmp %rdi, %rdi
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rsi)
add %r11, %r11
lea addresses_D_ht+0x1b3b1, %rsi
lea addresses_WT_ht+0xb971, %rdi
nop
nop
nop
and $5334, %r12
mov $7, %rcx
rep movsl
nop
nop
nop
nop
cmp %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rbp
push %rdi

// Faulty Load
lea addresses_D+0x17571, %rdi
nop
nop
nop
nop
sub $48551, %r14
vmovntdqa (%rdi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': True, 'type': 'addresses_D'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': True, 'type': 'addresses_WT_ht'}}
{'48': 3443, '00': 18386}
00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 48 48 00 48 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 00 00 48 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 48 00 48 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 48 00 00 00 00 00 00 00 48 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 48 00 48 00 48 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 00 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00
*/
