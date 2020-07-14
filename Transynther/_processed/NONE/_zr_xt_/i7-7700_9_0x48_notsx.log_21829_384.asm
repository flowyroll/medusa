.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x3d5c, %r12
nop
nop
add %r11, %r11
mov (%r12), %rbx
nop
nop
nop
sub $46383, %rax
lea addresses_normal_ht+0x118bc, %rsi
lea addresses_UC_ht+0x3204, %rdi
add $63649, %rbp
mov $11, %rcx
rep movsw
nop
cmp $20345, %r12
lea addresses_D_ht+0x1ef5c, %rsi
lea addresses_A_ht+0xfbec, %rdi
nop
nop
nop
dec %r12
mov $11, %rcx
rep movsw
nop
nop
nop
nop
and $62937, %r12
lea addresses_A_ht+0x5f5c, %rcx
nop
nop
nop
nop
xor $5724, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
and $0xffffffffffffffc0, %rcx
vmovaps %ymm7, (%rcx)
nop
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_normal_ht+0x6f60, %rcx
nop
nop
nop
nop
xor $35980, %rdi
mov (%rcx), %rbx
nop
nop
nop
and $57377, %r12
lea addresses_A_ht+0x455c, %rbx
nop
add %rsi, %rsi
movw $0x6162, (%rbx)
nop
nop
dec %rsi
lea addresses_D_ht+0x11e3c, %rax
nop
sub %r12, %r12
vmovups (%rax), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0x1535c, %rcx
nop
inc %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x7d5c, %rsi
lea addresses_A_ht+0x17d5c, %rdi
nop
nop
inc %rbx
mov $65, %rcx
rep movsl
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x1e05c, %rsi
lea addresses_A_ht+0x12d5c, %rdi
nop
nop
nop
nop
inc %rax
mov $2, %rcx
rep movsl
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x3a74, %rsi
lea addresses_UC_ht+0x115c, %rdi
and %r12, %r12
mov $11, %rcx
rep movsl
and %rcx, %rcx
lea addresses_WC_ht+0x4d78, %rbx
nop
add $59290, %rax
movl $0x61626364, (%rbx)
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x1cc5c, %rbp
nop
nop
nop
nop
sub $10529, %rax
movb (%rbp), %r12b
nop
nop
nop
xor $46339, %r11
lea addresses_normal_ht+0x1c018, %rsi
lea addresses_normal_ht+0x93f0, %rdi
nop
nop
nop
nop
and %r11, %r11
mov $103, %rcx
rep movsb
xor %r11, %r11
lea addresses_D_ht+0xd7c, %rsi
nop
cmp $19543, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdx

// Store
lea addresses_A+0xb2c, %rax
clflush (%rax)
and %r8, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%rax)
cmp %rcx, %rcx

// Faulty Load
lea addresses_A+0x855c, %rdx
nop
nop
nop
dec %rcx
mov (%rdx), %r8w
lea oracles, %rdx
and $0xff, %r8
shlq $12, %r8
mov (%rdx,%r8,1), %r8
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 8}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'35': 21828, '00': 1}
00 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35 35
*/
