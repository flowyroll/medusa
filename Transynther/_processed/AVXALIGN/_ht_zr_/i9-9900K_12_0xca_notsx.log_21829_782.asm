.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xaad7, %rax
nop
nop
inc %rbx
mov (%rax), %esi
nop
nop
xor %r8, %r8
lea addresses_A_ht+0xf5d6, %rax
nop
nop
nop
nop
add %r8, %r8
movb $0x61, (%rax)
nop
nop
xor $23524, %rsi
lea addresses_WT_ht+0x171e8, %rsi
lea addresses_A_ht+0x146ce, %rdi
nop
xor %r13, %r13
mov $57, %rcx
rep movsl
nop
cmp $60938, %r9
lea addresses_UC_ht+0xa8ce, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $14035, %r13
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rcx
nop
sub $9279, %r13
lea addresses_A_ht+0x7f4e, %rsi
lea addresses_WC_ht+0x15cce, %rdi
cmp %r9, %r9
mov $48, %rcx
rep movsl
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
pop %rax
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rdi
push %rdx

// Faulty Load
lea addresses_normal+0x18ece, %rdi
nop
nop
nop
add $15005, %r15
vmovntdqa (%rdi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rdx
and $0xff, %r9
shlq $12, %r9
mov (%rdx,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'49': 3205, '00': 327, '45': 18282, '47': 15}
00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 49 00 45 00 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 47 49 45 45 49 45 45 45 45 49 45 45 45 45 45 45 49 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 49 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 49 47 00 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 49 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 45 45 45 45 45 49 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 49 45 45 49 45 49 45 45 45 45 45 45 45 45 00 00 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 00 45 49 45 45 00 00 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 49 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 45 45 45 00 45 00 49 49 45 45 45 45 45 45 00 49 45 45 45 45 49 45 45 00 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 49 49 45 45 45 49 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 49 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 00 00 45 45 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 49 49 45 45 00 45 45 45 49 49 45 45 45 45 45 45 45 45 49 45 00 45 45 45 45 45 45 45 45 47 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 45 45 45 45 45 45 49 45 45 00 45 49 45 45 45 45 45 45 45 45 45 45
*/
