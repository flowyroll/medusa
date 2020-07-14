.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x14ad1, %rsi
sub $23395, %r14
mov (%rsi), %r13w
and $22294, %rax
lea addresses_normal_ht+0x1abd1, %rsi
lea addresses_A_ht+0x7ed1, %rdi
sub %r11, %r11
mov $79, %rcx
rep movsb
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xa6d5, %rsi
nop
cmp %rax, %rax
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x1e903, %rdi
add $58585, %r11
movw $0x6162, (%rdi)
xor $35188, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r9
push %rbp
push %rbx

// Store
mov $0x565, %r9
cmp $27444, %rbx
movl $0x51525354, (%r9)
nop
nop
dec %r12

// Faulty Load
lea addresses_WT+0x3cd1, %rbp
nop
nop
nop
and %r14, %r14
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r11
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rbx
pop %rbp
pop %r9
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'39': 2}
39 39
*/
