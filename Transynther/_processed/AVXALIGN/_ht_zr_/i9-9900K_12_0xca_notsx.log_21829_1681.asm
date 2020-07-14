.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xae20, %r8
nop
xor $19861, %rax
movups (%r8), %xmm2
vpextrq $1, %xmm2, %r11
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1a730, %rbp
nop
dec %r11
mov (%rbp), %r8w
cmp %rdi, %rdi
lea addresses_WC_ht+0x11560, %r10
nop
nop
nop
nop
cmp %rbp, %rbp
mov (%r10), %di
nop
nop
nop
sub $4294, %r8
lea addresses_D_ht+0xb0, %r10
nop
nop
nop
inc %r12
mov (%r10), %rdi
nop
nop
nop
nop
xor %r12, %r12
lea addresses_WT_ht+0xfbb0, %r11
clflush (%r11)
nop
nop
nop
sub $10566, %r12
movb (%r11), %al
nop
cmp %r12, %r12
lea addresses_D_ht+0x8af0, %rbp
nop
nop
nop
nop
add %rdi, %rdi
movb (%rbp), %r10b
nop
nop
nop
nop
xor $60815, %r12
lea addresses_UC_ht+0x6970, %r8
nop
nop
nop
nop
xor $2236, %rdi
mov (%r8), %r10w
nop
and %rdi, %rdi
lea addresses_UC_ht+0x184a8, %rsi
lea addresses_UC_ht+0x1ecc0, %rdi
nop
nop
nop
nop
nop
cmp $13646, %r8
mov $47, %rcx
rep movsb
nop
nop
nop
nop
and $14579, %rcx
lea addresses_WC_ht+0x16e74, %r10
nop
nop
nop
cmp $60756, %r11
mov (%r10), %rcx
nop
nop
inc %rax
lea addresses_A_ht+0x1c070, %rdi
xor %r10, %r10
movb $0x61, (%rdi)
add %r11, %r11
lea addresses_normal_ht+0x43c, %rsi
lea addresses_D_ht+0x53f0, %rdi
clflush (%rsi)
nop
nop
and %rax, %rax
mov $79, %rcx
rep movsw
nop
nop
and %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rax
push %rbx
push %rdx

// Store
lea addresses_RW+0x6040, %r10
nop
nop
xor $15735, %rbx
movb $0x51, (%r10)
nop
nop
nop
nop
nop
cmp $31574, %rax

// Faulty Load
mov $0x2a95ec00000000b0, %rdx
nop
add %r10, %r10
vmovntdqa (%rdx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rdx
pop %rbx
pop %rax
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'00': 3515, '44': 18314}
00 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 00 00 00 44 00 00 00 00 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 00 00 00 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 00 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 44 00 44 44 00 00 00 00 00 44 44 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 00 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 00 00 00 00 00 00 00 00 00 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 00 00 44 44 44 00 00 00 44 44 00 00 00 00 00 44 00 00 44 44 44 44 44 44 44 00 00 00 00 44 44 44 44 44 44 44
*/
