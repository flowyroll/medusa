.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x2921, %rsi
lea addresses_WC_ht+0x4bc1, %rdi
nop
nop
nop
add $61355, %r15
mov $95, %rcx
rep movsw
nop
cmp $21886, %r15
lea addresses_UC_ht+0x1aea3, %rsi
lea addresses_normal_ht+0x166f1, %rdi
nop
nop
nop
nop
xor $52397, %rax
mov $120, %rcx
rep movsq
nop
nop
nop
nop
cmp $18778, %r15
lea addresses_A_ht+0x10f61, %r14
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%r14)
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0xfca1, %rsi
lea addresses_normal_ht+0x5ea1, %rdi
nop
nop
nop
sub $28553, %r9
mov $39, %rcx
rep movsb
nop
nop
nop
nop
nop
add $36188, %r15
lea addresses_normal_ht+0x166ed, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp %rcx, %rcx
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x15fdd, %rsi
lea addresses_A_ht+0x174b9, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $18, %rcx
rep movsl
nop
dec %r9
lea addresses_UC_ht+0x1198d, %rcx
nop
nop
nop
nop
nop
add $6981, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rcx)
nop
nop
and $36740, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_RW+0x13f21, %rbx
nop
xor %rbp, %rbp
movb $0x51, (%rbx)
cmp %rdi, %rdi

// Faulty Load
lea addresses_PSE+0xbf21, %r11
clflush (%r11)
nop
nop
nop
nop
xor %rax, %rax
vmovntdqa (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': True, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
[Faulty Load]
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'46': 16750, '8c': 1, '00': 5073, '3a': 1, '03': 1, 'ec': 1, '4e': 1, '72': 1}
00 00 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 46 46 00 46 00 46 46 00 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 00 46 46 00 00 46 00 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 00 00 46 00 46 00 00 00 46 46 46 00 46 46 46 00 46 46 46 46 46 00 00 46 46 46 46 46 00 00 00 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 00 00 00 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 00 46 00 46 00 46 46 46 00 46 00 46 46 46 46 46 46 00 46 46 00 46 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 00 00 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 00 46 00 46 46 46 00 00 46 46 00 46 46 00 46 46 00 46 46 46 00 00 00 46 46 46 46 46 46 46 46 46 46 00 00 00 46 46 46 00 46 00 46 46 00 00 46 46 46 46 46 00 46 46 46 46 00 46 46 00 46 46 46 00 00 00 46 46 46 46 46 46 00 46 46 00 00 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 00 00 00 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 00 00 46 46 46 00 00 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 46 46 46 00 00 00 46 00 46 46 46 00 00 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 00 46 46 46 00 46 46 00 00 00 00 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 00 46 46 00 46 46 46 00 00 46 46 46 00 46 46 00 46 46 00 46 46 00 46 46 00 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46
*/
