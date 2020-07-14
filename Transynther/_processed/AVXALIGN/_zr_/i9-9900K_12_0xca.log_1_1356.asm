.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1ed79, %rdx
nop
nop
nop
cmp $43602, %r12
mov (%rdx), %rsi
nop
nop
nop
sub $46151, %r12
lea addresses_WT_ht+0x1c251, %rsi
lea addresses_A_ht+0x9fa9, %rdi
nop
nop
nop
and %r8, %r8
mov $100, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_A_ht+0x123b1, %rsi
inc %rbx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
sub $57541, %rdx
lea addresses_WT_ht+0xf24b, %rsi
nop
cmp $57221, %rcx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r12
nop
nop
nop
and $1797, %rbx
lea addresses_A_ht+0xda71, %rsi
lea addresses_D_ht+0x5db1, %rdi
nop
nop
xor $64497, %rdx
mov $16, %rcx
rep movsb
nop
add $3008, %r12
lea addresses_A_ht+0x10ab1, %rsi
lea addresses_A_ht+0xd2b1, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $69, %rcx
rep movsw
sub $52125, %rcx
lea addresses_normal_ht+0x1e2b1, %rbx
nop
nop
nop
nop
sub $46867, %rsi
mov (%rbx), %dx
nop
nop
nop
nop
nop
xor $35513, %r8
lea addresses_D_ht+0x13eb1, %rsi
lea addresses_WT_ht+0x12b1, %rdi
nop
nop
nop
nop
cmp $49845, %r11
mov $111, %rcx
rep movsq
nop
nop
nop
nop
nop
add $62107, %r11
lea addresses_A_ht+0x1b731, %rsi
lea addresses_WC_ht+0xeab1, %rdi
nop
cmp $7000, %r12
mov $126, %rcx
rep movsb
cmp %rdi, %rdi
lea addresses_A_ht+0xde61, %r12
nop
nop
nop
cmp $33087, %rdi
and $0xffffffffffffffc0, %r12
vmovaps (%r12), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rcx
cmp %r8, %r8
lea addresses_WT_ht+0x42b1, %rsi
lea addresses_WC_ht+0x12b1, %rdi
inc %r11
mov $8, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $63525, %rbx
lea addresses_A_ht+0xa2b1, %r11
nop
add %rdi, %rdi
movl $0x61626364, (%r11)
nop
and $44352, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_WT+0x70b1, %rsi
lea addresses_A+0x10ed1, %rdi
nop
nop
xor %r11, %r11
mov $46, %rcx
rep movsq
nop
xor %rdi, %rdi

// Faulty Load
lea addresses_RW+0x1f2b1, %r11
nop
nop
nop
cmp $52253, %rdx
vmovaps (%r11), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_A', 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': True, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 7}, 'dst': {'same': True, 'type': 'addresses_WC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A_ht', 'same': True, 'AVXalign': True, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'00': 1}
00
*/
