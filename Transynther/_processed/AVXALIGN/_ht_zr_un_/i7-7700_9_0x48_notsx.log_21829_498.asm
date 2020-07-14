.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x125cf, %rsi
nop
nop
nop
inc %r8
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
cmp %r9, %r9
lea addresses_UC_ht+0x4c1f, %r15
nop
nop
nop
sub $39791, %r10
movb (%r15), %r14b
nop
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1d16f, %rsi
lea addresses_WT_ht+0x8283, %rdi
nop
nop
nop
nop
and $64082, %r9
mov $60, %rcx
rep movsb
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x167df, %r9
add $16607, %r15
movb $0x61, (%r9)
nop
nop
nop
nop
sub $9853, %r8
lea addresses_WC_ht+0x1b8e7, %rsi
lea addresses_normal_ht+0x1e7df, %rdi
nop
nop
xor $45681, %r8
mov $67, %rcx
rep movsw
nop
nop
nop
nop
lfence
lea addresses_normal_ht+0xefdf, %r10
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%r10)
nop
add $2968, %rdi
lea addresses_UC_ht+0xf35f, %rsi
nop
nop
nop
nop
nop
xor %r8, %r8
movb (%rsi), %r15b
nop
nop
nop
nop
cmp $40401, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rsi

// Store
lea addresses_WC+0x28df, %r14
nop
nop
sub $26878, %r15
movb $0x51, (%r14)
xor %r14, %r14

// Store
lea addresses_D+0x73af, %rsi
nop
nop
nop
nop
xor $33308, %rcx
movl $0x51525354, (%rsi)
nop
nop
nop
inc %r15

// Store
lea addresses_WC+0x4ddf, %rsi
nop
nop
nop
nop
nop
sub %rbx, %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
inc %r8

// Store
lea addresses_A+0x1cebf, %rsi
nop
nop
nop
nop
dec %rcx
movw $0x5152, (%rsi)
nop
nop
nop
add %r10, %r10

// Faulty Load
mov $0x3df, %r10
nop
nop
sub %rbx, %rbx
movntdqa (%r10), %xmm0
vpextrq $1, %xmm0, %r14
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rsi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'48': 4732, '61': 2, '08': 1, '45': 7729, '00': 9365}
00 48 00 00 00 00 00 00 00 00 45 48 00 45 00 48 00 00 00 45 48 00 45 48 00 45 00 00 48 00 00 45 00 45 00 00 45 00 00 00 48 00 45 00 00 00 00 00 45 48 00 45 48 00 00 00 00 00 00 45 00 45 00 45 00 45 48 00 45 00 48 45 48 00 45 00 45 00 00 45 00 48 00 45 00 45 45 48 00 45 45 45 48 00 45 00 00 45 48 48 45 45 45 00 45 48 00 48 00 48 45 00 48 00 45 00 45 00 00 48 00 48 00 48 00 45 00 00 00 45 00 48 00 00 45 48 00 00 45 00 45 00 00 48 00 45 00 45 48 00 00 48 00 00 45 00 00 48 00 48 48 45 45 45 00 48 00 00 00 00 48 00 48 45 48 00 48 45 45 48 00 45 48 45 45 45 00 45 00 00 48 45 48 45 45 00 45 48 00 45 48 00 00 48 00 48 45 00 00 00 48 00 00 48 00 45 48 00 00 45 48 00 00 00 00 00 45 48 48 00 45 00 00 45 00 45 00 00 48 00 45 48 00 45 00 45 45 45 00 45 45 00 00 48 00 48 00 48 00 48 00 45 45 45 48 45 48 45 48 00 45 00 48 00 00 00 00 00 00 45 00 45 00 45 00 45 00 48 00 45 00 45 48 00 45 00 00 00 45 00 00 45 00 45 45 00 45 45 48 45 45 48 00 48 00 48 00 00 45 00 45 48 00 48 00 45 45 00 00 45 48 00 45 48 00 45 45 48 45 00 48 00 45 48 00 45 00 00 00 00 45 00 00 48 00 45 45 00 45 00 00 45 00 00 45 45 00 00 45 00 45 48 00 45 00 48 45 48 00 45 00 00 45 00 48 00 45 00 00 45 45 48 00 48 00 00 00 48 00 45 00 00 45 45 48 00 00 00 00 45 00 45 00 45 00 45 48 00 48 00 45 00 45 45 48 45 45 48 48 00 45 45 48 48 45 45 48 00 00 45 00 45 45 00 48 00 45 00 45 45 45 45 00 45 45 48 45 48 48 45 45 48 00 00 00 48 00 45 48 00 00 45 48 00 48 00 48 00 00 00 45 45 00 00 45 45 48 45 48 00 45 48 48 45 45 00 45 48 48 45 45 45 48 00 45 00 45 00 48 45 48 00 45 00 45 45 00 00 45 48 48 48 48 45 48 48 00 45 00 45 00 45 45 48 48 00 45 00 00 45 00 00 00 48 00 45 00 45 00 48 00 00 00 48 00 00 45 00 45 00 45 45 48 00 45 45 00 45 45 00 48 00 45 00 48 00 48 00 48 45 00 00 45 48 45 00 45 00 00 45 00 45 00 45 48 45 48 00 45 48 45 48 00 48 00 45 48 45 48 00 48 00 45 45 45 45 00 45 45 00 45 00 48 00 45 48 00 45 48 00 45 45 00 00 45 48 45 48 00 45 00 00 00 45 00 45 00 45 00 45 48 48 45 45 00 00 48 45 00 00 00 45 48 48 45 45 48 00 48 00 48 00 00 45 00 45 48 48 00 45 48 45 48 00 48 48 00 48 00 00 45 48 00 45 00 48 45 48 00 00 48 00 48 48 00 45 45 48 45 45 48 00 45 00 00 45 00 48 00 45 00 48 00 00 48 48 00 45 48 00 45 48 00 45 48 00 48 00 00 45 00 00 45 00 45 45 00 00 00 00 00 45 48 00 00 45 48 00 45 45 45 48 00 00 48 45 00 00 45 48 00 45 48 00 48 48 45 00 48 45 45 00 45 00 48 00 45 48 48 00 45 48 00 45 45 00 45 00 45 48 00 45 00 45 00 00 48 45 00 00 48 00 45 00 45 48 00 48 00 00 45 48 00 00 45 48 48 00 00 00 00 00 00 00 00 45 45 45 00 00 45 48 00 48 00 48 00 48 48 00 48 48 00 00 45 00 48 45 45 00 45 45 48 48 45 48 00 45 48 00 45 45 00 00 45 45 00 45 45 00 00 00 00 45 00 00 48 00 45 45 48 00 00 45 45 00 00 48 00 00 48 45 45 00 45 48 45 45 48 45 45 00 00 45 45 00 48 00 45 00 45 00 00 48 00 45 48 45 48 00 45 00 45 00 48 00 00 48 48 00 45 48 00 00 45 45 00 00 00 00 45 00 45 00 00 45 48 00 45 45 45 48 00 45 00 00 45 00 45 45 48 45 48 00 45 00 00 00 48 00 45 48 00 45 00 45 00 45 45 45 48 45 48 00 45 48 45 48 45 00
*/
