.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x3aba, %rsi
clflush (%rsi)
nop
add $27916, %r11
and $0xffffffffffffffc0, %rsi
vmovntdqa (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x1aeba, %rsi
lea addresses_D_ht+0x14bba, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r12, %r12
mov $74, %rcx
rep movsb
nop
nop
and $29521, %rcx
lea addresses_D_ht+0x50fa, %rbp
cmp %r14, %r14
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%rbp)
nop
nop
sub $6893, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r9
push %rcx
push %rdi
push %rdx

// Store
lea addresses_D+0xfc5a, %r15
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%r15)
nop
nop
nop
add $7057, %rdi

// Faulty Load
lea addresses_UC+0x56ba, %rdx
nop
nop
nop
nop
and %r14, %r14
movaps (%rdx), %xmm3
vpextrq $1, %xmm3, %r15
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'44': 1554, '49': 20091, '00': 184}
00 49 49 49 44 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 44 49 49 49 44 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49
*/
