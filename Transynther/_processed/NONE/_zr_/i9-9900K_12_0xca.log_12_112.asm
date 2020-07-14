.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1e259, %rsi
lea addresses_normal_ht+0x14659, %rdi
xor %r13, %r13
mov $76, %rcx
rep movsl
nop
nop
nop
nop
and $60384, %r10
lea addresses_UC_ht+0x11a19, %rcx
sub %r15, %r15
mov (%rcx), %r10w
nop
nop
xor %r15, %r15
lea addresses_D_ht+0x2359, %rdi
nop
nop
nop
and $18490, %rdx
mov $0x6162636465666768, %r13
movq %r13, %xmm3
movups %xmm3, (%rdi)
nop
sub %rdx, %rdx
lea addresses_normal_ht+0x2445, %rsi
lea addresses_WT_ht+0x98d9, %rdi
clflush (%rsi)
cmp $18383, %rax
mov $98, %rcx
rep movsq
sub $37799, %rdi
lea addresses_WT_ht+0xe259, %r13
nop
nop
nop
nop
nop
cmp $5495, %rdx
movups (%r13), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xe9bd, %r13
add %rcx, %rcx
vmovups (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
nop
nop
and $63420, %rax
lea addresses_D_ht+0x9259, %rsi
lea addresses_WT_ht+0x113a1, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $113, %rcx
rep movsw
sub %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
mov $0x697fd90000000ee1, %rsi
mov $0xeb9, %rdi
clflush (%rdi)
nop
nop
inc %rbp
mov $7, %rcx
rep movsb
nop
nop
nop
nop
add $38776, %rcx

// Faulty Load
lea addresses_WT+0x16a59, %rdi
nop
nop
nop
nop
xor %r11, %r11
movb (%rdi), %r15b
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_NC', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_P', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 11}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'00': 12}
00 00 00 00 00 00 00 00 00 00 00 00
*/
