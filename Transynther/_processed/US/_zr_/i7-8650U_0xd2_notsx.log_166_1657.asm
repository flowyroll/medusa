.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xd486, %rsi
lea addresses_D_ht+0x17386, %rdi
clflush (%rsi)
nop
cmp %rbp, %rbp
mov $71, %rcx
rep movsw
nop
nop
nop
nop
and $7583, %r13
lea addresses_A_ht+0x4646, %rsi
lea addresses_UC_ht+0x14286, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rax
mov $3, %rcx
rep movsl
nop
nop
nop
nop
cmp $16608, %rax
lea addresses_normal_ht+0x2686, %r13
nop
inc %rcx
movb $0x61, (%r13)
sub %rax, %rax
lea addresses_WT_ht+0x8986, %rcx
nop
add %r11, %r11
movl $0x61626364, (%rcx)
nop
nop
nop
nop
add $30078, %r13
lea addresses_D_ht+0x16786, %rbp
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
dec %rsi
lea addresses_D_ht+0x9686, %rdi
nop
inc %r13
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rdi)
nop
nop
nop
inc %rsi
lea addresses_A_ht+0x1ed06, %rsi
lea addresses_UC_ht+0x886, %rdi
nop
and %r15, %r15
mov $37, %rcx
rep movsq
nop
nop
nop
dec %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rdi

// Store
lea addresses_WT+0x1d7e6, %r14
nop
nop
nop
nop
nop
cmp %r15, %r15
movw $0x5152, (%r14)
nop
nop
xor %r11, %r11

// Faulty Load
lea addresses_US+0x7686, %r11
nop
nop
nop
nop
cmp %rdi, %rdi
mov (%r11), %r14d
lea oracles, %r9
and $0xff, %r14
shlq $12, %r14
mov (%r9,%r14,1), %r14
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'00': 166}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
