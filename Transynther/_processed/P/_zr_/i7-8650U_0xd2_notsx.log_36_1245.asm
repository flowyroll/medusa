.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x6e63, %rsi
lea addresses_WC_ht+0x16bfb, %rdi
nop
nop
xor $487, %rdx
mov $74, %rcx
rep movsl
nop
sub %rax, %rax
lea addresses_normal_ht+0x19083, %rsi
lea addresses_A_ht+0xdfad, %rdi
nop
nop
nop
nop
nop
dec %r12
mov $75, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $4638, %rsi
lea addresses_WT_ht+0x6063, %rsi
nop
nop
nop
nop
nop
inc %rbp
movb (%rsi), %al
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0xda63, %rcx
nop
nop
cmp %rdi, %rdi
mov (%rcx), %r12d
nop
nop
nop
add $28863, %rsi
lea addresses_A_ht+0x17863, %r12
nop
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%r12)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_A_ht+0x13363, %rbp
nop
sub %rcx, %rcx
mov (%rbp), %ax
sub %rax, %rax
lea addresses_WT_ht+0x19263, %rsi
lea addresses_UC_ht+0x8f23, %rdi
nop
nop
nop
add $39580, %rbp
mov $71, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $36303, %rcx
lea addresses_normal_ht+0x19863, %r12
nop
nop
nop
and %rcx, %rcx
mov (%r12), %rdi
add $29324, %rbp
lea addresses_D_ht+0xb5e3, %rsi
lea addresses_normal_ht+0x8e63, %rdi
sub $32336, %rax
mov $65, %rcx
rep movsl
and $18427, %rcx
lea addresses_WC_ht+0x1b693, %rsi
lea addresses_A_ht+0xa63, %rdi
nop
nop
xor $33614, %r9
mov $26, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x1e263, %rax
clflush (%rax)
nop
nop
nop
nop
nop
inc %r12
mov (%rax), %rdx
nop
nop
sub $29159, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %rbx
push %rdx
push %rsi

// Faulty Load
mov $0xe63, %rdx
nop
nop
nop
nop
nop
sub $42503, %rsi
mov (%rdx), %rbx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 36}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
