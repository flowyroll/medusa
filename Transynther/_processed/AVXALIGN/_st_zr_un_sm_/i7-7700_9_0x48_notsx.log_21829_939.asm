.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xc6e8, %r13
nop
nop
nop
cmp %rbx, %rbx
mov (%r13), %r8d
nop
nop
nop
nop
nop
xor $10535, %rbx
lea addresses_normal_ht+0x12288, %rsi
lea addresses_UC_ht+0x13a68, %rdi
xor %rdx, %rdx
mov $122, %rcx
rep movsq
add %r13, %r13
lea addresses_WT_ht+0xbf08, %rsi
nop
nop
nop
nop
nop
cmp $51882, %rbx
movb $0x61, (%rsi)
nop
nop
nop
and $11022, %rdi
lea addresses_D_ht+0x91fc, %rsi
lea addresses_WC_ht+0x167e8, %rdi
nop
nop
nop
nop
nop
cmp $63857, %r13
mov $21, %rcx
rep movsw
cmp %rcx, %rcx
lea addresses_UC_ht+0x99a4, %rsi
xor %r8, %r8
movb $0x61, (%rsi)
dec %rsi
lea addresses_WT_ht+0x5bb4, %r13
dec %rdi
movb $0x61, (%r13)
add %rcx, %rcx
lea addresses_WC_ht+0xf5e8, %rsi
lea addresses_WC_ht+0x74bd, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $121, %rcx
rep movsq
nop
nop
nop
add %rbx, %rbx
lea addresses_UC_ht+0x116e8, %r13
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r13)
nop
nop
sub $6086, %rsi
lea addresses_UC_ht+0x10e8, %rsi
lea addresses_WT_ht+0x2ce8, %rdi
nop
nop
inc %r10
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $41948, %r10
lea addresses_A_ht+0xe268, %rsi
lea addresses_A_ht+0x9098, %rdi
nop
nop
xor %rbx, %rbx
mov $122, %rcx
rep movsl
dec %rcx
lea addresses_UC_ht+0x1eb38, %rbx
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r8
movq %r8, (%rbx)
nop
nop
nop
nop
lfence
lea addresses_WC_ht+0x16168, %rsi
lea addresses_D_ht+0x1cf68, %rdi
nop
xor %rdx, %rdx
mov $26, %rcx
rep movsw
nop
nop
nop
xor $12874, %rsi
lea addresses_D_ht+0x10b48, %r8
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r8)
nop
nop
and %r8, %r8
lea addresses_normal_ht+0x1197c, %rsi
nop
nop
nop
nop
sub %r8, %r8
movb (%rsi), %r10b
and $33165, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rdx
push %rsi

// Store
lea addresses_UC+0xe001, %rdx
nop
add $44726, %r8
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
nop
nop
inc %rsi

// Store
lea addresses_UC+0x2ee8, %r12
nop
add $51691, %r15
movb $0x51, (%r12)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_UC+0x2ee8, %r9
nop
nop
nop
cmp $8072, %r11
movntdqa (%r9), %xmm1
vpextrq $0, %xmm1, %rsi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'6d': 6576, '00': 796, '51': 14457}
51 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 51 6d 6d 51 6d 51 6d 6d 6d 51 6d 51 6d 6d 6d 00 51 00 51 6d 51 00 51 6d 51 6d 51 51 6d 6d 6d 51 6d 6d 6d 51 51 6d 6d 6d 6d 51 6d 51 51 6d 6d 6d 6d 6d 6d 6d 6d 51 6d 51 51 6d 6d 51 00 51 6d 51 51 51 6d 51 51 6d 6d 51 51 6d 51 51 51 6d 51 6d 51 51 00 51 51 6d 51 6d 51 00 51 6d 51 6d 51 6d 51 51 51 51 6d 51 6d 51 6d 51 6d 51 51 51 51 51 51 6d 51 00 51 51 51 6d 51 51 6d 51 6d 51 51 6d 00 51 51 51 6d 51 51 6d 51 6d 51 6d 51 6d 6d 51 00 51 6d 51 51 6d 51 51 51 00 51 51 51 51 6d 51 51 51 51 51 6d 51 51 6d 6d 6d 51 6d 51 51 51 51 6d 51 6d 6d 51 6d 6d 51 51 51 51 51 6d 51 6d 51 6d 51 6d 6d 51 51 6d 51 6d 51 51 51 51 6d 51 6d 51 51 51 51 6d 51 6d 51 51 51 51 6d 6d 51 51 51 6d 51 51 6d 51 51 51 51 51 51 51 6d 6d 6d 6d 6d 6d 6d 51 51 00 51 51 00 51 51 51 51 51 51 51 6d 51 51 6d 00 00 51 51 51 6d 51 51 51 6d 51 51 51 6d 51 51 6d 6d 51 51 51 00 51 51 6d 6d 51 51 6d 6d 51 6d 51 51 51 51 51 00 51 51 51 6d 51 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 51 51 51 6d 51 51 51 6d 51 6d 51 51 6d 51 6d 51 51 51 6d 51 6d 6d 51 6d 51 51 51 51 51 6d 51 6d 51 51 51 6d 51 51 6d 51 51 51 51 51 51 51 51 51 51 6d 6d 6d 6d 00 51 51 6d 51 6d 6d 6d 6d 51 51 6d 6d 51 00 51 6d 51 6d 51 51 51 6d 51 00 51 51 51 51 51 51 6d 51 51 51 00 51 51 51 51 6d 51 51 6d 51 51 6d 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 51 6d 51 51 51 6d 6d 51 51 6d 51 51 51 6d 00 51 51 6d 51 51 51 6d 6d 6d 51 51 51 6d 51 6d 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 6d 51 51 51 6d 51 51 51 51 6d 51 6d 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 6d 51 6d 51 00 51 51 51 51 6d 51 6d 00 51 00 51 51 6d 00 51 51 51 6d 51 51 51 51 51 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 00 51 6d 51 51 6d 6d 6d 6d 51 6d 51 51 51 51 51 6d 51 51 6d 51 51 51 6d 51 6d 51 6d 51 6d 51 6d 00 51 51 51 6d 51 6d 51 51 51 51 51 51 51 51 51 6d 51 51 51 51 51 51 51 6d 51 51 51 51 6d 51 51 51 6d 51 6d 6d 6d 51 51 6d 51 51 6d 6d 6d 51 51 6d 51 6d 51 51 51 6d 6d 51 6d 51 6d 51 6d 51 51 51 00 51 6d 51 6d 51 6d 6d 51 51 6d 6d 51 6d 6d 51 51 51 6d 51 6d 51 6d 51 51 6d 51 51 6d 51 51 6d 51 51 51 51 6d 51 51 6d 51 51 51 51 51 6d 51 6d 6d 6d 51 51 6d 51 51 51 51 6d 51 51 51 51 6d 51 51 51 51 51 51 51 00 51 6d 6d 51 51 51 51 6d 6d 51 51 6d 51 51 51 51 51 6d 51 6d 51 51 6d 51 6d 51 51 6d 51 51 51 6d 51 6d 51 51 51 00 51 51 51 51 6d 51 51 51 51 6d 51 6d 51 51 51 6d 51 51 00 51 51 51 6d 6d 6d 51 6d 6d 51 51 6d 51 6d 51 6d 51 51 6d 51 51 6d 51 6d 6d 6d 51 51 51 51 51 6d 6d 6d 51 6d 51 6d 51 6d 51 6d 6d 6d 51 51 6d 51 51 51 51 6d 6d 6d 51 51 6d 51 51 51 51 6d 00 51 51 51 51 51 6d 51 51 51 51 6d 6d 51 6d 51 6d 51 6d 51 51 51 51 51 6d 51 6d 51 6d 00 51 51 51 6d 6d 6d 51 51 6d 6d 6d 51 51 51 51 00 51 51 51 6d 51 6d 51 51 51 51 51 51 6d 51 51 00 51 6d 51 6d 51 51 6d 6d 51 6d 51 51 6d 6d 51 6d 6d 51 6d 51 6d 51 6d 00 00 51 51 6d 00 51 51 51 00 51 51 51 51 51 51 6d 00 51 00 51 51 51 6d 6d 51 51 6d 6d 51 51 6d 6d 51 51 51 6d 00 51 51 51 51 51 51 51 51 6d 51 51 6d 6d 51 00 51 51 51 51 51 51 6d 6d 51 6d 51 00 51 51
*/
