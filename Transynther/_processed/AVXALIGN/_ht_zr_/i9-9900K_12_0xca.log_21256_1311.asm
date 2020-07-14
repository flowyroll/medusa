.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd427, %rsi
lea addresses_WC_ht+0x14e33, %rdi
nop
nop
nop
nop
and $35301, %r8
mov $1, %rcx
rep movsl
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x1e5bf, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub $25470, %rsi
lea addresses_WC_ht+0x18c33, %r8
nop
nop
nop
add %rdi, %rdi
mov (%r8), %esi
add $39788, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rax
push %rbp
push %rcx

// Load
lea addresses_normal+0x13855, %rax
nop
nop
nop
nop
and %rcx, %rcx
movb (%rax), %r11b
nop
nop
cmp %r12, %r12

// Store
lea addresses_US+0x6693, %r11
sub $5121, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
sub %r11, %r11

// Faulty Load
lea addresses_WC+0x1bc33, %r12
nop
nop
nop
nop
nop
add %r11, %r11
movaps (%r12), %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r12
and $0xff, %rbp
shlq $12, %rbp
mov (%r12,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'00': 10245, '48': 11011}
00 48 00 00 48 00 48 48 48 00 00 00 48 48 48 00 00 48 00 48 48 00 00 00 48 48 00 48 00 00 48 48 00 00 48 48 48 00 48 48 00 00 48 00 00 48 00 00 00 00 48 48 48 48 48 48 48 48 48 48 48 00 48 48 00 48 00 48 48 48 48 00 48 00 00 48 48 48 00 48 48 00 48 00 00 48 00 48 00 00 00 48 48 48 48 48 00 48 00 00 00 48 48 00 00 48 48 00 48 00 00 48 00 48 00 00 00 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 00 00 00 48 00 48 48 48 00 00 48 48 00 00 00 00 48 00 00 00 00 48 00 48 48 48 48 00 00 00 48 00 48 00 00 00 48 48 48 00 48 48 48 00 00 48 48 48 00 48 00 48 00 48 00 00 48 00 00 00 48 00 48 00 48 00 00 00 48 48 48 00 48 00 48 00 48 00 00 00 48 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 00 48 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 48 00 00 48 00 48 48 00 00 48 00 48 00 00 00 00 48 48 48 00 48 00 48 48 00 48 00 00 00 48 00 00 48 48 00 48 00 48 48 48 48 48 00 48 48 48 00 48 00 00 00 48 48 48 48 48 48 00 00 48 48 00 00 00 00 48 48 48 48 00 48 00 48 48 00 48 48 48 48 48 48 00 48 00 48 48 00 48 00 00 48 48 48 48 48 48 00 48 00 48 48 48 48 48 00 48 00 48 00 00 48 00 48 48 00 48 00 00 48 00 00 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 00 48 48 00 48 48 48 00 48 00 00 48 48 00 00 48 48 48 48 00 00 00 00 48 48 48 48 00 48 48 00 48 00 00 00 48 00 00 48 48 00 48 00 48 00 48 00 00 48 48 48 00 48 00 00 48 48 48 00 48 48 48 00 00 48 48 48 00 00 00 48 48 48 00 48 48 00 00 48 00 48 48 00 00 48 48 48 00 00 00 48 00 48 00 48 48 48 00 00 48 48 48 48 00 00 00 48 00 00 48 00 00 48 48 48 48 00 00 00 00 00 00 00 48 48 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 48 48 48 00 48 00 00 00 48 48 48 00 00 48 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 48 48 48 00 00 48 48 00 00 00 48 48 00 00 48 00 48 48 00 00 00 48 48 00 00 48 00 48 48 48 48 00 48 48 48 00 48 48 48 48 48 48 48 48 00 00 48 48 48 48 00 00 00 48 48 00 48 00 48 48 00 00 48 48 48 00 48 48 48 48 00 00 48 48 48 48 48 48 48 48 00 48 00 00 48 48 00 48 00 48 48 48 00 00 00 00 48 00 00 00 00 00 48 00 48 48 48 00 48 48 48 48 00 48 00 48 00 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 00 00 00 48 48 48 00 48 48 00 48 00 48 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 00 48 00 48 00 00 48 48 00 00 00 00 48 48 48 48 48 48 00 00 00 00 00 48 00 48 00 48 48 00 00 00 00 00 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 00 48 48 00 00 00 48 00 00 48 48 00 48 00 48 48 00 00 48 48 48 00 00 00 48 48 00 00 00 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 00 48 48 48 00 48 48 48 48 48 00 00 48 48 48 00 48 48 00 00 48 48 00 00 00 48 48 48 48 00 00 00 48 48 00 00 48 00 00 48 48 00 00 48 48 48 48 48 48 00 48 48 00 00 48 48 48 48 48 00 48 00 48 48 48 48 00 00 00 00 48 48 48 00 00 00 00 48 48 00 00 00 00 00 00 00 48 48 00 48 00 48 48 48 48 00 00 00 48 48 48 00 48 48 00 00 00 00 00 48 00 48 00 00 48 48 48 48 48 00 48 00 00 48 48 00 00 48 48 00 00 00 00 00 00 00 00 48 48 00 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 00 00 00 48 00 00 00 00 48 48 48 00 00 00
*/
