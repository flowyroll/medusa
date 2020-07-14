.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17f4, %r15
clflush (%r15)
nop
cmp $61349, %r12
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rax
cmp %r11, %r11
lea addresses_WT_ht+0x9834, %rsi
lea addresses_WC_ht+0xe5f4, %rdi
and $43866, %r11
mov $49, %rcx
rep movsl
nop
xor $56272, %rsi
lea addresses_UC_ht+0x1324c, %rsi
lea addresses_WC_ht+0xf3f4, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $19099, %rbp
mov $98, %rcx
rep movsl
nop
nop
nop
nop
add $26769, %rbp
lea addresses_normal_ht+0x1e3f4, %rax
xor $4435, %rdi
mov (%rax), %r12d
nop
nop
nop
nop
nop
cmp $8891, %rdi
lea addresses_WT_ht+0x1ff4, %rsi
lea addresses_WC_ht+0x11b2c, %rdi
nop
add %rax, %rax
mov $81, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $52447, %rcx
lea addresses_WT_ht+0x14bf4, %rax
nop
nop
nop
nop
nop
sub %rbp, %rbp
movw $0x6162, (%rax)
nop
sub %r12, %r12
lea addresses_WT_ht+0x112f4, %rsi
lea addresses_normal_ht+0xb000, %rdi
nop
nop
nop
xor $63426, %r15
mov $64, %rcx
rep movsw
nop
add %rcx, %rcx
lea addresses_normal_ht+0x37f4, %rsi
lea addresses_UC_ht+0x3d34, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $45496, %r15
mov $21, %rcx
rep movsb
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1a3f4, %r11
and %rax, %rax
movb (%r11), %cl
nop
xor $46971, %r12
lea addresses_WT_ht+0x15104, %rax
nop
and $60631, %rbp
mov (%rax), %r12d
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x189cc, %rbp
nop
add %rsi, %rsi
mov $0x6162636465666768, %r12
movq %r12, %xmm7
movups %xmm7, (%rbp)
and %rcx, %rcx
lea addresses_WC_ht+0xebf4, %r11
clflush (%r11)
nop
nop
and %r15, %r15
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x196dc, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
movl $0x61626364, (%rdi)
inc %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rbx
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x1abf4, %r9
nop
nop
nop
and $27771, %rbx
vmovaps (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'08': 1, '72': 1, '49': 8979, '00': 758}
49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 00 49 49 00 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 00 00 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 49 49 49 49 49 49 49 49 49 49 00 49 00 49 49 49 49 49 49
*/
