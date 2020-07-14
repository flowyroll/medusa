.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x117a2, %rax
nop
nop
dec %rsi
movw $0x6162, (%rax)
cmp %rax, %rax
lea addresses_UC_ht+0x172c2, %r11
nop
nop
nop
nop
xor $28307, %rax
movl $0x61626364, (%r11)
nop
nop
nop
nop
nop
sub $57711, %rax
lea addresses_A_ht+0x9ad2, %r13
nop
nop
inc %rcx
vmovups (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
nop
nop
cmp $43713, %r11
lea addresses_UC_ht+0x32c2, %rsi
lea addresses_normal_ht+0xa942, %rdi
nop
nop
nop
nop
cmp $49811, %r11
mov $120, %rcx
rep movsb
nop
nop
nop
cmp %r11, %r11
lea addresses_normal_ht+0x17692, %rsi
lea addresses_normal_ht+0x1c9a2, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $26108, %r10
mov $48, %rcx
rep movsq
nop
nop
nop
inc %rax
lea addresses_WT_ht+0x10ec2, %rdi
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rdi)
nop
sub %r11, %r11
lea addresses_WC_ht+0x5a52, %rsi
lea addresses_UC_ht+0x14ba2, %rdi
nop
nop
add $34596, %r13
mov $51, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x15df2, %rsi
nop
nop
nop
nop
cmp $9324, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rsi)
nop
nop
nop
nop
nop
cmp $5894, %rax
lea addresses_normal_ht+0x13e61, %rsi
lea addresses_UC_ht+0x1bcb2, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
add $61600, %rdi
lea addresses_UC_ht+0x4ec2, %r12
clflush (%r12)
nop
nop
add $11288, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
vmovups %ymm0, (%r12)
nop
nop
add $15788, %rsi
lea addresses_WC_ht+0x19ae2, %rsi
lea addresses_D_ht+0x6cfa, %rdi
clflush (%rsi)
nop
nop
nop
sub %r10, %r10
mov $48, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_WT_ht+0xc4da, %r10
nop
nop
and %r11, %r11
mov (%r10), %ax
nop
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WC+0x5e42, %rsi
lea addresses_PSE+0x164f6, %rdi
nop
sub $23792, %r11
mov $66, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $41025, %rbx

// Store
lea addresses_UC+0x1cced, %rsi
nop
nop
nop
nop
nop
and $53694, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%rsi)
nop
xor $64619, %r11

// Store
lea addresses_WC+0x6ac2, %r9
nop
nop
nop
nop
sub $55819, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r9)
nop
add $18205, %rdx

// Store
lea addresses_A+0x19ffe, %rdi
nop
nop
nop
nop
nop
sub $38004, %rdx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rdi)
nop
nop
and $3486, %rcx

// Store
lea addresses_D+0x1eec2, %rsi
add %rcx, %rcx
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_PSE+0x7c02, %rdi
nop
nop
nop
nop
add %r11, %r11
movb $0x51, (%rdi)
nop
inc %r9

// REPMOV
lea addresses_US+0x13ec2, %rsi
lea addresses_A+0xa1e2, %rdi
nop
nop
nop
nop
nop
cmp $32328, %r10
mov $67, %rcx
rep movsb
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0x5312, %rdi
clflush (%rdi)
nop
cmp $30275, %r9
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_UC+0x52c2, %r9
sub %rsi, %rsi
movw $0x5152, (%r9)
nop
dec %rdx

// Store
lea addresses_UC+0x36c2, %r9
nop
dec %r11
movw $0x5152, (%r9)
nop
nop
nop
and %r11, %r11

// Store
lea addresses_WT+0xdac2, %rdx
nop
nop
nop
nop
nop
xor $10360, %rdi
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
cmp $41174, %r11

// Faulty Load
lea addresses_WT+0x9ac2, %rdi
nop
nop
nop
nop
nop
add $23241, %r9
mov (%rdi), %bx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_PSE', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_US'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
