.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1183e, %rsi
lea addresses_WC_ht+0x73fe, %rdi
nop
xor %r12, %r12
mov $41, %rcx
rep movsl
nop
nop
sub $57644, %rbp
lea addresses_UC_ht+0x59fe, %rsi
nop
nop
nop
inc %r11
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
xor %r11, %r11
lea addresses_WT_ht+0x21be, %rsi
lea addresses_WC_ht+0x10bfe, %rdi
nop
cmp %r12, %r12
mov $88, %rcx
rep movsw
sub $41685, %rcx
lea addresses_D_ht+0x153fe, %rsi
lea addresses_UC_ht+0x1c1fe, %rdi
nop
cmp %r10, %r10
mov $12, %rcx
rep movsw
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WC_ht+0x15c36, %rsi
lea addresses_WC_ht+0x1ae3a, %rdi
clflush (%rdi)
nop
nop
nop
add %r12, %r12
mov $98, %rcx
rep movsl
nop
nop
cmp %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbx

// Store
lea addresses_RW+0xdbfe, %r10
nop
nop
nop
sub %r12, %r12
movl $0x51525354, (%r10)
nop
nop
and %r15, %r15

// Store
lea addresses_RW+0xdbfe, %r14
sub %rbx, %rbx
movw $0x5152, (%r14)
nop
nop
nop
and $23483, %r15

// Store
mov $0xb86, %r12
nop
nop
and $45176, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm1
movups %xmm1, (%r12)
nop
nop
nop
nop
and $60679, %r10

// Store
lea addresses_US+0xeffe, %r10
nop
nop
nop
nop
nop
sub $2402, %r13
movl $0x51525354, (%r10)
dec %r9

// Store
lea addresses_UC+0x14fb2, %rbx
nop
nop
nop
nop
add $35930, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm5
movups %xmm5, (%rbx)
nop
nop
inc %rbx

// Store
lea addresses_D+0x1f63e, %r12
nop
nop
nop
nop
inc %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%r12)
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0xdbfe, %r15
nop
cmp $52358, %r12
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovaps %ymm5, (%r15)
nop
nop
nop
nop
dec %rbx

// Store
lea addresses_RW+0xdbfe, %r13
and %rbx, %rbx
mov $0x5152535455565758, %r15
movq %r15, (%r13)
add %r9, %r9

// Store
lea addresses_UC+0x120f6, %r14
nop
nop
nop
nop
and %r15, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
and $0xffffffffffffffc0, %r14
vmovntdq %ymm0, (%r14)
nop
sub %r14, %r14

// Faulty Load
lea addresses_RW+0xdbfe, %r9
nop
nop
nop
xor $53429, %r13
movb (%r9), %r15b
lea oracles, %rbx
and $0xff, %r15
shlq $12, %r15
mov (%rbx,%r15,1), %r15
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 3}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'58': 22}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
