.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6631, %rsi
lea addresses_A_ht+0x1cf31, %rdi
nop
nop
add %r10, %r10
mov $13, %rcx
rep movsl
nop
xor %r12, %r12
lea addresses_WT_ht+0x15cb, %rsi
lea addresses_WT_ht+0x1de31, %rdi
nop
nop
sub $9438, %r13
mov $95, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rsi

// Store
lea addresses_US+0x8231, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp $14136, %rsi
movb $0x51, (%rbp)
nop
nop
nop
and %rax, %rax

// Store
lea addresses_D+0x1b0d9, %r11
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_D+0x1fb69, %r14
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%r14)
nop
nop
cmp $48520, %rax

// Store
lea addresses_D+0x1331, %r11
nop
add $40854, %rsi
movl $0x51525354, (%r11)
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_WC+0x13831, %r14
xor %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm2
movups %xmm2, (%r14)
and $54000, %r8

// Store
lea addresses_RW+0x1b30e, %rsi
nop
sub $38777, %r8
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovaps %ymm1, (%rsi)
nop
nop
cmp %r11, %r11

// Store
lea addresses_WT+0x10781, %rax
nop
sub $42907, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%rax)
nop
nop
nop
nop
nop
and $494, %r8

// Store
lea addresses_US+0xeb31, %r11
and $46595, %rcx
movw $0x5152, (%r11)
nop
nop
add $47270, %r8

// Store
lea addresses_RW+0x9cb1, %rsi
nop
nop
nop
nop
add $39873, %r8
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
nop
inc %r11

// Faulty Load
lea addresses_US+0x8231, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14
movntdqa (%r8), %xmm2
vpextrq $1, %xmm2, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rsi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'08': 1, '00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 08 00
*/
