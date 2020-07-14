.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e27e, %r9
nop
nop
nop
xor $8040, %r13
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x1927e, %rsi
lea addresses_A_ht+0x1187e, %rdi
clflush (%rsi)
nop
nop
nop
inc %r10
mov $63, %rcx
rep movsq
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_A_ht+0xdece, %rsi
lea addresses_normal_ht+0x1427e, %rdi
nop
nop
cmp %r10, %r10
mov $107, %rcx
rep movsw
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x15d7e, %r11
add $30674, %r13
movb $0x61, (%r11)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xcffe, %r13
nop
nop
nop
nop
nop
inc %r9
mov (%r13), %r10
nop
cmp %r10, %r10
lea addresses_WC_ht+0x197e, %r10
nop
nop
nop
nop
nop
sub $50838, %r11
mov (%r10), %esi
nop
nop
nop
xor %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Load
lea addresses_RW+0x1ff7e, %rsi
nop
nop
sub $34204, %rax
mov (%rsi), %r14
nop
xor $41094, %rcx

// Faulty Load
lea addresses_US+0x1027e, %rcx
nop
nop
nop
nop
inc %rdx
movups (%rcx), %xmm6
vpextrq $1, %xmm6, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_RW', 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'45': 1, '48': 1}
45 48
*/
