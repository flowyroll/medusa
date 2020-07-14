.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x178ae, %rsi
nop
sub %r14, %r14
movl $0x61626364, (%rsi)
cmp $12204, %rax
lea addresses_WT_ht+0xbf2e, %r8
nop
and %rax, %rax
mov (%r8), %bx
nop
cmp %rbp, %rbp
lea addresses_WC_ht+0x175ae, %rsi
lea addresses_D_ht+0x3aaa, %rdi
clflush (%rsi)
sub %rbx, %rbx
mov $85, %rcx
rep movsw
nop
nop
nop
xor %rbx, %rbx
lea addresses_WT_ht+0x47ae, %rsi
lea addresses_UC_ht+0xe26e, %rdi
nop
nop
xor $54952, %rbp
mov $68, %rcx
rep movsb
nop
and $24853, %rsi
lea addresses_normal_ht+0x1472e, %rsi
lea addresses_normal_ht+0x45ae, %rdi
and $41617, %rbx
mov $118, %rcx
rep movsb
nop
nop
nop
nop
add %r8, %r8
lea addresses_normal_ht+0x195ae, %rsi
lea addresses_WT_ht+0xffae, %rdi
nop
nop
add %r8, %r8
mov $63, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_D_ht+0x4e, %rbx
nop
sub %rdi, %rdi
movb $0x61, (%rbx)
nop
nop
nop
and $29923, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbx
push %rdi

// Faulty Load
lea addresses_A+0x75ae, %rbx
nop
nop
nop
nop
add %r15, %r15
vmovaps (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': True, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'00': 2837, '48': 2975, '44': 290}
00 00 48 00 48 00 44 00 48 48 48 44 44 00 00 48 48 00 00 44 48 48 48 00 00 48 00 00 48 48 00 00 00 00 00 00 48 00 00 00 48 48 48 00 48 00 00 00 48 00 48 48 00 00 00 00 00 00 48 00 00 00 00 48 00 00 48 00 00 00 48 00 00 00 00 00 48 48 00 48 00 00 00 00 00 48 00 00 48 00 00 00 00 00 48 48 48 48 00 48 00 44 44 48 48 48 48 00 48 00 48 48 44 48 44 00 00 00 48 48 00 44 48 48 00 48 48 00 48 48 00 48 44 48 00 48 00 00 48 48 48 48 00 00 48 00 00 00 48 48 00 00 48 48 00 48 00 44 00 00 48 48 00 00 00 48 00 00 00 48 00 00 48 48 48 48 48 48 48 00 48 00 48 48 00 00 00 48 48 00 48 00 48 48 48 48 48 00 48 48 00 44 48 00 48 00 00 48 00 48 00 48 48 48 00 48 48 00 00 00 48 48 44 48 00 48 00 00 00 00 00 00 00 48 48 00 00 48 48 48 48 00 48 00 00 48 00 00 00 00 00 00 00 48 00 48 00 00 48 48 00 00 48 00 48 00 00 00 48 00 48 48 00 00 00 00 00 48 48 00 44 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 00 48 48 48 00 00 00 00 00 48 00 48 48 00 48 00 48 48 48 00 00 48 00 00 48 00 00 00 00 48 48 00 00 48 00 48 00 00 00 48 48 48 00 00 48 00 44 00 48 48 00 48 48 48 00 00 00 48 00 48 00 48 48 44 48 48 44 48 00 48 48 44 00 48 00 00 00 48 00 48 48 48 48 48 00 00 48 48 48 44 44 00 48 48 48 48 48 00 00 48 48 00 48 48 00 48 48 00 48 48 48 48 00 00 48 00 48 48 44 48 48 48 00 48 00 00 48 00 00 48 44 00 00 48 48 00 44 00 48 00 00 00 00 48 48 48 48 00 48 00 00 48 48 00 00 48 00 00 48 48 48 48 48 48 00 00 00 48 00 48 48 00 00 00 00 00 00 00 00 48 48 48 00 48 44 00 00 00 00 00 48 48 00 48 00 00 48 00 44 00 00 48 00 00 00 44 00 00 48 48 48 00 44 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 48 48 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 00 44 00 48 44 48 00 48 00 00 00 48 00 00 00 48 48 48 00 00 48 00 48 00 00 00 00 00 48 48 48 48 00 48 48 44 48 00 00 48 48 48 00 00 48 00 00 00 00 48 48 00 48 00 48 48 48 00 48 48 00 00 48 00 48 48 00 00 48 00 00 00 00 48 48 48 48 00 48 48 48 48 00 00 00 48 00 44 48 48 48 00 48 00 44 48 48 48 00 00 48 48 00 00 48 00 00 00 00 00 00 48 00 48 48 00 00 48 48 00 00 00 48 00 48 00 00 48 48 48 48 00 00 48 48 48 00 00 48 48 48 00 00 00 00 00 00 00 00 48 48 48 48 48 00 00 00 00 00 44 48 48 00 48 48 48 48 48 48 48 00 00 00 48 48 00 48 00 48 48 00 00 00 48 48 00 00 00 48 00 48 00 00 48 48 48 48 00 00 48 48 48 48 48 48 48 00 00 48 00 00 48 00 00 00 48 48 00 00 00 00 48 00 48 48 48 48 00 00 48 00 48 48 00 00 00 44 00 00 44 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 48 00 48 00 48 48 48 00 48 48 48 48 48 48 48 00 48 48 48 48 48 48 00 00 48 00 48 00 00 00 00 00 00 00 48 00 48 48 00 00 48 00 48 44 48 00 48 00 48 48 00 48 00 00 48 48 00 48 00 48 00 00 48 00 48 44 48 48 48 48 48 00 48 48 48 00 48 48 00 48 48 00 48 00 00 48 48 00 48 48 48 48 00 48 48 48 48 00 00 00 00 48 00 48 48 00 48 48 48 00 00 00 00 44 48 48 48 44 48 00 48 48 00 48 44 48 00 48 48 00 00 48 48 00 48 00 48 48 00 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 00 48 44 48 00 48 48 48 48 48 00 00 48 00 00 00 00 48 00 48 00 48 00 48 48 48 48 00 48 48 48 48 00 48 00 48 44 48 00 00 48 44 48 00
*/
