.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xcc0a, %rcx
add %r13, %r13
movl $0x61626364, (%rcx)
add %rdi, %rdi
lea addresses_WT_ht+0x418e, %r14
nop
nop
add $4730, %rbx
mov (%r14), %bp
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WT_ht+0x1aca0, %rsi
lea addresses_UC_ht+0x1260a, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $72, %rcx
rep movsq
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x17582, %rbp
add $42472, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm4
movups %xmm4, (%rbp)
add $945, %rbx
lea addresses_D_ht+0x1240a, %rsi
lea addresses_WC_ht+0x1f8a, %rdi
nop
nop
add %r13, %r13
mov $120, %rcx
rep movsw
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xa28a, %rdx
nop
sub %rbx, %rbx
mov (%rdx), %bp
nop
nop
sub $39671, %r14
lea addresses_D_ht+0x754a, %rsi
lea addresses_normal_ht+0x18d6a, %rdi
nop
nop
nop
xor %rbp, %rbp
mov $34, %rcx
rep movsl
nop
nop
nop
nop
nop
sub $32984, %rbp
lea addresses_A_ht+0x168e4, %rsi
lea addresses_A_ht+0x1898a, %rdi
nop
sub $6027, %r13
mov $71, %rcx
rep movsq
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0x148db, %r14
nop
nop
add $45748, %rbx
movb $0x61, (%r14)
sub $13686, %rbp
lea addresses_A_ht+0x45aa, %rsi
lea addresses_WC_ht+0xbc0a, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $50, %rcx
rep movsq
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0xb40a, %rcx
nop
nop
add $7620, %rdx
mov (%rcx), %ebx
nop
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xae8a, %rbx
nop
nop
nop
nop
nop
sub $13530, %rdx
movups (%rbx), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
nop
add $62232, %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %rbp
push %rbx

// Faulty Load
lea addresses_UC+0xfc0a, %rbp
nop
nop
cmp %r8, %r8
movntdqa (%rbp), %xmm7
vpextrq $1, %xmm7, %r14
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': True, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'47': 13, 'dd': 1, '45': 815, '00': 92, '49': 11939, '33': 1, '46': 8968}
49 49 46 46 46 46 46 45 49 49 49 49 49 49 46 46 49 49 49 46 46 45 49 49 49 49 46 46 49 49 46 49 46 46 49 46 46 49 49 49 49 49 46 46 49 49 46 46 46 49 49 46 46 49 49 49 49 49 46 46 49 49 49 49 49 46 46 49 49 49 46 46 46 46 46 49 49 46 49 49 49 46 46 46 46 46 45 49 49 49 46 46 46 46 46 49 49 46 46 46 46 46 46 49 49 49 46 46 49 49 46 49 49 46 46 49 46 46 49 49 49 46 49 49 49 46 45 49 49 46 46 49 49 49 49 49 49 49 49 49 49 49 49 46 46 49 49 46 46 49 49 49 46 46 49 49 46 46 49 49 49 46 46 46 46 46 46 46 45 49 49 46 46 49 49 49 46 49 46 46 46 46 49 49 49 49 46 46 46 45 49 45 49 46 46 49 49 49 46 49 49 49 49 46 46 46 49 49 46 49 49 49 46 49 49 46 49 49 49 46 49 49 49 46 46 46 49 49 46 46 49 49 49 49 46 46 49 49 49 46 46 46 49 49 49 46 45 49 49 49 49 49 49 49 46 49 49 46 46 49 46 46 49 49 49 46 46 46 49 49 46 46 49 49 46 49 49 46 49 49 46 46 45 49 49 49 49 49 46 46 46 46 46 49 46 46 46 49 49 49 46 49 49 49 46 45 49 46 49 49 46 46 49 49 46 49 49 49 49 49 49 46 49 49 46 46 46 49 49 49 49 46 46 46 49 49 49 46 46 49 49 49 46 46 49 49 49 49 46 45 49 49 49 46 46 49 49 49 46 46 46 49 49 49 49 46 46 46 45 49 49 49 49 46 49 49 49 46 00 49 49 46 46 49 49 49 46 46 49 49 46 46 45 49 49 46 46 49 49 46 46 49 49 46 46 46 46 46 45 49 46 46 46 49 49 49 46 49 49 46 49 46 46 46 49 49 46 49 49 49 46 45 49 46 49 49 46 46 49 46 46 49 49 46 49 49 49 49 46 46 45 49 49 49 49 46 49 46 46 45 49 49 49 49 46 00 49 49 49 49 49 49 46 46 49 49 46 49 46 46 46 46 46 46 49 49 49 46 46 49 49 49 49 49 49 46 49 49 49 49 49 49 49 46 46 46 46 46 49 49 46 49 49 49 46 46 45 49 46 49 49 46 46 46 49 46 46 49 49 46 45 49 46 45 49 46 45 49 46 45 49 49 49 46 49 49 46 46 46 49 49 49 49 46 49 46 46 00 49 49 46 46 49 49 46 49 49 49 49 46 46 49 49 46 49 49 49 49 49 49 46 46 49 49 49 46 46 46 46 49 49 49 49 49 49 46 46 46 46 46 46 46 49 49 49 46 46 46 49 49 46 49 49 46 46 49 49 46 46 49 49 46 49 49 49 46 49 49 46 49 49 46 46 49 49 49 46 00 49 49 46 46 46 46 49 49 46 46 46 46 49 45 49 49 49 49 46 46 49 49 49 49 49 46 46 46 49 49 49 49 46 49 49 49 46 46 49 49 49 49 46 49 49 45 49 49 49 49 49 46 49 49 49 46 49 46 49 49 46 49 49 49 46 46 46 46 46 46 49 49 46 49 49 49 49 46 49 49 46 46 46 46 46 45 49 49 49 46 46 46 46 49 49 46 46 49 49 46 49 49 49 46 46 49 49 49 46 49 46 46 46 49 49 49 49 49 49 49 49 46 49 49 46 46 46 45 49 46 00 49 49 46 46 46 46 46 46 49 49 49 49 46 49 46 46 49 49 49 46 46 49 49 46 46 49 49 46 46 46 49 49 46 49 49 49 49 46 46 49 49 46 49 49 49 49 46 46 49 49 46 49 49 46 46 49 49 49 49 49 46 49 49 49 46 46 46 46 49 49 49 46 46 49 49 46 46 46 49 49 46 46 49 49 49 46 49 49 46 46 49 49 46 46 49 49 46 46 46 49 49 49 49 46 46 46 46 49 49 49 49 49 49 46 46 46 49 46 49 49 46 49 49 46 46 49 49 46 49 49 49 46 49 45 49 49 49 49 46 49 49 46 46 49 49 49 49 46 46 49 46 49 49 49 46 49 49 46 49 46 46 46 49 49 49 49 46 49 49 49 49 46 49 49 46 49 49 46 45 49 46 46 46 49 49 46 46 49 49 46 46 49 49 46 46 49 49 49 46 00 49 49 49 46 46 45 46 45 49 49 49 46 46 46 46 49 49 49 46 00 49 49 49 46 46 49 49 49 49 46 45
*/
