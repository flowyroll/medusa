.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x7efd, %rsi
lea addresses_normal_ht+0x6491, %rdi
nop
nop
dec %rbp
mov $57, %rcx
rep movsw
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1de9, %rcx
nop
nop
nop
sub %r8, %r8
movw $0x6162, (%rcx)
nop
nop
xor $23138, %rax
lea addresses_normal_ht+0xdc99, %rsi
lea addresses_UC_ht+0xe769, %rdi
xor %rax, %rax
mov $50, %rcx
rep movsq
nop
nop
sub $64050, %rax
lea addresses_D_ht+0xa969, %rcx
nop
xor %r10, %r10
mov (%rcx), %r8w
nop
nop
nop
nop
nop
dec %r10
lea addresses_A_ht+0xb861, %rax
and %r10, %r10
mov (%rax), %edi
xor $41258, %r8
lea addresses_normal_ht+0x6af9, %rcx
clflush (%rcx)
nop
nop
add %r10, %r10
movb (%rcx), %al
nop
nop
nop
sub %r8, %r8
lea addresses_normal_ht+0x47e9, %r10
nop
nop
xor $10489, %r8
movb (%r10), %al
nop
nop
nop
nop
add %r8, %r8
lea addresses_WT_ht+0x15c69, %r10
nop
nop
nop
nop
and $4884, %rcx
movb $0x61, (%r10)
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x172e9, %rax
nop
nop
and $52911, %rbp
movb (%rax), %r8b
add $51838, %r10
lea addresses_WT_ht+0x6635, %rsi
lea addresses_WT_ht+0x13869, %rdi
and $53317, %r15
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0xd9d5, %r10
clflush (%r10)
nop
nop
nop
nop
nop
and $45971, %rax
vmovups (%r10), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
nop
sub %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdx

// Store
mov $0x6bb1090000000369, %rdx
nop
nop
nop
sub $32462, %r13
movl $0x51525354, (%rdx)
nop
nop
nop
dec %rdx

// Faulty Load
mov $0x6bb1090000000369, %rbp
nop
cmp %rcx, %rcx
mov (%rbp), %ax
lea oracles, %rdx
and $0xff, %rax
shlq $12, %rax
mov (%rdx,%rax,1), %rax
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'00': 9255, '54': 12574}
00 00 00 54 00 00 00 54 54 54 54 54 54 54 54 54 54 54 00 54 00 54 54 00 00 54 54 54 54 54 54 54 00 00 54 54 54 54 54 00 54 54 00 54 54 00 54 54 54 00 54 00 54 54 54 00 54 54 54 00 54 54 54 54 00 00 54 54 54 00 00 54 54 54 00 00 54 54 00 54 00 54 00 54 54 00 00 00 00 54 54 00 00 00 54 54 54 54 00 00 54 00 54 54 54 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 00 54 00 00 00 00 00 00 00 54 00 00 00 00 00 54 00 54 54 54 00 00 00 00 00 54 00 00 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 00 54 54 54 54 54 00 00 54 54 00 00 00 00 00 00 00 00 54 00 00 54 00 54 00 54 00 00 00 00 00 54 54 54 54 00 54 00 00 54 54 54 54 00 54 54 54 00 54 54 54 00 00 54 54 00 54 00 54 00 00 54 00 00 54 54 00 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 00 54 54 54 54 00 00 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 54 54 00 54 00 00 54 54 54 54 54 54 00 54 54 00 54 00 00 54 54 54 54 54 54 54 54 54 54 54 00 00 54 00 54 54 54 54 54 00 54 54 54 54 54 00 00 54 54 54 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 54 54 54 54 00 54 54 54 00 54 00 00 00 54 00 00 54 54 54 54 54 00 00 54 54 54 00 00 54 54 54 54 00 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 00 54 00 00 54 54 54 00 00 00 54 00 54 00 54 00 00 00 54 00 00 54 00 54 54 54 54 00 00 00 54 54 00 54 54 00 00 54 00 00 54 00 00 00 54 00 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 00 54 00 00 54 54 54 54 00 54 54 54 00 00 54 00 54 54 00 00 54 54 00 00 54 54 54 00 54 54 00 00 00 54 00 00 00 00 54 00 00 00 00 00 54 00 00 00 00 54 00 00 54 00 00 00 00 54 00 00 54 54 00 00 00 54 00 54 00 54 00 00 54 00 00 54 54 54 54 54 54 54 00 54 00 00 54 54 00 54 54 54 54 54 54 00 54 54 54 00 00 54 54 54 54 54 00 00 54 00 00 54 00 54 54 54 54 54 00 00 00 54 00 00 00 00 00 00 54 00 54 54 00 00 00 54 00 00 00 54 54 54 00 00 54 00 00 54 54 00 00 54 00 54 54 00 00 54 54 54 54 54 54 54 00 00 54 00 00 54 54 54 54 54 54 54 54 00 54 00 54 54 00 54 54 54 54 00 00 54 54 00 54 54 54 00 54 54 00 54 54 54 54 00 00 54 54 00 00 54 54 54 00 54 54 54 00 00 54 00 54 54 00 54 54 00 00 54 54 54 00 54 54 54 54 54 00 54 54 00 54 54 54 54 00 54 00 54 54 54 00 00 54 00 00 00 54 54 54 54 54 00 00 54 00 00 00 54 54 00 00 00 54 54 54 00 00 54 54 54 00 54 54 54 00 54 00 54 00 54 00 00 00 54 00 00 54 00 00 00 00 54 00 54 00 00 00 00 00 00 00 00 00 00 00 54 00 54 54 54 54 54 00 54 00 54 00 54 00 54 54 54 54 54 00 54 00 00 00 00 00 00 00 00 54 00 54 00 00 54 00 00 00 54 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 54 54 54 00 00 00 54 54 00 54 00 00 54 54 54 54 54 54 54 54 00 00 00 00 00 00 00 00 00 00 54 54 54 54 54 54 00 00 54 54 00 00 54 00 00 00 54 54 54 00 00 54 00 00 00 00 00 00 54 54 54 54 00 00 54 54 00 00 00 00 54 00 00 00 54 00 54 00 54 00 00 54 54 00 00 00 54 00 00 54 00 00 00 00 54 54 54 54
*/
