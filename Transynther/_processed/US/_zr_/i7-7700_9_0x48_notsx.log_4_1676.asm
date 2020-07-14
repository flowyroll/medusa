.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xa0a6, %rsi
lea addresses_D_ht+0x13ea6, %rdi
nop
nop
nop
nop
sub %r8, %r8
mov $59, %rcx
rep movsq
nop
nop
nop
add $28957, %r12
lea addresses_WC_ht+0x44a6, %rdx
nop
and $42591, %rdi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rdx)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0x1bf26, %rsi
lea addresses_WC_ht+0x1ad1a, %rdi
nop
dec %r11
mov $30, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r12, %r12
lea addresses_UC_ht+0x156a6, %rsi
lea addresses_WC_ht+0xa1c6, %rdi
nop
nop
add %rbp, %rbp
mov $119, %rcx
rep movsq
nop
nop
nop
nop
and $24700, %r11
lea addresses_WC_ht+0x130a6, %r12
nop
nop
add %rdi, %rdi
mov (%r12), %r8w
nop
nop
inc %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_A+0xda66, %rdx
nop
nop
nop
nop
sub $56226, %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rdx)
nop
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_D+0x1cb26, %r9
and %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
nop
inc %rcx

// Faulty Load
lea addresses_US+0xe4a6, %rax
nop
cmp %rdx, %rdx
movups (%rax), %xmm5
vpextrq $1, %xmm5, %rbx
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'00': 4}
00 00 00 00
*/
