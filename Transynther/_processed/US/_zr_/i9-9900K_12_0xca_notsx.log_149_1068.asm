.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x3be7, %r11
nop
and %r8, %r8
mov (%r11), %bp
nop
dec %r15
lea addresses_D_ht+0xe4e7, %r12
nop
nop
nop
nop
nop
and $41689, %rbp
and $0xffffffffffffffc0, %r12
movaps (%r12), %xmm6
vpextrq $1, %xmm6, %r11
nop
cmp $62866, %r8
lea addresses_A_ht+0x17355, %rdx
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %r12
nop
nop
nop
dec %r12
lea addresses_A_ht+0x32e7, %rbp
and $50743, %r8
mov (%rbp), %ecx
nop
nop
nop
add %r11, %r11
lea addresses_normal_ht+0x4fe7, %rdx
clflush (%rdx)
nop
nop
nop
nop
and %r12, %r12
mov (%rdx), %r8
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1e767, %rsi
lea addresses_A_ht+0x2e7, %rdi
nop
nop
nop
nop
dec %rbp
mov $9, %rcx
rep movsb
nop
lfence
lea addresses_A_ht+0x39c9, %rdi
nop
nop
nop
nop
nop
sub $13259, %rsi
mov $0x6162636465666768, %r8
movq %r8, (%rdi)
nop
add %rbp, %rbp
lea addresses_A_ht+0x14ae7, %r8
nop
nop
nop
nop
add $13265, %rdx
and $0xffffffffffffffc0, %r8
movntdqa (%r8), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0xb991, %rsi
lea addresses_WT_ht+0x1a467, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $37870, %rdx
mov $49, %rcx
rep movsl
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1e6e7, %rdx
nop
nop
nop
cmp $32984, %rbp
movb $0x61, (%rdx)
nop
nop
cmp $42577, %rcx
lea addresses_WT_ht+0x1eee7, %rsi
lea addresses_WC_ht+0x14c97, %rdi
xor $37323, %r12
mov $76, %rcx
rep movsl
nop
nop
nop
sub $43419, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rax
push %rcx
push %rsi

// Faulty Load
lea addresses_US+0x82e7, %r12
nop
nop
nop
nop
nop
dec %rsi
mov (%r12), %cx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'00': 149}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
