.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x13031, %r8
inc %rcx
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r11
nop
xor $21583, %r13
lea addresses_WC_ht+0x18a91, %r14
nop
nop
sub %rsi, %rsi
movups (%r14), %xmm6
vpextrq $1, %xmm6, %rax
xor %r8, %r8
lea addresses_normal_ht+0xe891, %rsi
lea addresses_D_ht+0x55d1, %rdi
nop
and $35638, %r13
mov $24, %rcx
rep movsb
nop
nop
nop
xor %rax, %rax
lea addresses_UC_ht+0x1c3dc, %r11
add $14972, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%r11)
nop
nop
add $39817, %r14
lea addresses_UC_ht+0x6631, %r14
nop
nop
nop
and %r13, %r13
movl $0x61626364, (%r14)
nop
nop
nop
nop
sub $29393, %rcx
lea addresses_normal_ht+0x11c5, %rsi
lea addresses_normal_ht+0x4491, %rdi
nop
nop
nop
nop
and %r8, %r8
mov $42, %rcx
rep movsw
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x16d91, %rsi
lea addresses_normal_ht+0x15651, %rdi
nop
nop
nop
nop
add %r13, %r13
mov $12, %rcx
rep movsw
nop
nop
nop
add %r8, %r8
lea addresses_WC_ht+0xdc91, %r13
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r13)
add $41001, %r8
lea addresses_WC_ht+0x1b111, %rsi
lea addresses_WC_ht+0xda91, %rdi
and %r14, %r14
mov $102, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_D_ht+0x106a9, %rsi
nop
nop
nop
add %r11, %r11
mov $0x6162636465666768, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0xb2d1, %r13
nop
nop
nop
nop
nop
add %r8, %r8
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
inc %rsi
lea addresses_WC_ht+0xdf11, %rsi
nop
nop
nop
xor $60681, %rdi
mov (%rsi), %r11
nop
nop
nop
nop
and $41884, %rcx
lea addresses_A_ht+0x1bb39, %rcx
cmp %rdi, %rdi
mov (%rcx), %r13d
nop
nop
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x12091, %rsi
lea addresses_WT_ht+0x9771, %rdi
inc %r13
mov $115, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_normal_ht+0x1b391, %rax
nop
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rax), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r13
nop
sub %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x1e991, %r9
nop
nop
nop
cmp $9727, %r13
movl $0x51525354, (%r9)
nop
nop
nop
cmp $10641, %r8

// REPMOV
lea addresses_PSE+0x14891, %rsi
lea addresses_UC+0x7fd1, %rdi
nop
nop
sub %r8, %r8
mov $28, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0x138b1, %r15
nop
nop
nop
nop
cmp %r9, %r9
movl $0x51525354, (%r15)
xor $19426, %r9

// Store
lea addresses_WC+0x1cdf0, %r13
xor %r15, %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_D+0xe891, %rdi
clflush (%rdi)
nop
xor $20458, %rbx
movb (%rdi), %r9b
lea oracles, %rcx
and $0xff, %r9
shlq $12, %r9
mov (%rcx,%r9,1), %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_PSE'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'36': 21829}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
