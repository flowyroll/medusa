.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x140ec, %r13
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov (%r13), %edx
nop
nop
nop
nop
dec %rax
lea addresses_A_ht+0xe6c, %r11
nop
nop
nop
nop
xor $46710, %rdi
movb (%r11), %r12b
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1d1b2, %r12
nop
add %rax, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r12)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x13c6c, %rsi
lea addresses_UC_ht+0x1626c, %rdi
nop
nop
xor %rax, %rax
mov $76, %rcx
rep movsw
nop
nop
sub %rdx, %rdx
lea addresses_UC_ht+0xa814, %rsi
lea addresses_WT_ht+0xb557, %rdi
nop
nop
nop
inc %r11
mov $83, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x26dc, %r13
nop
nop
nop
nop
sub $39824, %rcx
movb $0x61, (%r13)
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x12564, %rcx
clflush (%rcx)
nop
and %r13, %r13
movups (%rcx), %xmm5
vpextrq $1, %xmm5, %rsi
sub $57043, %rsi
lea addresses_WT_ht+0x1726c, %rcx
nop
nop
nop
nop
xor $58201, %rdx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r9
push %rbp

// Faulty Load
mov $0xe6c, %r14
nop
nop
nop
nop
nop
xor $21245, %rbp
mov (%r14), %r9d
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'00': 2}
00 00
*/
