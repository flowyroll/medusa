.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x115a7, %r15
nop
inc %rbp
mov (%r15), %r11
nop
and %rdi, %rdi
lea addresses_A_ht+0x1e30b, %rsi
and %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x47e7, %r14
clflush (%r14)
nop
nop
sub %rbp, %rbp
mov (%r14), %r11w
nop
nop
nop
add %r15, %r15
lea addresses_A_ht+0x1d6d7, %rsi
lea addresses_WT_ht+0x10fe7, %rdi
cmp %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
cmp $5341, %r10
lea addresses_UC_ht+0x4f1b, %rcx
nop
nop
nop
and $3765, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm6
movups %xmm6, (%rcx)
add $3318, %r11
lea addresses_WT_ht+0x65e7, %rcx
dec %rbp
mov (%rcx), %r10d
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_UC_ht+0x6ee7, %rsi
lea addresses_A_ht+0xd657, %rdi
clflush (%rsi)
cmp $29309, %r11
mov $8, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x101e7, %r10
nop
dec %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
vmovups %ymm0, (%r10)
nop
nop
nop
xor $47425, %rcx
lea addresses_WT_ht+0x381d, %rsi
lea addresses_A_ht+0x117e7, %rdi
nop
and $7058, %r11
mov $99, %rcx
rep movsq
add %r10, %r10
lea addresses_UC_ht+0x12967, %rbp
nop
nop
nop
nop
nop
add $99, %r15
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
and $36329, %rdi
lea addresses_WC_ht+0xffe7, %rsi
lea addresses_WC_ht+0x157e1, %rdi
nop
nop
and %rbp, %rbp
mov $43, %rcx
rep movsb
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x9227, %rdi
nop
nop
nop
nop
and %rcx, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
xor $44528, %rdi
lea addresses_D_ht+0xab8e, %r15
nop
nop
sub $16651, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %r15
vmovntdq %ymm5, (%r15)
xor $16297, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WT+0x9ce7, %rbx
nop
nop
inc %rax
movw $0x5152, (%rbx)
nop
nop
nop
cmp %r11, %r11

// Store
mov $0x8e7, %rbp
nop
nop
nop
sub $61270, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm0
movups %xmm0, (%rbp)
add $29940, %r11

// Store
lea addresses_WC+0xbc14, %rax
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
sub $30570, %rsi

// Store
lea addresses_D+0x192e7, %rax
nop
nop
nop
nop
nop
sub $26290, %rsi
movw $0x5152, (%rax)
nop
nop
inc %r11

// Store
lea addresses_A+0x1abe7, %rbx
nop
nop
sub %r11, %r11
movb $0x51, (%rbx)
nop
add %r9, %r9

// Store
lea addresses_UC+0x12467, %rbp
nop
xor $39344, %r11
movw $0x5152, (%rbp)
nop
sub $6727, %r9

// Load
mov $0x2f130100000003e7, %rsi
nop
nop
nop
nop
nop
cmp $57937, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r9
nop
and $58606, %rax

// Store
lea addresses_WC+0x16be7, %r9
nop
nop
nop
nop
cmp $54497, %rax
mov $0x5152535455565758, %rbx
movq %rbx, (%r9)
cmp %r9, %r9

// Store
lea addresses_WT+0x13de7, %rax
nop
nop
nop
add %r11, %r11
movw $0x5152, (%rax)
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
lea addresses_RW+0x133e7, %r11
clflush (%r11)
and %rcx, %rcx
movb (%r11), %r9b
lea oracles, %r11
and $0xff, %r9
shlq $12, %r9
mov (%r11,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
