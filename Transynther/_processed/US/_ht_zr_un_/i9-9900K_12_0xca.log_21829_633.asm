.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xa75e, %r14
add %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r14)
sub $52869, %rsi
lea addresses_D_ht+0x1c15e, %rsi
clflush (%rsi)
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
cmp %r14, %r14
lea addresses_WC_ht+0xf6de, %rdi
nop
nop
nop
sub %r11, %r11
movl $0x61626364, (%rdi)
and %rax, %rax
lea addresses_normal_ht+0x11d6, %rsi
lea addresses_WT_ht+0x7366, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
xor $7368, %r14
lea addresses_UC_ht+0x105ae, %rdi
nop
nop
nop
nop
lfence
movl $0x61626364, (%rdi)
nop
nop
nop
and $39029, %r14
lea addresses_WC_ht+0x193be, %rsi
lea addresses_UC_ht+0x759e, %rdi
nop
nop
xor $47951, %r14
mov $13, %rcx
rep movsb
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0xcd42, %rsi
lea addresses_UC_ht+0xfede, %rdi
nop
nop
xor $50230, %rdx
mov $32, %rcx
rep movsl
nop
nop
nop
cmp $34851, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_US+0x1919e, %rbx
nop
nop
xor $61009, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
cmp %r10, %r10

// Store
lea addresses_US+0x1c99e, %r11
nop
nop
xor $19379, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, (%r11)
nop
inc %rbp

// Faulty Load
lea addresses_US+0x1c99e, %rdi
clflush (%rdi)
nop
nop
nop
and $50465, %rax
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_US', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'44': 4693, '72': 330, '46': 11733, 'ff': 85, '6c': 53, '08': 445, '00': 4490}
00 6c 46 6c 46 46 46 00 46 6c 6c 46 6c 00 46 6c 46 6c 00 6c 46 6c 6c 00 46 6c 46 6c 6c 6c 00 6c 6c 6c 00 6c 6c 6c 00 00 46 6c 00 6c 6c 00 6c 6c 46 00 6c 6c 00 6c 6c 46 46 6c 46 46 6c 46 00 46 46 46 6c 00 46 00 46 6c 00 6c 00 6c 46 6c 6c 6c 00 46 6c 00 00 6c 6c 6c 6c 00 46 6c 46 6c 6c 00 46 6c 6c 00 46 6c 46 00 6c 46 6c 6c 6c 00 46 46 46 00 ff ff 46 ff 46 ff 00 46 46 ff 46 46 00 ff 46 46 00 46 ff ff 46 46 46 ff ff ff 46 ff 00 ff ff 46 ff ff 46 46 ff 46 46 ff ff ff 00 ff ff ff 46 46 00 ff ff 46 ff 46 00 46 00 46 46 ff ff 46 46 46 46 46 00 46 46 46 ff ff ff ff 46 46 ff 00 46 ff 00 ff 46 ff ff 46 ff 46 ff ff 46 ff 46 46 44 46 00 44 00 44 46 46 00 44 46 46 46 46 00 00 46 44 44 46 44 44 00 44 46 46 44 44 44 46 46 44 44 44 44 00 46 46 46 46 44 44 46 46 00 46 00 46 44 00 44 00 44 44 44 46 44 44 44 44 00 44 44 44 46 00 44 00 44 46 44 44 46 44 44 46 00 46 46 44 46 44 46 46 44 00 46 46 46 00 46 46 46 44 44 00 46 00 44 46 46 44 44 00 46 00 44 00 44 44 46 44 46 44 44 44 00 44 44 00 46 44 46 46 00 46 46 44 00 44 44 44 44 44 44 44 00 46 44 44 44 46 46 44 44 44 44 44 46 00 44 00 00 46 44 46 46 44 44 46 44 46 46 46 46 44 00 46 46 46 46 44 46 46 46 46 00 44 44 44 00 44 44 46 46 00 44 44 44 00 46 46 46 00 44 44 44 44 44 44 46 00 46 46 44 00 44 00 44 46 44 44 46 44 00 44 44 44 00 00 44 44 00 44 46 46 44 46 46 00 44 46 44 44 46 00 46 44 46 44 46 44 46 46 44 44 44 44 44 44 44 46 46 00 00 44 46 44 46 46 44 44 44 44 00 46 00 44 44 44 44 44 44 46 00 44 46 46 46 44 44 44 44 44 44 46 46 46 44 44 44 44 44 46 44 44 44 44 00 46 44 44 44 44 46 00 46 46 44 46 46 46 00 46 46 44 44 44 44 44 44 44 44 46 00 00 44 00 46 00 46 00 44 44 44 00 00 44 00 44 44 46 46 46 44 00 46 46 00 46 44 00 44 44 44 00 44 00 44 46 44 44 44 44 44 46 00 44 44 44 00 46 44 46 44 46 46 00 44 46 44 00 46 46 44 44 46 46 44 46 44 46 44 44 00 44 44 46 44 44 46 44 00 44 44 44 44 46 44 44 44 00 46 44 44 44 44 46 00 44 44 46 44 44 46 46 44 44 44 00 44 46 46 44 44 46 44 44 00 44 44 44 00 44 44 44 44 46 00 00 44 44 44 44 00 46 46 46 46 46 00 44 46 00 46 46 44 00 46 44 44 46 44 44 46 44 44 00 46 00 44 46 00 00 44 46 00 44 46 44 44 46 46 00 46 00 46 46 00 44 44 44 46 00 46 44 46 44 44 46 44 44 00 44 44 44 00 44 44 44 44 00 46 44 46 00 44 44 46 44 46 00 46 46 44 46 46 44 46 46 00 44 44 46 46 44 44 44 44 00 46 46 44 44 00 46 00 44 44 46 44 44 44 44 44 46 46 44 46 46 00 44 46 00 46 44 46 44 46 46 44 46 44 00 46 44 46 00 46 46 00 46 46 46 00 44 46 46 00 44 44 44 00 46 00 46 44 46 46 44 44 44 46 44 00 44 44 44 00 44 44 44 46 46 44 44 46 44 46 44 44 46 44 00 44 46 46 44 44 00 46 00 44 44 44 46 00 44 46 46 44 44 46 00 44 46 44 44 00 44 46 44 00 44 46 44 44 44 00 00 44 00 46 44 46 44 46 46 00 44 44 44 44 44 44 46 46 44 44 00 46 46 46 00 46 46 00 44 46 46 44 46 44 46 46 00 44 44 44 44 00 44 44 46 44 44 44 00 44 44 44 44 44 46 46 46 00 44 44 44 46 44 44 44 00 46 44 46 46 44 46 44 00 46 44 44 00 46 44 44 44 00 00 00 44 00 46 44 44 44 44 44 46 44 44 44 00 00 46 46 46 00 44 44 46 44 44 46 44 44 46 44 44 44 44 44 44 46 46 46 46 44
*/
