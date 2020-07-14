.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x37ff, %rdi
nop
nop
nop
nop
nop
inc %r11
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
sub $38477, %r14
lea addresses_D_ht+0x1a1c3, %rsi
lea addresses_normal_ht+0xcdc3, %rdi
nop
nop
nop
nop
xor $45102, %rbp
mov $91, %rcx
rep movsl
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x9ca3, %rsi
lea addresses_D_ht+0x177c3, %rdi
clflush (%rdi)
nop
sub %r11, %r11
mov $89, %rcx
rep movsq
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x1caa3, %rdi
nop
nop
nop
nop
cmp $41779, %r14
movups (%rdi), %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
nop
add %rbp, %rbp
lea addresses_D_ht+0x19843, %r14
sub $60804, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
xor $49810, %r11
lea addresses_WT_ht+0x17dc3, %rsi
lea addresses_A_ht+0x1abc3, %rdi
nop
nop
inc %rax
mov $67, %rcx
rep movsw
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x81bf, %rsi
lea addresses_A_ht+0x1b0b1, %rdi
nop
nop
inc %rax
mov $4, %rcx
rep movsl
nop
xor %rcx, %rcx
lea addresses_A_ht+0x9467, %rsi
nop
and %r13, %r13
mov (%rsi), %r14d
inc %rax
lea addresses_WC_ht+0x15d43, %rsi
lea addresses_A_ht+0x1fc3, %rdi
nop
dec %r14
mov $69, %rcx
rep movsq
nop
cmp %r11, %r11
lea addresses_WC_ht+0x6dc3, %r13
nop
nop
nop
nop
add %rbp, %rbp
movb (%r13), %al
nop
sub $23350, %r14
lea addresses_normal_ht+0x4bbb, %rsi
lea addresses_normal_ht+0x55ff, %rdi
clflush (%rdi)
nop
nop
sub $38146, %r11
mov $54, %rcx
rep movsb
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r8
push %rbx
push %rsi

// Faulty Load
mov $0x9c3, %rsi
dec %r8
mov (%rsi), %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
