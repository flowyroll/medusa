.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3834, %rsi
lea addresses_D_ht+0x4699, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $29604, %rbx
mov $60, %rcx
rep movsw
nop
nop
nop
nop
xor $19896, %r14
lea addresses_A_ht+0x1aba, %rbx
nop
nop
nop
nop
nop
add $46184, %r10
mov (%rbx), %esi
nop
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_WC_ht+0xd594, %r14
nop
nop
sub $33511, %r15
mov (%r14), %ebx
add %r15, %r15
lea addresses_WT_ht+0x1df94, %r15
nop
nop
and %rcx, %rcx
mov (%r15), %bx
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x6674, %rsi
lea addresses_UC_ht+0x123b2, %rdi
nop
cmp $17137, %r11
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $24, %r15
lea addresses_normal_ht+0x1b755, %rsi
lea addresses_D_ht+0x174d4, %rdi
nop
nop
nop
xor $65495, %rbx
mov $111, %rcx
rep movsq
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WC_ht+0x168d4, %r14
cmp $46039, %r15
movw $0x6162, (%r14)
nop
dec %r10
lea addresses_normal_ht+0x4994, %r11
nop
nop
nop
nop
nop
and $51869, %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
and $37876, %rbx
lea addresses_D_ht+0x1c614, %rsi
lea addresses_A_ht+0xc594, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $62, %rcx
rep movsq
nop
nop
nop
nop
nop
and $7633, %r14
lea addresses_D_ht+0x187d4, %r10
add %rbx, %rbx
mov (%r10), %r14w
nop
nop
nop
nop
nop
sub $35675, %r15
lea addresses_WT_ht+0x3794, %rsi
lea addresses_WC_ht+0xdf3f, %rdi
clflush (%rdi)
add %r15, %r15
mov $22, %rcx
rep movsb
nop
nop
nop
nop
add $28910, %rdi
lea addresses_A_ht+0x3814, %rbx
dec %r11
movl $0x61626364, (%rbx)
nop
nop
and %r14, %r14
lea addresses_UC_ht+0x1c36c, %r11
nop
nop
nop
nop
sub %r10, %r10
movb $0x61, (%r11)
nop
and $11960, %rcx
lea addresses_D_ht+0x11794, %rcx
nop
nop
dec %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
and $58383, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x454, %r11
nop
nop
nop
nop
nop
add %rbx, %rbx
movl $0x51525354, (%r11)
sub %rsi, %rsi

// Store
mov $0x7b4c920000000cee, %rsi
nop
nop
nop
nop
nop
sub %r10, %r10
movw $0x5152, (%rsi)
nop
nop
nop
sub $48472, %rdi

// Store
lea addresses_WC+0x150ce, %r11
nop
nop
nop
nop
and $59886, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm5
vmovups %ymm5, (%r11)
nop
nop
nop
nop
xor $52559, %r11

// Store
lea addresses_WC+0xd94, %r10
nop
nop
nop
nop
xor $32093, %rbp
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
vmovntdq %ymm7, (%r10)
nop
add $47205, %rbx

// Store
lea addresses_D+0x19594, %rdi
nop
add $26081, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rdi)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WC+0x3574, %rbx
nop
nop
nop
nop
add $35238, %rdx
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_A+0x8d94, %r10
add $25285, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
xor $28238, %r11

// Faulty Load
lea addresses_D+0x19594, %rbp
nop
nop
nop
cmp %rsi, %rsi
movb (%rbp), %r10b
lea oracles, %rbp
and $0xff, %r10
shlq $12, %r10
mov (%rbp,%r10,1), %r10
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
