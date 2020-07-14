.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0xf0f4, %r11
clflush (%r11)
nop
nop
nop
add $17357, %r14
vmovups (%r11), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
sub $25299, %rdx
lea addresses_UC_ht+0xe3a4, %rsi
lea addresses_D_ht+0x18d34, %rdi
sub $23563, %rbp
mov $41, %rcx
rep movsl
nop
nop
nop
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0xc0f4, %rdi
nop
nop
nop
dec %r11
mov (%rdi), %dx
nop
inc %r8
lea addresses_UC_ht+0xecf4, %rsi
nop
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm5
vmovups %ymm5, (%rsi)
nop
add $30805, %rdx
lea addresses_WT_ht+0x118f4, %rsi
lea addresses_normal_ht+0x1b0f4, %rdi
nop
nop
nop
nop
dec %r14
mov $76, %rcx
rep movsw
dec %r14
lea addresses_A_ht+0x17944, %rsi
lea addresses_D_ht+0x7974, %rdi
add $50975, %rdx
mov $57, %rcx
rep movsl
nop
nop
nop
sub $8389, %r11
lea addresses_normal_ht+0x60f4, %rsi
lea addresses_normal_ht+0xe30c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r14
mov $124, %rcx
rep movsq
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0xb2f4, %rsi
lea addresses_A_ht+0x3174, %rdi
nop
nop
sub $21234, %r11
mov $112, %rcx
rep movsb
nop
nop
nop
cmp $58181, %r8
lea addresses_A_ht+0x16074, %rbp
sub %r11, %r11
movl $0x61626364, (%rbp)
nop
nop
nop
cmp $30357, %r8
lea addresses_WC_ht+0xd8f4, %rsi
lea addresses_A_ht+0x77a8, %rdi
nop
and $30940, %rdx
mov $10, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $7824, %rsi
lea addresses_normal_ht+0x3af4, %r8
nop
nop
add $60318, %rbp
movups (%r8), %xmm7
vpextrq $1, %xmm7, %r14
nop
nop
nop
nop
nop
inc %rdx
lea addresses_UC_ht+0x1acf4, %rsi
lea addresses_A_ht+0x1d0f4, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $65, %rcx
rep movsw
sub $33190, %rcx
lea addresses_WC_ht+0x15af4, %rsi
nop
nop
nop
nop
nop
cmp $27779, %r11
mov (%rsi), %r14d
nop
xor $58453, %r8
lea addresses_UC_ht+0xc2f4, %rsi
lea addresses_WC_ht+0xd6c, %rdi
nop
nop
nop
nop
add %r8, %r8
mov $3, %rcx
rep movsw
nop
nop
dec %r8
lea addresses_normal_ht+0x1261c, %rdi
nop
nop
nop
nop
inc %rdx
mov (%rdi), %r14w
nop
nop
cmp $61744, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_D+0xbc3a, %rdi
and %r11, %r11
mov (%rdi), %rbp
nop
nop
inc %rbp

// Faulty Load
lea addresses_US+0x8f4, %rbx
sub $25989, %r13
movb (%rbx), %r11b
lea oracles, %rdx
and $0xff, %r11
shlq $12, %r11
mov (%rdx,%r11,1), %r11
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 5, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'00': 16}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
