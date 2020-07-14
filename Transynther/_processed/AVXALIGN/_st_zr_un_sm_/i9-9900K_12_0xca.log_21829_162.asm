.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x714f, %rsi
lea addresses_WC_ht+0x1cfef, %rdi
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $96, %rcx
rep movsb
nop
nop
nop
and $18709, %rbp
lea addresses_normal_ht+0xdf6f, %r8
clflush (%r8)
nop
sub $48633, %r12
mov (%r8), %edi
nop
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x45ef, %rbp
nop
nop
nop
nop
dec %r8
movb $0x61, (%rbp)
nop
nop
nop
cmp $63774, %r12
lea addresses_WT_ht+0x2bef, %rsi
clflush (%rsi)
nop
nop
nop
cmp $6064, %r15
mov (%rsi), %rcx
nop
xor $5592, %rsi
lea addresses_normal_ht+0x199ef, %r15
xor $13521, %rbp
movups (%r15), %xmm4
vpextrq $0, %xmm4, %rdi
dec %rdi
lea addresses_WT_ht+0x1c427, %rbp
cmp %rdi, %rdi
movb (%rbp), %r8b
nop
nop
nop
sub $19620, %r12
lea addresses_UC_ht+0x1d49f, %rsi
lea addresses_WT_ht+0x1725b, %rdi
nop
cmp %r8, %r8
mov $89, %rcx
rep movsb
nop
nop
nop
nop
and $30195, %rcx
lea addresses_A_ht+0x1a87d, %r12
nop
xor %rdi, %rdi
mov (%r12), %ecx
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x533, %rsi
nop
nop
cmp %rbp, %rbp
mov (%rsi), %rdi
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0xedef, %r12
nop
nop
nop
add $10925, %rsi
movb $0x61, (%r12)
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x15cef, %rsi
lea addresses_A_ht+0x949e, %rdi
nop
nop
cmp %r10, %r10
mov $86, %rcx
rep movsw
add $56990, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx

// Store
lea addresses_D+0x1722f, %rax
nop
nop
nop
nop
xor $18996, %r13
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
sub %r10, %r10

// Store
lea addresses_WC+0xd9ef, %r13
dec %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r13)
nop
nop
nop
dec %r13

// Faulty Load
lea addresses_WC+0xd9ef, %r11
inc %rcx
movaps (%r11), %xmm0
vpextrq $0, %xmm0, %rbx
lea oracles, %rax
and $0xff, %rbx
shlq $12, %rbx
mov (%rax,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'00': 12656, '58': 2486, '70': 6687}
00 00 00 70 00 00 00 58 70 58 00 58 00 00 00 00 70 58 00 00 00 00 70 00 00 70 00 00 00 00 00 70 00 00 00 00 00 00 00 70 70 00 00 00 70 00 70 00 58 70 00 00 00 58 58 70 00 70 70 58 00 00 70 00 00 00 00 70 58 00 70 00 70 70 00 00 00 00 00 00 58 58 00 00 00 70 70 70 00 70 70 00 70 00 58 00 58 00 00 00 00 00 00 70 70 70 00 58 70 70 00 58 00 00 00 70 00 00 00 00 70 00 00 00 00 00 00 58 70 00 00 00 58 70 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 70 00 00 00 58 00 00 00 70 00 00 70 70 00 00 00 58 70 00 70 00 70 00 70 00 00 58 70 00 58 70 70 00 00 58 70 00 00 00 58 00 00 70 70 70 58 70 00 58 00 00 00 70 58 00 00 70 00 58 70 00 70 00 00 58 00 00 00 00 58 00 70 58 00 00 58 00 00 00 00 00 70 58 00 00 00 70 58 00 00 70 70 58 70 70 00 00 00 00 00 70 70 70 00 58 58 00 70 00 00 70 58 00 00 00 70 70 00 70 70 70 58 58 00 70 00 00 70 70 70 58 00 70 70 70 58 58 00 00 00 00 00 00 00 70 00 00 00 00 70 70 70 70 70 00 00 00 00 00 00 70 00 00 00 00 00 00 00 00 70 00 58 00 00 00 70 00 00 00 00 00 00 00 00 00 70 00 00 58 00 70 00 00 00 70 00 00 00 70 00 70 58 70 58 00 70 00 00 00 70 70 58 70 70 00 70 00 70 00 00 70 00 70 00 70 00 00 58 00 00 70 00 70 58 00 00 00 00 00 00 00 00 00 00 70 00 00 70 00 58 00 70 70 58 70 70 58 70 00 00 00 70 00 70 70 70 00 00 00 00 70 00 70 58 00 00 58 00 00 70 00 00 70 00 00 00 00 00 58 00 70 70 00 00 00 00 00 00 70 70 00 58 70 70 00 70 00 00 70 00 70 00 70 58 00 58 58 70 58 00 00 70 00 00 58 00 70 00 00 00 00 00 70 70 00 00 00 00 00 00 70 00 70 00 00 00 00 00 00 70 70 70 70 00 58 00 00 00 00 70 70 58 70 00 00 00 00 70 70 00 00 70 70 00 00 70 00 58 70 70 00 70 00 00 70 00 00 00 00 00 70 70 58 00 00 00 00 00 70 00 70 58 00 70 00 00 70 70 00 00 00 00 00 00 58 00 00 00 70 00 00 00 70 00 00 00 70 00 00 00 00 00 70 70 00 00 58 00 70 70 00 00 70 58 00 70 00 70 00 70 00 00 00 58 00 00 70 00 00 00 00 70 70 00 00 00 70 00 70 70 00 00 00 70 58 00 58 00 70 70 00 00 00 70 70 00 70 00 00 00 70 70 00 00 70 70 00 00 00 70 00 58 70 00 00 00 70 70 70 00 70 00 70 00 58 00 00 70 00 00 58 00 70 00 00 00 00 00 00 00 70 00 00 00 70 70 00 00 00 70 70 00 00 58 58 00 70 58 00 00 70 70 58 00 00 00 00 70 00 00 58 70 00 00 00 70 00 00 70 70 70 70 70 58 00 00 00 00 70 70 00 70 00 00 00 00 00 00 70 58 00 00 00 58 00 00 00 70 00 00 70 00 70 70 70 00 00 00 00 70 70 00 00 00 70 58 70 00 00 00 58 00 70 70 00 00 00 58 70 70 70 00 70 00 00 00 00 00 70 70 00 70 70 00 00 00 00 00 00 58 00 58 00 00 70 00 00 00 00 00 00 70 70 70 00 70 00 00 00 00 00 00 58 00 70 00 00 70 00 00 70 00 00 70 70 58 70 00 58 70 70 58 00 70 00 70 70 70 70 58 00 00 00 00 00 70 00 70 00 00 70 00 70 70 70 00 00 70 00 00 58 70 00 70 00 00 00 00 70 00 70 00 70 00 00 58 00 70 00 00 00 00 58 70 70 00 00 70 00 00 00 70 00 00 70 00 70 70 00 00 70 70 00 70 00 70 70 00 00 58 00 00 70 70 70 70 00 70 70 00 00 70 70 00 00 70 00 70 00 00 00 58 70 00 00 70 00 70 00 00 00 00 00 70 00 70 00 00 00 70 58 00 00 58 70 00 00 70 70 00 00 70 00 70 00 70 00 00 00 00 70 00 58 00 00 00 00 70 00 70 00 70 70 00 00 70 00 70 70 70 00
*/
