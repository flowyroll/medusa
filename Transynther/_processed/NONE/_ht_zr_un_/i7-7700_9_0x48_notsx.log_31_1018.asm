.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xcfe1, %rsi
lea addresses_WT_ht+0x10181, %rdi
inc %r9
mov $7, %rcx
rep movsl
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x12999, %r10
nop
nop
nop
nop
nop
dec %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
nop
xor $34552, %r10
lea addresses_WC_ht+0x5fe1, %r9
nop
nop
nop
nop
nop
and $50349, %rax
movb $0x61, (%r9)
nop
sub %rdi, %rdi
lea addresses_A_ht+0x13ce1, %rsi
inc %r10
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
sub $37278, %r9
lea addresses_UC_ht+0x1c4e9, %rsi
lea addresses_A_ht+0x6fe1, %rdi
nop
nop
nop
nop
xor $18784, %r10
mov $35, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $40178, %rcx
lea addresses_A_ht+0x19ce1, %rdi
nop
nop
nop
nop
add $36027, %r10
movb $0x61, (%rdi)
and $65473, %rdi
lea addresses_UC_ht+0x54c1, %rsi
lea addresses_WT_ht+0x187e1, %rdi
nop
nop
nop
and $13009, %rbx
mov $5, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x130a1, %rsi
lea addresses_normal_ht+0x1b2a5, %rdi
nop
nop
nop
nop
and $59039, %r9
mov $15, %rcx
rep movsw
nop
add $11196, %rcx
lea addresses_UC_ht+0x17f89, %r10
nop
nop
nop
nop
nop
dec %rax
movb (%r10), %cl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x178a1, %r10
nop
nop
nop
nop
cmp $48174, %rsi
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rax
nop
nop
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x7e0b, %r12
nop
nop
nop
nop
nop
sub $46074, %r10
movb (%r12), %cl
nop
nop
nop
nop
sub $64305, %r9
lea addresses_UC_ht+0xfde1, %rbx
sub %rax, %rax
movw $0x6162, (%rbx)
nop
nop
nop
nop
xor $32653, %r10
lea addresses_UC_ht+0x5961, %rsi
lea addresses_WT_ht+0x1a2e1, %rdi
nop
nop
nop
nop
cmp $61075, %rax
mov $9, %rcx
rep movsq
nop
and $19565, %rcx
lea addresses_A_ht+0xf951, %rax
nop
nop
nop
nop
add $59142, %r10
mov (%rax), %rdi
nop
inc %rsi
lea addresses_normal_ht+0x7fe1, %rdi
xor %rcx, %rcx
mov (%rdi), %r10d
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rdx

// Store
lea addresses_normal+0x43e1, %rdx
nop
sub $31373, %r9
movw $0x5152, (%rdx)
cmp %r9, %r9

// Store
lea addresses_normal+0x1c1e1, %rbp
nop
nop
nop
nop
nop
and $14366, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm7
movups %xmm7, (%rbp)
nop
dec %r11

// Store
lea addresses_UC+0xbe61, %r8
sub %r9, %r9
movb $0x51, (%r8)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %r9
nop
nop
nop
nop
add $12618, %r11

// Faulty Load
lea addresses_A+0x2be1, %r9
and $10361, %r8
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rbp
lea oracles, %r8
and $0xff, %rbp
shlq $12, %rbp
mov (%r8,%rbp,1), %rbp
pop %rdx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 8}}
{'45': 1, '95': 9, '00': 21}
00 00 00 00 00 95 95 00 00 95 95 00 00 95 00 00 00 95 00 00 95 00 45 95 95 00 00 00 00 00 00
*/
