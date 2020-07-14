.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x7124, %rsi
lea addresses_A_ht+0xb9fc, %rdi
nop
sub $28705, %r13
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %r9
lea addresses_normal_ht+0x146f0, %rsi
lea addresses_UC_ht+0x984, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp $28675, %r15
mov $68, %rcx
rep movsq
inc %r13
lea addresses_WT_ht+0x6024, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
nop
nop
nop
and $23867, %r9
lea addresses_UC_ht+0x11224, %rcx
nop
sub $45515, %r13
mov $0x6162636465666768, %r9
movq %r9, (%rcx)
add $61547, %rdi
lea addresses_A_ht+0xbb9c, %rsi
lea addresses_WC_ht+0x3c94, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $33, %rcx
rep movsw
add $58222, %r9
lea addresses_A_ht+0x154dc, %rsi
lea addresses_A_ht+0x1cde1, %rdi
cmp $4254, %rbp
mov $62, %rcx
rep movsq
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0xe4a4, %r10
nop
nop
nop
sub %rbp, %rbp
movb (%r10), %r15b
nop
sub $59008, %rdi
lea addresses_A_ht+0x7704, %r9
nop
nop
inc %rdi
and $0xffffffffffffffc0, %r9
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %r10
add %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rcx

// Faulty Load
lea addresses_US+0x9224, %r11
nop
nop
nop
cmp %r12, %r12
mov (%r11), %r14w
lea oracles, %rcx
and $0xff, %r14
shlq $12, %r14
mov (%rcx,%r14,1), %r14
pop %rcx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'00': 7}
00 00 00 00 00 00 00
*/
