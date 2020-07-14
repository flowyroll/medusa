.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1225c, %rbx
nop
xor %r9, %r9
movb (%rbx), %r11b
nop
nop
nop
nop
sub $45848, %r9
lea addresses_WT_ht+0x16b9, %rsi
lea addresses_WT_ht+0x15261, %rdi
clflush (%rsi)
add %r14, %r14
mov $100, %rcx
rep movsb
nop
nop
dec %rbx
lea addresses_normal_ht+0xba61, %rsi
lea addresses_UC_ht+0x1b61, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r8, %r8
mov $27, %rcx
rep movsl
nop
nop
nop
inc %rcx
lea addresses_A_ht+0x1d861, %r11
nop
nop
nop
nop
dec %rcx
and $0xffffffffffffffc0, %r11
movaps (%r11), %xmm3
vpextrq $1, %xmm3, %rsi
nop
xor $39941, %r8
lea addresses_UC_ht+0x98e1, %rsi
lea addresses_A_ht+0x13b30, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor %rbx, %rbx
mov $30, %rcx
rep movsb
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x13461, %r9
cmp %r11, %r11
mov (%r9), %si
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x5a61, %rcx
nop
nop
nop
nop
cmp %rsi, %rsi
vmovups (%rcx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x5461, %r14
nop
sub $6765, %rsi
movw $0x6162, (%r14)
nop
nop
sub %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0x31e1, %rsi
lea addresses_US+0xc821, %rdi
nop
and %r10, %r10
mov $103, %rcx
rep movsw
add %rdi, %rdi

// Store
lea addresses_US+0x123b1, %rsi
nop
nop
nop
add $27169, %r13
movb $0x51, (%rsi)
nop
xor $33970, %rdx

// Faulty Load
lea addresses_UC+0x19a61, %rdi
nop
cmp $60919, %rcx
movb (%rdi), %r13b
lea oracles, %r10
and $0xff, %r13
shlq $12, %r13
mov (%r10,%r13,1), %r13
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A', 'congruent': 7}, 'dst': {'same': False, 'type': 'addresses_US', 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'00': 21}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
