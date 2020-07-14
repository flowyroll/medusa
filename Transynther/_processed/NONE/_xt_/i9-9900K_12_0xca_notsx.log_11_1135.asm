.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x69d7, %rsi
lea addresses_D_ht+0x163d7, %rdi
nop
nop
nop
nop
nop
sub $62899, %rbp
mov $10, %rcx
rep movsl
sub %r13, %r13
lea addresses_WC_ht+0xe457, %r14
nop
nop
nop
nop
inc %r12
mov (%r14), %bp
nop
nop
nop
nop
inc %r12
lea addresses_A_ht+0x112d7, %r12
nop
nop
nop
cmp $50246, %rbp
movups (%r12), %xmm3
vpextrq $1, %xmm3, %r13
nop
nop
nop
xor $38802, %r14
lea addresses_D_ht+0x1764e, %rsi
lea addresses_A_ht+0xa3d7, %rdi
nop
nop
and $50536, %rbp
mov $91, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $20068, %r12
lea addresses_normal_ht+0x8e57, %rcx
nop
nop
and $45962, %r14
mov (%rcx), %r12w
nop
cmp $27624, %r13
lea addresses_D_ht+0x8257, %rsi
nop
nop
lfence
mov (%rsi), %di
nop
add $59532, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rax
push %rdx

// Store
lea addresses_normal+0x195d7, %r8
nop
sub %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm4
movups %xmm4, (%r8)
nop
nop
nop
cmp $3569, %r15

// Store
mov $0x448fbe0000000bd7, %rdx
nop
cmp %rax, %rax
movb $0x51, (%rdx)
nop
nop
nop
nop
add $32551, %rdx

// Faulty Load
lea addresses_RW+0xc5d7, %r14
nop
nop
nop
nop
add %r12, %r12
mov (%r14), %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'32': 11}
32 32 32 32 32 32 32 32 32 32 32
*/
