.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x332c, %rsi
lea addresses_normal_ht+0x18b2c, %rdi
nop
nop
dec %r10
mov $74, %rcx
rep movsw
nop
nop
and %r14, %r14
lea addresses_WC_ht+0xd984, %rsi
lea addresses_normal_ht+0x17d2c, %rdi
nop
nop
dec %r14
mov $63, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $38533, %rdi
lea addresses_normal_ht+0x1ce2c, %rsi
lea addresses_A_ht+0x9f2c, %rdi
add %r15, %r15
mov $22, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $42834, %rcx
lea addresses_WT_ht+0xb3ac, %r14
nop
nop
nop
nop
nop
lfence
movups (%r14), %xmm5
vpextrq $0, %xmm5, %r15
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1032c, %r15
nop
nop
nop
sub %r11, %r11
movb $0x61, (%r15)
nop
nop
nop
and $24759, %r14
lea addresses_normal_ht+0xfd2c, %rcx
nop
nop
nop
nop
sub $28609, %rdi
mov (%rcx), %r14w
nop
nop
nop
sub $64217, %r14
lea addresses_A_ht+0x94ac, %r14
nop
nop
nop
nop
nop
add $8709, %rcx
mov (%r14), %rdi
nop
nop
nop
nop
nop
cmp $59902, %r11
lea addresses_WC_ht+0xd5c2, %rdi
nop
nop
nop
and $41, %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
add $39823, %rdi
lea addresses_WC_ht+0x846c, %rsi
lea addresses_WT_ht+0x592c, %rdi
nop
nop
nop
nop
nop
sub $2031, %r13
mov $24, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_normal_ht+0x7cac, %r14
nop
nop
xor $3801, %rcx
movb (%r14), %r13b
nop
nop
cmp $58309, %r11
lea addresses_normal_ht+0x1528c, %r11
nop
nop
nop
nop
nop
dec %r15
movl $0x61626364, (%r11)
dec %r10
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x1d32c, %r8
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r8), %r12d
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdi
pop %rbx
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 7}
00 00 00 00 00 00 00
*/
