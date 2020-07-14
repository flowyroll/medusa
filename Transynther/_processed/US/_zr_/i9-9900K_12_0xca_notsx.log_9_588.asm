.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xab17, %rsi
lea addresses_WT_ht+0xc657, %rdi
nop
nop
nop
nop
lfence
mov $34, %rcx
rep movsw
nop
nop
and %rax, %rax
lea addresses_A_ht+0xa94f, %rsi
lea addresses_WT_ht+0x13487, %rdi
nop
nop
inc %r15
mov $114, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
lea addresses_normal_ht+0x14417, %rsi
clflush (%rsi)
nop
nop
nop
and $37765, %r14
movb $0x61, (%rsi)
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x8617, %r12
clflush (%r12)
nop
nop
add $20373, %rsi
movw $0x6162, (%r12)
nop
nop
inc %r15
lea addresses_WC_ht+0x15217, %rsi
lea addresses_WC_ht+0x4c17, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $40499, %r10
mov $49, %rcx
rep movsw
nop
nop
nop
cmp $32142, %rsi
lea addresses_WT_ht+0x12617, %rsi
nop
nop
dec %rcx
mov (%rsi), %r12d
nop
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x18657, %r15
nop
and $31815, %rsi
movl $0x51525354, (%r15)
nop
nop
nop
nop
xor $27696, %r11

// Faulty Load
lea addresses_US+0x2617, %rbx
nop
nop
nop
cmp $34340, %rcx
movups (%rbx), %xmm2
vpextrq $0, %xmm2, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'00': 9}
00 00 00 00 00 00 00 00 00
*/
