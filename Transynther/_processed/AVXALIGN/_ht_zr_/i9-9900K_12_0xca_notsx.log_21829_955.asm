.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6bb, %r13
nop
cmp $28683, %rdi
movw $0x6162, (%r13)
nop
nop
cmp %r13, %r13
lea addresses_A_ht+0x1b6bb, %r10
nop
nop
nop
nop
nop
inc %r15
movb (%r10), %r9b
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0xcabb, %rsi
lea addresses_A_ht+0x20bb, %rdi
nop
and %r15, %r15
mov $89, %rcx
rep movsb
nop
nop
nop
lfence
lea addresses_WT_ht+0x6ebb, %rsi
lea addresses_D_ht+0x7d3b, %rdi
nop
nop
nop
nop
xor %r15, %r15
mov $90, %rcx
rep movsq
nop
mfence
lea addresses_WC_ht+0xd933, %r13
nop
nop
and %rdi, %rdi
mov (%r13), %ecx
nop
nop
and $21320, %r13
lea addresses_D_ht+0xd0db, %r10
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r10)
nop
nop
cmp $60292, %rcx
lea addresses_WC_ht+0xda42, %r15
nop
nop
nop
nop
nop
and %r9, %r9
movl $0x61626364, (%r15)
nop
mfence
lea addresses_WC_ht+0x1eebb, %rsi
lea addresses_D_ht+0x8dfa, %rdi
nop
nop
nop
nop
nop
add $2631, %r10
mov $37, %rcx
rep movsb
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x6bf, %rbp
nop
sub $29077, %rcx
mov (%rbp), %r15w
nop
xor $7262, %r10
lea addresses_D_ht+0xebb, %rsi
clflush (%rsi)
nop
nop
nop
lfence
movw $0x6162, (%rsi)
nop
nop
cmp $26495, %r10
lea addresses_UC_ht+0x13ebb, %rsi
lea addresses_A_ht+0x339b, %rdi
nop
nop
sub %r10, %r10
mov $120, %rcx
rep movsq
nop
nop
nop
nop
nop
xor $41744, %rbp
lea addresses_A_ht+0x1b6bb, %rsi
lea addresses_WC_ht+0xf6bb, %rdi
clflush (%rdi)
nop
nop
nop
xor $65379, %rbp
mov $68, %rcx
rep movsq
nop
sub %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp

// Faulty Load
lea addresses_PSE+0x136bb, %r14
cmp %r13, %r13
movntdqa (%r14), %xmm2
vpextrq $1, %xmm2, %r11
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'49': 137, '00': 8062, '45': 4104, '48': 9526}
45 48 00 00 00 00 45 48 48 00 45 48 00 45 48 00 48 45 48 48 00 00 48 48 45 48 00 45 48 00 00 00 00 00 48 48 00 00 48 00 48 00 45 45 48 00 00 00 48 48 48 48 00 48 48 48 45 00 48 45 48 00 48 45 48 48 00 45 48 00 48 45 48 00 00 00 48 00 45 48 00 45 48 48 00 00 00 00 00 00 45 48 48 00 00 48 45 48 45 00 48 45 48 48 45 48 48 00 45 48 48 48 00 48 45 48 48 48 45 48 00 00 48 00 00 48 48 48 00 48 00 45 48 48 45 48 48 49 48 48 48 45 48 00 00 48 48 48 45 48 48 00 00 00 00 48 45 48 48 00 45 48 48 48 45 48 48 45 45 48 48 45 48 00 00 48 48 00 00 48 00 00 00 00 00 00 45 48 45 48 45 48 48 00 45 48 48 48 00 45 48 00 48 45 48 48 00 00 48 48 45 48 45 00 00 45 48 00 48 45 48 00 48 45 48 48 00 00 00 48 48 48 48 45 45 48 00 48 45 48 48 00 45 45 48 45 00 00 00 00 00 48 48 48 00 45 48 00 48 48 48 00 00 00 48 00 00 48 45 48 00 00 48 00 00 48 48 00 00 00 48 00 00 45 48 48 45 48 00 00 00 48 00 00 45 45 48 00 48 48 00 00 45 48 48 00 48 48 45 48 00 00 48 45 48 48 00 45 48 00 00 45 48 48 00 00 00 00 00 00 45 48 48 00 48 48 45 48 00 00 00 00 45 48 48 48 00 00 00 00 00 00 48 45 48 00 00 00 45 48 48 45 48 48 00 00 48 45 48 00 00 48 00 48 48 45 48 00 00 48 45 48 48 00 45 48 48 00 00 48 00 48 45 48 00 00 00 00 45 48 48 45 48 48 48 45 48 45 48 00 48 48 48 45 48 00 00 45 48 48 00 48 45 48 00 00 45 48 00 00 45 48 48 45 48 00 48 45 48 48 45 48 48 48 45 45 48 00 45 48 00 00 00 48 48 45 48 00 45 48 48 00 00 00 00 48 45 48 48 49 48 45 48 48 48 45 49 48 00 00 45 48 00 00 48 45 48 45 48 00 00 45 48 00 48 45 48 48 00 48 48 45 48 48 48 48 48 48 48 48 45 48 00 45 00 48 45 48 00 48 45 48 00 00 45 48 00 48 45 48 00 45 48 00 48 45 48 00 48 00 45 48 45 48 00 00 45 48 48 45 48 48 45 48 00 00 00 45 48 00 00 48 48 00 00 00 00 00 48 48 48 48 48 00 00 00 48 00 00 45 48 48 00 45 48 00 00 00 45 48 45 00 48 00 48 00 00 00 00 00 45 48 00 00 48 48 45 48 48 48 45 48 00 00 48 48 00 00 45 48 48 00 48 48 48 00 00 00 00 00 00 48 00 45 45 48 00 45 48 45 48 00 00 45 48 45 48 45 48 00 00 00 00 00 00 48 45 45 48 00 45 00 48 48 45 45 48 45 48 00 00 45 48 00 48 49 48 48 45 48 48 00 48 00 45 48 48 45 48 48 00 48 48 00 49 48 00 00 45 48 48 48 00 48 00 00 48 45 48 48 45 00 48 48 45 48 48 45 48 48 45 48 48 00 45 45 48 00 48 45 48 45 48 00 00 48 45 48 00 48 00 00 00 00 00 48 00 48 00 00 48 00 00 48 00 48 48 45 48 00 48 48 00 00 00 48 00 48 00 00 00 48 48 48 00 45 48 00 48 48 00 00 00 00 00 48 48 00 45 45 48 45 48 00 00 48 00 00 48 48 48 00 00 00 45 48 45 48 48 45 00 00 45 48 00 00 00 00 45 45 48 00 48 48 48 45 45 48 00 45 48 00 45 48 00 45 48 00 45 48 00 00 00 00 45 48 48 45 48 00 45 48 00 00 48 48 48 00 48 00 45 48 48 48 00 00 45 48 00 00 48 00 00 45 45 48 48 48 00 45 48 48 45 48 00 00 45 48 00 00 00 00 00 00 00 00 00 45 48 00 45 48 00 00 00 45 48 48 48 48 45 48 48 00 48 00 00 45 48 48 00 00 00 00 48 00 45 48 00 48 00 48 00 00 48 00 00 00 00 45 48 00 00 45 48 00 48 45 48 48 45 48 48 48 45 48 00 45 45 48 48 00 45 48 00 00 45 48 48 48 00 00 48 48 45 48 48 45 48 00 48 00 48 48 00 45 48 00 48 00 45 48 48 45 48 00 00 45 48 45
*/
