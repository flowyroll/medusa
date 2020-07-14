.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9cce, %r15
clflush (%r15)
nop
nop
xor $23791, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r15)
nop
nop
inc %r10
lea addresses_normal_ht+0x5bee, %rsi
lea addresses_D_ht+0xfbce, %rdi
nop
nop
dec %r13
mov $15, %rcx
rep movsw
nop
dec %r13
lea addresses_WT_ht+0x19ace, %r14
xor %r13, %r13
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
and %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0xf0e, %rsi
lea addresses_normal+0x18c8a, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $68, %rcx
rep movsl
nop
sub $60920, %rsi

// Store
mov $0xedf, %r9
nop
nop
nop
nop
nop
xor $24211, %rdi
mov $0x5152535455565758, %r12
movq %r12, (%r9)
cmp %rdi, %rdi

// Faulty Load
lea addresses_WC+0x100ce, %r8
inc %rsi
movntdqa (%r8), %xmm6
vpextrq $0, %xmm6, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_P'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'00': 3}
00 00 00
*/
