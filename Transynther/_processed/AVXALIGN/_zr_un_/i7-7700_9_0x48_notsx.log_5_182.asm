.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rsi
lea addresses_WC_ht+0x18e29, %r15
nop
nop
nop
nop
and $20972, %rbx
movups (%r15), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WT_ht+0x9a29, %rsi
nop
nop
nop
nop
nop
cmp $13770, %r11
mov (%rsi), %r14w
nop
nop
nop
nop
sub $36800, %r14
lea addresses_normal_ht+0x2829, %r8
nop
nop
add %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
sub %r14, %r14
lea addresses_UC_ht+0x1269, %rsi
clflush (%rsi)
nop
nop
and $17347, %r11
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
xor %r11, %r11
lea addresses_A_ht+0xa5e9, %r8
nop
nop
nop
and %r9, %r9
mov (%r8), %r14
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xf629, %r14
add %r11, %r11
movb $0x61, (%r14)
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x15ca1, %r11
nop
add %rbx, %rbx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%r11)
nop
nop
nop
nop
nop
cmp %r11, %r11
pop %rsi
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi

// Faulty Load
lea addresses_D+0xe29, %r8
nop
nop
nop
nop
nop
dec %rcx
vmovaps (%r8), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
lea oracles, %rsi
and $0xff, %rbx
shlq $12, %rbx
mov (%rsi,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'d8': 2, '00': 3}
00 d8 00 d8 00
*/
