.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1d95f, %rsi
lea addresses_normal_ht+0x14e11, %rdi
nop
nop
nop
cmp %r14, %r14
mov $62, %rcx
rep movsw
nop
cmp %r15, %r15
lea addresses_WT_ht+0x19db9, %rax
nop
nop
nop
nop
nop
xor %rcx, %rcx
movb $0x61, (%rax)
nop
nop
add $27354, %rsi
lea addresses_WT_ht+0x540c, %r15
clflush (%r15)
sub %r11, %r11
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x1d711, %rdi
nop
nop
nop
and $25378, %rcx
mov (%rdi), %r15w
nop
nop
nop
nop
nop
add %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x3a17890000000d91, %rdx
clflush (%rdx)
nop
nop
nop
nop
dec %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movups %xmm3, (%rdx)
nop
xor %rsi, %rsi

// Store
lea addresses_US+0x1dce1, %rsi
nop
nop
cmp %r13, %r13
mov $0x5152535455565758, %r10
movq %r10, %xmm2
movups %xmm2, (%rsi)
and $54676, %r10

// Faulty Load
lea addresses_A+0xf591, %rbp
nop
nop
nop
nop
nop
cmp %rcx, %rcx
vmovups (%rbp), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r15
lea oracles, %rdx
and $0xff, %r15
shlq $12, %r15
mov (%rdx,%r15,1), %r15
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 7}}
{'00': 2}
00 00
*/
