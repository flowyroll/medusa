.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e43a, %rsi
lea addresses_WC_ht+0x573a, %rdi
nop
sub $60545, %rax
mov $117, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0xabfa, %r12
nop
inc %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r12)
nop
nop
nop
and $57865, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbp
push %rcx
push %rdi

// Faulty Load
lea addresses_US+0x5bba, %rdi
xor %r10, %r10
movb (%rdi), %cl
lea oracles, %rbp
and $0xff, %rcx
shlq $12, %rcx
mov (%rbp,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 20}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
