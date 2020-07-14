.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x15f00, %r9
clflush (%r9)
nop
nop
nop
and $877, %r14
movb (%r9), %r10b
nop
nop
nop
cmp %r9, %r9
lea addresses_WC_ht+0x18000, %rsi
lea addresses_WC_ht+0x280, %rdi
clflush (%rsi)
nop
nop
dec %r9
mov $114, %rcx
rep movsq
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x14c00, %rsi
nop
nop
nop
nop
inc %rcx
mov (%rsi), %r10d
nop
nop
nop
nop
inc %r9
lea addresses_D_ht+0x134f0, %rsi
lea addresses_UC_ht+0x12a00, %rdi
nop
nop
nop
nop
inc %r11
mov $117, %rcx
rep movsw
nop
sub %rdi, %rdi
lea addresses_A_ht+0x3400, %r10
nop
and %rsi, %rsi
mov (%r10), %rcx
nop
nop
nop
nop
nop
cmp $21955, %r14
lea addresses_A_ht+0x12f10, %r9
nop
nop
nop
nop
inc %rcx
vmovups (%r9), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbp
nop
nop
xor $55593, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %r9
push %rax
push %rbx
push %rsi

// Load
lea addresses_PSE+0x1d424, %r8
clflush (%r8)
nop
nop
nop
nop
nop
mfence
vmovaps (%r8), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
and $55096, %r12

// Faulty Load
lea addresses_US+0x1a000, %rax
nop
xor %rbx, %rbx
mov (%rax), %r11d
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'00': 18}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
