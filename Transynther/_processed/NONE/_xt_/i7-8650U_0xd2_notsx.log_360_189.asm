.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1808a, %r8
nop
nop
nop
nop
add $50218, %r15
mov (%r8), %r13w
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x1626d, %rsi
lea addresses_UC_ht+0x1c761, %rdi
nop
nop
nop
add %rbp, %rbp
mov $114, %rcx
rep movsq
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0x6b61, %rsi
lea addresses_WT_ht+0xa4a1, %rdi
nop
nop
nop
cmp %r11, %r11
mov $116, %rcx
rep movsq
nop
nop
nop
and %r15, %r15
lea addresses_normal_ht+0x16561, %r15
nop
nop
nop
add $45310, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
xor %r15, %r15
lea addresses_A_ht+0xce29, %r8
nop
nop
nop
nop
nop
sub %r11, %r11
mov (%r8), %r15d
cmp %r8, %r8
lea addresses_UC_ht+0x1d9a4, %rsi
lea addresses_normal_ht+0x3021, %rdi
add %r8, %r8
mov $69, %rcx
rep movsw
nop
nop
nop
xor $53237, %r13
lea addresses_D_ht+0x6c39, %rsi
lea addresses_normal_ht+0x40f7, %rdi
nop
nop
cmp $8715, %r15
mov $2, %rcx
rep movsq
dec %rcx
lea addresses_normal_ht+0x1a2e3, %rsi
lea addresses_UC_ht+0x12625, %rdi
nop
nop
sub $6097, %r13
mov $119, %rcx
rep movsq
add $15426, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rdi

// Store
lea addresses_WT+0x19f61, %r14
nop
cmp %rbp, %rbp
movw $0x5152, (%r14)
nop
nop
xor %r13, %r13

// Faulty Load
lea addresses_WT+0x19f61, %rax
nop
inc %rdi
vmovups (%rax), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdi
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'39': 360}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
