.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x163a4, %rdi
nop
cmp $33124, %r14
mov (%rdi), %r11d
nop
nop
nop
and $9028, %r15
lea addresses_UC_ht+0x9562, %rsi
nop
nop
nop
inc %rdx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x3c84, %r11
nop
nop
nop
inc %r8
movl $0x61626364, (%r11)
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x5b64, %rsi
lea addresses_WT_ht+0x1cde4, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $47, %rcx
rep movsl
sub $32157, %r15
lea addresses_normal_ht+0x9b64, %rsi
lea addresses_normal_ht+0x1a834, %rdi
dec %rdx
mov $66, %rcx
rep movsw
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0xc5c5, %r15
nop
nop
nop
nop
nop
cmp $286, %r14
movb (%r15), %r8b
nop
cmp $39564, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_US+0x161e4, %r12
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r12), %cx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'00': 11}
00 00 00 00 00 00 00 00 00 00 00
*/
