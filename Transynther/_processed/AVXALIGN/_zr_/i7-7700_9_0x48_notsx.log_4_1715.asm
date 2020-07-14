.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r13
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1d94a, %r12
nop
nop
sub %rsi, %rsi
movb (%r12), %cl
nop
nop
add %r11, %r11
lea addresses_WT_ht+0x9d1a, %r10
nop
nop
nop
nop
nop
and $51057, %rdi
movl $0x61626364, (%r10)
nop
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x16d7a, %r11
nop
nop
nop
add %rsi, %rsi
mov (%r11), %r10d
nop
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x1ddf7, %r11
nop
nop
nop
sub $16738, %rcx
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x12db6, %rsi
nop
nop
nop
nop
xor $1698, %rdx
mov (%rsi), %edi
nop
nop
dec %r12
lea addresses_D_ht+0x1730a, %r10
nop
nop
nop
nop
nop
xor $35051, %r11
movb $0x61, (%r10)
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xf4ba, %rdi
nop
nop
sub $49056, %r12
mov $0x6162636465666768, %rdx
movq %rdx, %xmm0
vmovups %ymm0, (%rdi)
nop
xor $12368, %rcx
lea addresses_D_ht+0x894a, %rdi
nop
sub $55345, %rdx
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
nop
dec %rdi
lea addresses_normal_ht+0x5622, %rsi
lea addresses_D_ht+0xa52a, %rdi
cmp $17995, %r13
mov $5, %rcx
rep movsb
nop
nop
nop
nop
cmp $37867, %rsi
lea addresses_A_ht+0x1ee8e, %rsi
lea addresses_normal_ht+0x7baa, %rdi
clflush (%rsi)
nop
nop
nop
nop
xor %rdx, %rdx
mov $72, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x3d96, %rdx
nop
nop
nop
dec %rsi
vmovups (%rdx), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
cmp $50040, %rdx
lea addresses_WT_ht+0x1999e, %rsi
lea addresses_WC_ht+0x17e76, %rdi
nop
nop
nop
nop
nop
add %r11, %r11
mov $100, %rcx
rep movsl
nop
sub %r10, %r10
lea addresses_WT_ht+0xed4a, %rsi
lea addresses_WC_ht+0xa5ca, %rdi
nop
sub $30880, %r12
mov $88, %rcx
rep movsl
add %rdx, %rdx
lea addresses_WC_ht+0x1c44a, %rcx
nop
dec %rsi
mov (%rcx), %r10w
nop
nop
add $7690, %r11
lea addresses_A_ht+0x1a24a, %rsi
nop
nop
nop
dec %r10
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
nop
nop
sub $37362, %r12
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %rbp
push %rdx
push %rsi

// Faulty Load
lea addresses_US+0x1f54a, %rsi
xor $11830, %r12
mov (%rsi), %rbp
lea oracles, %rdx
and $0xff, %rbp
shlq $12, %rbp
mov (%rdx,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'00': 4}
00 00 00 00
*/
