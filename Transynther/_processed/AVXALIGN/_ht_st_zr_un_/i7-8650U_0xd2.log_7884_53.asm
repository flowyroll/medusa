.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xb3e, %rsi
lea addresses_WT_ht+0x138fe, %rdi
clflush (%rsi)
nop
and $50236, %rbx
mov $30, %rcx
rep movsw
xor $28186, %r9
lea addresses_D_ht+0x1e4ee, %rdx
nop
nop
nop
nop
nop
cmp $54302, %r12
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1203e, %rsi
lea addresses_normal_ht+0xc6be, %rdi
nop
nop
nop
and $33553, %r14
mov $23, %rcx
rep movsl
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0xcd3e, %rcx
nop
nop
nop
nop
cmp $24935, %rdi
movw $0x6162, (%rcx)
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x1809e, %rbx
nop
nop
nop
nop
sub $22175, %rcx
mov (%rbx), %r14
nop
nop
nop
nop
nop
and $2565, %rdx
lea addresses_A_ht+0xe3e, %r9
clflush (%r9)
nop
nop
nop
nop
dec %r14
movw $0x6162, (%r9)
nop
nop
cmp $4563, %r12
lea addresses_WT_ht+0xf0be, %rbx
nop
nop
nop
nop
inc %r14
mov (%rbx), %cx
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x5c3e, %rbx
nop
nop
nop
sub %r12, %r12
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r9
add $12288, %rcx
lea addresses_UC_ht+0x1419e, %rsi
lea addresses_WC_ht+0x1eaf6, %rdi
nop
nop
nop
nop
xor %rdx, %rdx
mov $93, %rcx
rep movsl
nop
nop
nop
sub $43020, %r9
lea addresses_normal_ht+0x4ec6, %rdx
cmp $62431, %r12
mov (%rdx), %ebx
nop
and %rdx, %rdx
lea addresses_normal_ht+0x7c3e, %rdx
nop
and %r9, %r9
and $0xffffffffffffffc0, %rdx
movntdqa (%rdx), %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
dec %rdi
lea addresses_D_ht+0x1a43e, %r9
nop
nop
nop
nop
nop
add $60962, %rbx
movl $0x61626364, (%r9)
nop
nop
xor %r9, %r9
lea addresses_WT_ht+0xd13e, %r9
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rcx
movq %rcx, (%r9)
and $10454, %rcx
lea addresses_WC_ht+0x16c3e, %rbx
nop
nop
nop
sub $29052, %r14
movb $0x61, (%rbx)
nop
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0x803e, %rbx
nop
nop
nop
nop
and $1782, %r9
mov (%rbx), %edi
nop
cmp $54157, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r9
push %rax
push %rcx
push %rdx

// Faulty Load
lea addresses_WT+0x7c3e, %r9
nop
nop
nop
cmp %rax, %rax
mov (%r9), %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'00': 4989, '30': 2697, 'ff': 127, '47': 60, '08': 2, '44': 1, '49': 1, '8f': 5, '26': 1, '52': 1}
00 30 00 00 30 30 00 30 30 30 00 00 30 30 30 00 30 30 30 00 30 00 00 00 30 00 00 00 00 00 30 30 30 00 30 00 00 00 00 00 30 30 30 30 00 00 00 00 30 30 00 00 00 00 30 00 30 30 00 30 00 30 00 00 00 00 00 30 00 30 00 00 30 00 30 00 00 00 30 30 00 00 00 00 30 30 30 00 00 30 00 30 30 ff 30 00 00 30 30 00 00 00 00 00 30 30 30 00 30 00 ff 30 00 00 00 30 00 00 00 00 00 00 30 00 30 30 00 00 30 00 30 00 00 00 00 00 00 30 00 30 30 00 00 00 30 00 00 30 00 30 00 00 00 30 30 00 00 30 00 00 00 00 00 00 00 00 00 00 00 00 30 00 00 00 30 30 00 00 00 00 00 30 00 00 00 30 00 00 00 30 30 00 00 00 30 00 30 30 ff 30 ff 00 00 30 30 00 00 47 30 00 00 00 00 30 30 00 00 00 30 00 00 00 00 00 30 00 30 00 00 00 30 30 00 00 00 30 00 30 00 30 00 30 00 00 00 30 00 00 00 30 00 30 00 30 00 00 00 00 00 00 47 00 30 30 30 00 30 30 30 00 00 00 00 30 00 30 00 00 00 00 00 00 00 00 30 00 00 00 30 30 00 30 00 30 30 00 30 30 00 30 30 00 00 00 00 30 00 30 00 00 00 00 00 00 00 00 00 00 30 30 30 00 30 00 00 00 30 30 00 30 00 00 00 00 00 30 30 00 00 ff 30 30 00 00 00 30 00 00 00 30 00 00 00 30 00 30 30 47 00 00 00 00 30 00 00 00 30 30 00 30 00 00 47 00 00 30 00 00 00 47 00 30 00 30 00 00 00 30 00 00 00 00 30 00 00 30 00 30 30 00 30 30 00 00 00 00 00 00 00 00 30 00 00 00 00 30 30 00 00 30 00 00 30 00 00 00 30 30 00 30 00 30 00 30 30 30 00 30 30 30 30 30 00 00 00 00 00 30 00 30 00 00 00 00 00 00 30 00 00 30 00 00 00 00 00 00 00 00 30 30 00 00 00 00 00 30 00 30 30 00 30 00 00 00 00 00 00 30 30 30 00 00 00 30 00 00 00 30 00 30 00 00 30 00 00 00 30 30 30 00 00 00 00 30 00 00 00 00 30 30 00 30 00 00 00 30 00 30 30 30 00 00 00 00 00 00 00 00 30 30 00 00 30 00 00 00 00 00 00 00 00 00 30 00 30 00 30 30 00 ff 00 30 00 30 00 30 00 00 ff 30 00 00 00 00 30 30 30 00 30 30 30 00 00 30 30 00 30 00 00 00 30 30 00 00 00 ff 30 30 00 30 30 00 00 30 30 00 00 30 00 00 30 30 00 30 30 00 00 00 00 00 00 00 30 00 30 00 00 00 30 30 00 00 ff 30 00 00 00 30 00 00 30 30 30 00 00 00 00 30 30 00 30 30 00 00 00 30 00 00 00 00 30 00 00 00 30 30 00 00 00 00 00 30 00 00 30 00 30 30 00 00 00 30 00 00 00 30 00 00 00 00 00 00 00 30 30 30 00 00 30 00 00 30 00 00 00 30 00 00 00 30 00 00 00 30 30 00 00 00 00 30 30 00 30 30 00 00 30 00 00 00 00 00 30 00 00 30 00 00 00 00 30 00 00 30 00 00 00 00 30 00 00 00 00 00 00 30 00 00 00 00 30 00 00 00 00 00 00 00 30 30 30 00 00 00 00 30 00 00 00 00 30 00 00 30 00 00 30 00 00 00 30 00 30 30 30 30 00 ff 00 00 47 30 30 00 00 00 00 30 00 00 00 00 00 00 30 30 00 00 00 00 30 30 30 30 00 00 30 ff 00 00 00 30 30 00 08 00 30 00 00 00 00 00 00 00 00 30 00 30 00 30 30 00 00 00 00 00 00 30 00 00 00 30 00 30 00 00 00 30 30 30 30 00 00 00 30 00 30 30 00 00 00 00 00 00 00 30 00 30 00 30 00 47 00 30 00 00 00 00 00 00 30 00 00 00 30 00 00 00 00 00 00 30 00 00 00 00 30 00 30 30 00 30 00 00 30 00 30 00 00 30 00 00 00 30 30 00 00 44 00 30 00 00 30 00 00 00 00 00 30 00 30 00 00 00 00 00 00 00 30 00 30 00 30 00 00 00 00 00 30 30 00 00 00 30 00 00 30 00 30 30 00 00 ff 30 30 00 00 30 00 30 30 00 00 00 00 00 30 00 30 30
*/
