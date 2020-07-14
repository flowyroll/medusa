.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x16cc4, %rax
clflush (%rax)
nop
nop
sub %r8, %r8
movups (%rax), %xmm6
vpextrq $0, %xmm6, %rbp
nop
nop
nop
nop
add $49227, %r14
lea addresses_A_ht+0x19cc4, %rdi
nop
nop
nop
nop
nop
add $16237, %rbx
movw $0x6162, (%rdi)
nop
cmp $45998, %rdi
lea addresses_normal_ht+0x17744, %r14
sub $58318, %rdi
mov (%r14), %dx
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0x8bdf, %rbx
nop
nop
nop
nop
inc %rdi
movb (%rbx), %al
nop
nop
nop
nop
inc %rbx
lea addresses_UC_ht+0x2cbc, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x1d544, %r8
nop
nop
nop
nop
nop
add %rdx, %rdx
movups (%r8), %xmm7
vpextrq $1, %xmm7, %rbx
cmp $18621, %rax
lea addresses_WC_ht+0x1dff4, %rbx
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rbx), %r8
nop
nop
and $9543, %rax
lea addresses_normal_ht+0x167c4, %rdx
nop
nop
nop
and $31228, %rax
movw $0x6162, (%rdx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xfdc4, %rsi
lea addresses_A_ht+0x164c4, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rax
mov $25, %rcx
rep movsb
add $54412, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r9
push %rbp
push %rsi

// Load
mov $0x61a78700000008c4, %r10
inc %r14
mov (%r10), %r15d
nop
nop
nop
nop
nop
cmp %r11, %r11

// Load
mov $0xd60560000000144, %r9
clflush (%r9)
nop
cmp %rsi, %rsi
mov (%r9), %r11d
nop
nop
nop
nop
nop
sub $4204, %r9

// Faulty Load
lea addresses_WC+0x19cc4, %rbp
nop
add %r11, %r11
vmovntdqa (%rbp), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'46': 2, '00': 3, '47': 1}
00 46 00 46 47 00
*/
