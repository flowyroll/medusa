.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1566e, %rsi
lea addresses_normal_ht+0xa66e, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rdx, %rdx
mov $74, %rcx
rep movsl
nop
nop
nop
nop
add $59177, %rbx
lea addresses_A_ht+0x1766e, %rsi
lea addresses_WT_ht+0x125ae, %rdi
nop
dec %rax
mov $18, %rcx
rep movsb
nop
nop
nop
cmp $32095, %rcx
lea addresses_A_ht+0x16896, %rsi
lea addresses_D_ht+0xda6e, %rdi
nop
nop
nop
nop
inc %rdx
mov $7, %rcx
rep movsl
nop
nop
nop
add $46025, %rax
lea addresses_UC_ht+0x13c5e, %rsi
lea addresses_D_ht+0xe66e, %rdi
nop
nop
sub %rbx, %rbx
mov $43, %rcx
rep movsl
nop
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x155c4, %rsi
sub %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
sub $29645, %rdx
lea addresses_UC_ht+0x1769f, %rsi
lea addresses_WT_ht+0x1c4ae, %rdi
dec %r12
mov $108, %rcx
rep movsq
nop
xor %r12, %r12
lea addresses_WT_ht+0x19fe, %rbx
nop
sub $13695, %r12
movl $0x61626364, (%rbx)
nop
nop
inc %rcx
lea addresses_WC_ht+0x12c82, %rsi
lea addresses_D_ht+0xca6e, %rdi
nop
nop
inc %r12
mov $61, %rcx
rep movsl
nop
dec %rsi
lea addresses_UC_ht+0x1b52e, %r12
cmp $44107, %rdx
mov (%r12), %ax
inc %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_WC+0x1926e, %r9
and %rbp, %rbp
mov $0x5152535455565758, %r15
movq %r15, (%r9)
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_WC+0x182be, %rbp
sub $20812, %r8
movw $0x5152, (%rbp)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Faulty Load
lea addresses_US+0x1166e, %r15
sub %rbp, %rbp
mov (%r15), %r8w
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
