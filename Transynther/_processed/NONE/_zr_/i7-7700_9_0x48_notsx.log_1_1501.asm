.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1650f, %rsi
lea addresses_WT_ht+0x2ef, %rdi
clflush (%rsi)
nop
nop
xor $14463, %r10
mov $42, %rcx
rep movsw
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0xc20f, %r9
nop
nop
nop
nop
cmp %r14, %r14
movw $0x6162, (%r9)
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1158f, %rsi
lea addresses_UC_ht+0x788f, %rdi
nop
nop
xor $5776, %rbx
mov $23, %rcx
rep movsw
nop
nop
sub $6312, %r14
lea addresses_WT_ht+0x550f, %rsi
lea addresses_UC_ht+0x1540, %rdi
nop
nop
nop
nop
and $43855, %r13
mov $20, %rcx
rep movsb
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WT_ht+0x78cf, %rsi
lea addresses_D_ht+0x6cef, %rdi
nop
nop
cmp %r9, %r9
mov $100, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x3907, %r13
nop
nop
nop
sub $21492, %rdi
mov (%r13), %rbx
nop
add $36979, %r9
lea addresses_normal_ht+0x1000f, %r10
nop
nop
nop
nop
nop
sub %rbx, %rbx
vmovups (%r10), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
nop
nop
nop
nop
nop
add $54740, %rdi
lea addresses_A_ht+0xe00f, %r13
nop
nop
nop
and $16555, %rcx
mov (%r13), %r10d
nop
nop
nop
cmp $26663, %rbx
lea addresses_A_ht+0xfc0f, %r10
nop
and %r14, %r14
movl $0x61626364, (%r10)
nop
cmp %rsi, %rsi
lea addresses_A_ht+0x298f, %r9
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
sub $17385, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1d50f, %rbx
nop
nop
inc %rcx
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp %rdx, %rdx

// Store
lea addresses_US+0x1c78f, %rcx
clflush (%rcx)
nop
nop
nop
add %r13, %r13
mov $0x5152535455565758, %rbx
movq %rbx, (%rcx)
nop
nop
sub $2694, %rdi

// Store
lea addresses_WT+0x1eb1f, %r14
nop
add $27579, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%r14)
nop
nop
nop
cmp %r13, %r13

// Store
lea addresses_WT+0x182f, %rdi
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
sub $24034, %r14

// Store
lea addresses_US+0xaaa0, %rbx
nop
nop
sub %rdx, %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub $41021, %rcx

// Store
lea addresses_WT+0xea0f, %rbx
nop
nop
add $60490, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%rbx)
nop
nop
nop
nop
cmp %rdi, %rdi

// Faulty Load
lea addresses_A+0x1800f, %r14
xor $33328, %r11
vmovups (%r14), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r13
lea oracles, %rcx
and $0xff, %r13
shlq $12, %r13
mov (%rcx,%r13,1), %r13
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'00': 1}
00
*/
