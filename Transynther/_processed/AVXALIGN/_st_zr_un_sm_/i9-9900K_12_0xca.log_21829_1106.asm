.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1bf48, %r11
nop
nop
nop
inc %r8
movb $0x61, (%r11)
nop
nop
nop
nop
nop
sub $15695, %rbp
lea addresses_D_ht+0x165f, %rcx
nop
nop
nop
nop
cmp %rdx, %rdx
movups (%rcx), %xmm1
vpextrq $0, %xmm1, %r12
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0xc318, %rdx
nop
nop
nop
nop
nop
xor $10085, %r9
movl $0x61626364, (%rdx)
and $9276, %r12
lea addresses_WC_ht+0x9b5f, %rsi
lea addresses_A_ht+0x6c7f, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $55, %rcx
rep movsw
cmp %rdi, %rdi
lea addresses_UC_ht+0x1575f, %rsi
nop
nop
nop
nop
nop
cmp $17711, %r9
movups (%rsi), %xmm0
vpextrq $0, %xmm0, %r12
nop
nop
cmp $25888, %r9
lea addresses_WT_ht+0x11f5f, %rsi
lea addresses_WT_ht+0x1725f, %rdi
nop
and $35781, %rbp
mov $0, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $27607, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rax
push %rdx

// Store
mov $0x6c1e0000000b5f, %r10
nop
and %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
nop
xor %r14, %r14

// Faulty Load
mov $0x6c1e0000000b5f, %r10
nop
nop
nop
nop
cmp $45692, %r15
movb (%r10), %al
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'00': 79, '58': 9606, '5f': 12144}
5f 58 00 58 5f 5f 58 5f 5f 58 58 5f 5f 5f 58 5f 5f 5f 58 5f 5f 58 58 58 5f 5f 58 5f 58 58 58 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 58 5f 58 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 58 58 5f 58 58 5f 5f 5f 58 58 5f 5f 58 5f 58 58 58 58 5f 5f 58 5f 5f 5f 58 58 5f 58 58 58 58 58 5f 5f 58 58 5f 5f 5f 5f 58 58 5f 58 58 5f 5f 58 58 58 5f 58 5f 58 5f 58 58 58 58 58 58 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 58 58 58 58 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 58 58 58 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 5f 5f 5f 58 5f 58 58 58 5f 5f 5f 5f 5f 58 5f 58 5f 5f 58 58 58 58 5f 58 58 5f 5f 58 5f 58 5f 5f 58 58 5f 5f 5f 5f 58 5f 5f 58 5f 58 5f 58 58 58 5f 58 58 5f 58 58 5f 58 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 58 00 5f 5f 58 5f 58 5f 5f 5f 58 58 5f 5f 58 58 5f 5f 58 5f 58 58 58 58 5f 5f 5f 58 58 5f 5f 58 58 5f 58 58 58 58 58 5f 58 5f 5f 5f 58 58 58 58 58 5f 5f 5f 5f 58 58 5f 58 5f 58 5f 5f 58 58 58 00 58 5f 58 58 5f 5f 5f 5f 5f 58 5f 58 5f 58 58 5f 58 5f 5f 58 5f 58 5f 5f 5f 58 5f 5f 58 5f 58 58 5f 5f 58 5f 5f 5f 58 5f 58 58 58 58 58 58 58 5f 5f 5f 58 5f 5f 58 5f 58 58 5f 58 58 5f 5f 5f 5f 5f 58 58 58 5f 58 5f 58 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 58 58 5f 5f 58 5f 5f 00 5f 58 5f 58 58 5f 5f 58 5f 58 5f 5f 5f 5f 58 58 58 5f 5f 5f 58 5f 5f 58 58 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 58 5f 58 5f 5f 58 5f 58 5f 58 5f 58 58 5f 58 5f 58 5f 58 5f 5f 58 58 5f 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 58 5f 58 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 58 58 5f 58 58 5f 5f 58 5f 5f 58 5f 5f 58 58 58 58 5f 5f 5f 58 58 5f 5f 5f 58 5f 58 58 58 5f 58 58 5f 5f 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 58 58 5f 5f 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 5f 58 58 58 58 5f 5f 58 58 5f 5f 58 58 58 5f 58 58 58 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 5f 5f 58 5f 58 5f 58 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 00 5f 58 58 5f 5f 58 5f 5f 58 5f 5f 58 5f 58 58 58 5f 5f 5f 58 5f 5f 58 58 5f 58 58 5f 5f 58 5f 58 5f 58 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 58 5f 58 58 5f 58 58 5f 58 5f 58 58 58 5f 58 5f 5f 5f 58 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 58 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 58 5f 58 58 5f 58 5f 58 5f 5f 5f 5f 5f 58 58 5f 5f 58 58 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 58 5f 58 58 5f 5f 58 5f 58 58 5f 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 58 58 5f 5f 58 58 58 58 5f 58 5f 5f 58 5f 58 58 58 58 58 5f 58 58 58 58 5f 5f 58 5f 5f 5f 58 5f 58 58 5f 5f 5f 58 58 5f 5f 5f 58 58 58 58 58 58 5f 58 58 5f 58 5f 5f 58 5f 5f 58 58 5f 5f 5f 58 58 58 5f 5f 58 5f 58 58 58 58 5f 58 5f 5f 58 58 58 58 5f 58 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 58 5f 58 5f 5f 58 58 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f
*/
