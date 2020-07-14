.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x5b79, %rsi
lea addresses_A_ht+0xe6b9, %rdi
nop
xor $40491, %r15
mov $24, %rcx
rep movsq
nop
xor $33572, %r10
lea addresses_normal_ht+0x173b9, %r10
nop
cmp %r11, %r11
movb (%r10), %cl
nop
nop
dec %r15
lea addresses_normal_ht+0xbb9, %r11
nop
nop
nop
add %rax, %rax
movups (%r11), %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x15fb9, %rsi
lea addresses_WT_ht+0x117b9, %rdi
nop
nop
nop
nop
nop
xor $20938, %rax
mov $93, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0x10de9, %rax
clflush (%rax)
nop
add $16103, %r10
movups (%rax), %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x17279, %rsi
lea addresses_WC_ht+0x85f2, %rdi
nop
and %rbp, %rbp
mov $84, %rcx
rep movsw
nop
nop
nop
nop
and %r10, %r10
lea addresses_D_ht+0x33b5, %rsi
lea addresses_WT_ht+0x13ed9, %rdi
nop
nop
cmp %rax, %rax
mov $79, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x181b9, %rbp
nop
nop
nop
inc %rsi
mov (%rbp), %edi
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x3b9, %r10
nop
and $16181, %rdx
movups (%r10), %xmm1
vpextrq $1, %xmm1, %r15
lea oracles, %rcx
and $0xff, %r15
shlq $12, %r15
mov (%rcx,%r15,1), %r15
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 8}}
{'46': 13}
46 46 46 46 46 46 46 46 46 46 46 46 46
*/
