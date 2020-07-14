.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x14ad4, %rsi
lea addresses_normal_ht+0x61d4, %rdi
nop
nop
dec %r8
mov $49, %rcx
rep movsb
nop
nop
nop
add $4128, %rax
lea addresses_normal_ht+0x132d4, %rbx
xor %rdx, %rdx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%rbx)
nop
add %r8, %r8
lea addresses_D_ht+0x5714, %r8
nop
add $40022, %rcx
mov (%r8), %esi
inc %rdi
lea addresses_UC_ht+0x2e80, %rsi
lea addresses_A_ht+0x7ad4, %rdi
nop
nop
add %rdx, %rdx
mov $91, %rcx
rep movsw
nop
and $6027, %rax
lea addresses_UC_ht+0x74d0, %rsi
lea addresses_WT_ht+0x1c0d4, %rdi
nop
nop
nop
nop
inc %rdx
mov $69, %rcx
rep movsb
nop
nop
nop
and $48617, %rdx
lea addresses_WT_ht+0xaa97, %rcx
nop
nop
nop
cmp %rdx, %rdx
movups (%rcx), %xmm0
vpextrq $1, %xmm0, %rax
nop
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x86d4, %rcx
cmp $19440, %rbx
movl $0x61626364, (%rcx)
nop
nop
dec %r8
lea addresses_WC_ht+0x1a6d4, %rsi
lea addresses_normal_ht+0x1e764, %rdi
nop
dec %r15
mov $103, %rcx
rep movsw
and %rcx, %rcx
lea addresses_normal_ht+0x26d4, %rdi
and $28131, %rsi
movw $0x6162, (%rdi)
nop
sub $52731, %r8
lea addresses_A_ht+0x42d8, %rcx
nop
xor %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %r15, %r15
lea addresses_normal_ht+0x1bad4, %r8
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%r8)
nop
nop
sub %rax, %rax
lea addresses_UC_ht+0x309c, %rsi
lea addresses_A_ht+0x19f14, %rdi
sub %rax, %rax
mov $14, %rcx
rep movsb
xor $33098, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WT+0x709c, %rsi
lea addresses_WT+0x9dd4, %rdi
nop
nop
nop
nop
inc %r15
mov $70, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rcx

// Store
mov $0xad4, %r15
nop
nop
nop
cmp %rax, %rax
movb $0x51, (%r15)
nop
nop
nop
nop
xor $3737, %rax

// Load
lea addresses_A+0xa4d4, %rax
nop
xor $32386, %r15
mov (%rax), %rdi
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_PSE+0x3ad4, %rbx
nop
nop
nop
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rbx)
nop
cmp $16382, %rsi

// Store
lea addresses_UC+0x19374, %rbx
nop
nop
nop
nop
cmp $46214, %rax
movl $0x51525354, (%rbx)
cmp $35064, %rax

// Store
lea addresses_WT+0x1e64c, %rbx
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
vmovaps %ymm3, (%rbx)
nop
nop
nop
sub %rbx, %rbx

// Store
lea addresses_PSE+0xa554, %r15
nop
add %rbx, %rbx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movntdq %xmm3, (%r15)
nop
nop
nop
nop
nop
sub $50228, %rsi

// Store
mov $0x6e778400000002d4, %rax
nop
nop
and $58453, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_UC+0x15f34, %rcx
inc %r15
movb $0x51, (%rcx)
nop
nop
dec %r15

// Store
lea addresses_D+0x162d4, %rcx
clflush (%rcx)
cmp %r11, %r11
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
lea addresses_PSE+0x3ad4, %r11
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r11)
add $20329, %r11

// Store
lea addresses_D+0x17dc0, %rdi
nop
add $63472, %r11
movl $0x51525354, (%rdi)
xor %rbx, %rbx

// Faulty Load
lea addresses_PSE+0x3ad4, %rcx
xor $7914, %rax
mov (%rcx), %r15
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 1, 'type': 'addresses_PSE', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 7}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_PSE', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_PSE', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 11}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}}
{'58': 19991}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
