.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x106cf, %rax
nop
nop
nop
nop
nop
cmp %r10, %r10
movb $0x61, (%rax)
nop
nop
inc %rsi
lea addresses_WC_ht+0x8fb3, %rbx
nop
nop
nop
and $2269, %rsi
movb (%rbx), %dl
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x1acb3, %rsi
lea addresses_UC_ht+0xd318, %rdi
nop
nop
nop
nop
nop
cmp %rdx, %rdx
mov $62, %rcx
rep movsq
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x2f3b, %rsi
lea addresses_A_ht+0x1d473, %rdi
nop
dec %rdx
mov $103, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi

// Store
lea addresses_WC+0x3cb3, %r15
nop
nop
nop
and $14223, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
nop
and $47202, %r11

// Store
lea addresses_US+0x199d3, %rax
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
sub $1692, %rdi

// Faulty Load
lea addresses_PSE+0xb8b3, %rcx
nop
nop
nop
nop
cmp $40024, %rdi
vmovaps (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
lea oracles, %rax
and $0xff, %r14
shlq $12, %r14
mov (%rax,%r14,1), %r14
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'00': 29, '46': 20}
00 00 00 46 46 46 00 46 00 00 46 46 00 00 46 00 46 00 46 00 00 00 46 00 46 46 00 00 00 00 00 00 46 46 00 00 00 00 00 46 46 00 46 00 00 46 46 00 46
*/
