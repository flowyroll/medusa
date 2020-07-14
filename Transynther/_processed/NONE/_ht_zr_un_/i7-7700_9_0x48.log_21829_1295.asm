.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x352b, %rsi
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
add $18101, %rax
lea addresses_UC_ht+0x81db, %rsi
lea addresses_WT_ht+0xdcc3, %rdi
nop
nop
nop
add $56231, %rbx
mov $77, %rcx
rep movsw
nop
sub $40426, %rcx
lea addresses_A_ht+0x1652b, %rdi
nop
nop
nop
cmp %rsi, %rsi
movups (%rdi), %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0x1d263, %rsi
lea addresses_WC_ht+0x112b, %rdi
nop
nop
nop
lfence
mov $107, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %rax
lea addresses_D_ht+0x16d2b, %rsi
lea addresses_normal_ht+0x10b2b, %rdi
and $24281, %r15
mov $84, %rcx
rep movsb
nop
nop
nop
nop
add $30161, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbx
push %rdx

// Faulty Load
lea addresses_WT+0x19d2b, %rbx
nop
nop
sub %r10, %r10
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'08': 29, '72': 33, '45': 8611, '00': 13156}
00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 45 45 45 00 00 00 00 00 45 45 00 45 45 45 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 45 45 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 45 45 45 45 45 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 00 00 45 45 45 45 45 45 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 45 45 00 00 45 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 00 00 00 00 00 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 00 00 00 00 00 00 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 00 00 00 00 00 45 45 45 45 45 00
*/
