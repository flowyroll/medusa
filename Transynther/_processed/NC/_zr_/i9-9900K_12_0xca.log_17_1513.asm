.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1a982, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and %r11, %r11
movl $0x61626364, (%rcx)
inc %r12
lea addresses_UC_ht+0x12832, %rbp
nop
nop
nop
cmp %rdx, %rdx
mov (%rbp), %r15
nop
nop
nop
nop
xor $31748, %rbp
lea addresses_D_ht+0x4982, %rsi
lea addresses_WC_ht+0x6d82, %rdi
nop
nop
nop
cmp %rbp, %rbp
mov $30, %rcx
rep movsw
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x6982, %rdx
nop
nop
nop
nop
xor $3223, %rbp
mov (%rdx), %edi
nop
nop
and $19104, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r9
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_WC+0xf902, %rsi
nop
cmp %rdx, %rdx
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Load
lea addresses_UC+0x889f, %rsi
nop
xor $62655, %rdi
vmovaps (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
nop
sub $25836, %r15

// Faulty Load
mov $0x5398950000000982, %rdi
nop
nop
nop
inc %r9
movups (%rdi), %xmm4
vpextrq $0, %xmm4, %r14
lea oracles, %rbx
and $0xff, %r14
shlq $12, %r14
mov (%rbx,%r14,1), %r14
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': True, 'type': 'addresses_NC', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': True, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_WC_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'00': 17}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
