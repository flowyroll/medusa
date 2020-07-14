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
lea addresses_WC_ht+0x14a66, %rsi
lea addresses_WC_ht+0x13f48, %rdi
nop
nop
nop
nop
nop
add $7097, %r10
mov $51, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rbp
lea addresses_D_ht+0xfe60, %rsi
lea addresses_A_ht+0xfe8, %rdi
clflush (%rdi)
nop
nop
nop
nop
and $46331, %rbx
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x16e10, %rbx
nop
cmp %rdx, %rdx
movb (%rbx), %cl
nop
cmp $20842, %rsi
lea addresses_A_ht+0x1e5e8, %rsi
lea addresses_WT_ht+0x10fe8, %rdi
nop
nop
nop
nop
nop
inc %r8
mov $37, %rcx
rep movsl
dec %rbp
lea addresses_D_ht+0x70e8, %rsi
lea addresses_D_ht+0x16368, %rdi
clflush (%rsi)
nop
add $24823, %r8
mov $96, %rcx
rep movsb
nop
nop
nop
cmp $61299, %rcx
lea addresses_UC_ht+0xa0e8, %r8
nop
nop
nop
nop
inc %rbx
movups (%r8), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
sub $3908, %rbp
lea addresses_D_ht+0x2628, %rdi
nop
add %rbp, %rbp
movw $0x6162, (%rdi)
nop
and %rdi, %rdi
lea addresses_WC_ht+0x12c0c, %rsi
inc %rbx
movups (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x3b48, %r10
nop
nop
nop
sub $188, %rsi
movb (%r10), %cl
and $65458, %rsi
lea addresses_UC_ht+0x9628, %rbx
and $46669, %rbp
mov $0x6162636465666768, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
dec %r10
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
push %r10
push %r13
push %r8
push %rax
push %rbx
push %rdi

// Faulty Load
mov $0xfe8, %rbx
nop
nop
nop
nop
nop
cmp %rax, %rax
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %rdi
lea oracles, %rax
and $0xff, %rdi
shlq $12, %rdi
mov (%rax,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 8, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 6, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'00': 83}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
