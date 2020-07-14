.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x165c, %rax
nop
and $3622, %rdi
movw $0x6162, (%rax)
nop
sub $40382, %r8
lea addresses_WT_ht+0x187a5, %rbp
nop
nop
nop
inc %rdx
movb (%rbp), %bl
nop
nop
nop
nop
nop
xor $48449, %rdx
lea addresses_D_ht+0xb1fb, %rbx
nop
nop
dec %r13
and $0xffffffffffffffc0, %rbx
vmovntdqa (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_A_ht+0x145d1, %rsi
lea addresses_D_ht+0xd6e1, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $81, %rcx
rep movsl
add %r8, %r8
lea addresses_A_ht+0x1ae1, %rdi
nop
nop
nop
nop
nop
add $45904, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rdi)
dec %rdi
lea addresses_WT_ht+0xb9e6, %rcx
nop
nop
nop
nop
add $36785, %rbp
mov (%rcx), %r13
nop
nop
dec %rbp
lea addresses_D_ht+0xe8a1, %r13
nop
nop
add %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
sub $58611, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WT+0x1c8e1, %rdi
nop
add $37033, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor $3796, %rdi

// Store
lea addresses_WT+0x3161, %rcx
nop
inc %rdx
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
and $46310, %r11

// Store
lea addresses_normal+0xa8e1, %rcx
nop
nop
nop
nop
nop
inc %r14
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
movups %xmm4, (%rcx)
nop
cmp %rdx, %rdx

// Store
lea addresses_WT+0xd1d4, %rdx
nop
nop
nop
nop
nop
inc %r12
mov $0x5152535455565758, %r11
movq %r11, (%rdx)
nop
nop
and %rsi, %rsi

// Faulty Load
mov $0xe1, %rsi
nop
nop
nop
nop
cmp $51054, %rcx
movb (%rsi), %r11b
lea oracles, %r14
and $0xff, %r11
shlq $12, %r11
mov (%r14,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'00': 4}
00 00 00 00
*/
