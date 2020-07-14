.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x94f, %rbp
cmp %r10, %r10
mov (%rbp), %rdi
nop
nop
xor $52974, %rsi
lea addresses_A_ht+0x19985, %rsi
lea addresses_UC_ht+0x2bd7, %rdi
and $39077, %rbx
mov $97, %rcx
rep movsl
nop
sub $64683, %rbp
lea addresses_UC_ht+0x113c5, %rbp
cmp %r8, %r8
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbp)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x1c677, %r10
and %r8, %r8
mov (%r10), %rsi
nop
nop
nop
nop
nop
add %r8, %r8
lea addresses_D_ht+0x15bf7, %r10
nop
nop
nop
xor %r8, %r8
mov (%r10), %rbp
nop
nop
nop
nop
nop
cmp $38928, %rsi
lea addresses_D_ht+0x18f77, %rsi
nop
nop
sub $29077, %r8
mov (%rsi), %rdi
nop
nop
nop
cmp $33507, %rbp
lea addresses_WC_ht+0x1639f, %rbp
nop
nop
nop
nop
nop
add $2577, %rsi
movb (%rbp), %cl
inc %rdi
lea addresses_UC_ht+0x1d477, %rsi
lea addresses_WC_ht+0x19677, %rdi
nop
nop
xor $14233, %rdx
mov $124, %rcx
rep movsw
nop
nop
nop
nop
nop
and $20791, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi

// Load
lea addresses_normal+0x93f7, %r11
and $23009, %r15
mov (%r11), %r13w
nop
nop
xor %r12, %r12

// REPMOV
lea addresses_PSE+0xaf77, %rsi
lea addresses_D+0xf227, %rdi
nop
nop
cmp $57487, %r13
mov $56, %rcx
rep movsq
nop
nop
nop
inc %r15

// Faulty Load
lea addresses_US+0x10e77, %r15
nop
nop
nop
nop
sub $30360, %rdi
mov (%r15), %r12d
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_PSE'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D'}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'00': 84}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
