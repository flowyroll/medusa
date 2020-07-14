.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2530, %rdi
nop
nop
nop
add $9571, %r10
mov (%rdi), %cx
dec %rsi
lea addresses_D_ht+0xc9b0, %r10
nop
nop
nop
nop
nop
and %rax, %rax
mov (%r10), %bp
nop
nop
dec %rax
lea addresses_WC_ht+0x129b0, %rax
clflush (%rax)
nop
nop
sub $2701, %r9
mov (%rax), %cx
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x1542c, %r9
nop
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub $35177, %rax
lea addresses_UC_ht+0x11b80, %r10
nop
nop
xor %rax, %rax
movb $0x61, (%r10)
nop
nop
add $62583, %rbp
lea addresses_D_ht+0x1b30, %rsi
lea addresses_UC_ht+0xb1b0, %rdi
nop
nop
nop
nop
add $19703, %r13
mov $40, %rcx
rep movsl
cmp %rdi, %rdi
lea addresses_WC_ht+0x139b0, %rsi
lea addresses_D_ht+0x39b0, %rdi
nop
sub %r10, %r10
mov $93, %rcx
rep movsq
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x1ae, %r10
and %r9, %r9
mov $0x6162636465666768, %rax
movq %rax, %xmm2
vmovups %ymm2, (%r10)
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x191c5d00000009b0, %rcx
nop
xor $15735, %rdx
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
nop
nop
nop
dec %rbx

// Faulty Load
mov $0x191c5d00000009b0, %rbp
nop
nop
nop
nop
xor %r14, %r14
mov (%rbp), %esi
lea oracles, %rbx
and $0xff, %rsi
shlq $12, %rsi
mov (%rbx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 1}}
{'00': 147, '58': 8799, '5f': 12883}
5f 58 5f 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 00 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 58 58 5f 5f 5f 58 5f 5f 5f 58 58 5f 5f 5f 58 58 5f 58 5f 5f 58 58 5f 58 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 58 58 5f 58 58 58 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 58 58 5f 58 5f 58 58 5f 58 5f 5f 58 5f 58 58 5f 58 58 5f 5f 5f 5f 58 5f 58 58 5f 5f 5f 58 58 58 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 58 58 58 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 58 00 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 58 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 5f 58 5f 58 5f 5f 5f 58 58 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 58 5f 5f 5f 58 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 58 58 5f 58 58 5f 5f 5f 58 58 5f 58 58 5f 5f 5f 58 00 58 5f 5f 5f 58 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 58 5f 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 58 5f 5f 58 58 58 5f 5f 5f 58 58 5f 58 58 5f 58 5f 58 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 5f 58 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 58 58 5f 5f 5f 58 58 58 5f 5f 5f 5f 58 5f 5f 5f 58 5f 58 5f 5f 5f 58 5f 5f 5f 58 58 58 5f 58 58 5f 5f 5f 58 5f 58 58 5f 58 58 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 5f 58 58 58 5f 58 58 58 5f 5f 5f 58 58 58 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 58 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 58 5f 58 58 5f 58 5f 5f 5f 5f 00 5f 5f 58 58 5f 58 00 5f 5f 5f 58 58 58 5f 58 5f 5f 58 5f 5f 58 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 58 5f 58 58 58 5f 58 5f 5f 5f 58 5f 58 58 5f 5f 58 58 58 5f 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 58 5f 00 5f 58 58 5f 5f 58 5f 5f 58 58 58 58 5f 58 58 58 5f 5f 58 58 5f 5f 58 5f 58 5f 58 5f 5f 58 58 5f 5f 5f 5f 58 58 58 5f 5f 5f 58 5f 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 58 5f 5f 5f 58 5f 5f 58 5f 5f 5f 58 58 5f 5f 58 58 58 5f 00 5f 5f 5f 58 58 58 5f 5f 58 5f 5f 58 58 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 58 58 5f 58 58 5f 5f 5f 58 5f 5f 58 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 58 58 5f 5f 5f 5f 5f 5f 58 5f 58 58 58 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 5f 58 5f 58 5f 58 5f 5f 58 5f 5f 58 58 58 58 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 58 58 5f 5f 5f 58 58 5f 58 58 5f 58 58 5f 58 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 58 5f 58 5f 5f 5f 5f 5f 5f 58 58 58 58 5f 5f 5f 5f 58 58 5f 58 58 5f 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 5f 58 5f 5f 5f 58 5f 5f 5f 5f 5f 5f 58 58 5f 5f 5f 58 58 58 5f 58 5f 5f 58 58 5f 58 58 5f 58 5f 5f 58 5f 5f 5f 58 58 5f 5f 5f 58 58 58 5f 5f 5f 58 58 5f 5f 58 5f 5f 5f 58 5f 58 58 5f 5f 58 5f 5f 58 58 58 5f 5f 5f 58 5f 5f 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 58 5f 5f 58 58 58 5f 5f 5f 5f 58 58 5f 58 5f 5f 5f 5f 5f 58 58 5f 58 58 5f 5f 5f 5f 5f 5f 58 5f 5f 5f 5f 58 5f 5f 58 58
*/
