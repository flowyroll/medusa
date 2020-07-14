.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1bcf, %r12
nop
inc %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%r12)
nop
and $8385, %rcx
lea addresses_UC_ht+0x1005f, %rsi
lea addresses_A_ht+0xfb7f, %rdi
clflush (%rsi)
nop
nop
xor $2463, %rbp
mov $92, %rcx
rep movsb
nop
nop
add $2293, %rsi
lea addresses_WC_ht+0x2d96, %rsi
lea addresses_WC_ht+0x7fa7, %rdi
nop
nop
sub %r14, %r14
mov $11, %rcx
rep movsw
nop
nop
nop
xor %rbp, %rbp
lea addresses_UC_ht+0x1e6ef, %rsi
lea addresses_A_ht+0x1c5ef, %rdi
nop
xor %r12, %r12
mov $56, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $30382, %r13
lea addresses_A_ht+0xb6df, %rcx
nop
nop
nop
nop
cmp $42683, %r13
movb $0x61, (%rcx)
nop
nop
xor $35132, %rbp
lea addresses_WC_ht+0x1e85f, %rsi
lea addresses_WC_ht+0x1ad51, %rdi
nop
xor $26914, %r12
mov $92, %rcx
rep movsq
dec %rbx
lea addresses_D_ht+0x1ebdf, %rcx
nop
nop
sub %rbx, %rbx
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rbp
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x2edf, %r13
nop
nop
cmp $51038, %rdi
movw $0x6162, (%r13)
nop
nop
nop
nop
nop
sub $37604, %r13
lea addresses_UC_ht+0x1bd93, %rsi
lea addresses_D_ht+0xfd17, %rdi
cmp %r12, %r12
mov $116, %rcx
rep movsw
inc %r14
lea addresses_normal_ht+0x2cc3, %r12
nop
lfence
movb $0x61, (%r12)
nop
nop
nop
cmp %rbx, %rbx
lea addresses_normal_ht+0x15b1f, %rcx
nop
nop
nop
nop
nop
and %rsi, %rsi
movw $0x6162, (%rcx)
nop
cmp $18128, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rax
push %rbp
push %rdi

// Faulty Load
lea addresses_PSE+0xa05f, %r13
nop
nop
nop
nop
nop
cmp %rax, %rax
vmovaps (%r13), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdi
lea oracles, %rbp
and $0xff, %rdi
shlq $12, %rdi
mov (%rbp,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %rax
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 2, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'46': 1816, '76': 1, '48': 4235, '28': 1, '00': 15772, '60': 2, '10': 1, '0a': 1}
00 48 48 48 48 00 00 48 00 46 00 00 00 00 00 00 48 00 00 00 00 48 00 46 48 00 46 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 46 00 00 00 48 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 46 48 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 46 00 00 00 00 00 48 48 00 00 46 00 00 00 00 00 48 00 00 00 48 00 00 00 60 00 00 00 00 00 46 00 00 00 46 00 00 00 48 00 48 00 00 48 00 48 46 00 00 46 00 48 00 48 00 48 46 00 48 48 48 48 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 46 00 00 00 00 00 00 00 00 48 00 00 00 00 46 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 48 00 00 48 00 00 00 48 00 00 46 00 00 00 00 48 00 48 00 48 00 00 00 48 00 46 46 48 00 00 00 00 46 00 46 00 46 00 00 00 46 00 46 00 48 00 00 00 46 48 00 00 00 48 00 00 00 48 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 46 00 00 46 00 00 48 00 00 46 00 46 00 48 00 00 00 00 00 00 00 00 00 46 00 00 48 48 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 46 00 46 00 00 00 46 00 00 00 00 00 48 00 46 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 46 00 46 46 00 48 00 00 00 00 48 00 46 00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 00 00 48 00 46 00 46 46 00 00 48 46 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 48 46 48 00 00 00 00 00 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 48 48 00 46 48 00 00 00 00 00 00 00 46 48 00 00 48 00 00 00 00 00 00 00 46 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 46 00 00 48 00 00 00 48 00 00 00 48 00 00 48 00 00 00 00 48 00 46 00 00 00 00 48 00 46 00 48 00 00 00 00 00 00 00 00 00 00 48 00 46 00 00 48 00 00 00 00 00 48 00 48 00 48 00 00 00 00 00 00 48 00 48 46 48 00 00 00 00 00 00 48 00 00 00 00 46 00 00 48 00 00 00 00 00 00 00 00 00 00 46 00 48 46 00 48 00 00 00 00 00 00 00 00 00 00 46 00 00 00 48 00 00 00 00 00 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 00 48 00 00 00 48 00 48 00 00 00 00 00 00 00 00 48 00 46 00 48 00 00 00 00 00 48 46 00 48 48 48 00 00 48 00 00 48 48 48 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 00 00 48 00 00 48 00 46 00 00 00 00 00 46 00 00 00 00 00 00 00 00 46 00 00 00 46 00 00 00 00 00 00 48 00 00 48 48 00 00 00 48 48 00 00 00 00 00 00 00 48 00 00 48 00 00 00 46 00 00 00 48 00 00 46 48 00 48 00 46 00 00 00 48 48 00 00 00 00 46 00 00 00 00 48 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 46 00 00 00 48 00 00 48 46 00 00 46 48 00 00 00 46 00 48 00 00 00 00 00 46 00 00 46 00 00 00 00 48 00 00 00 46 00 00 00 48 00 48 00 48 48 00 00 00 00 00 48 00 48 00 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 48 48 00 00 00 00 46 00 48 00 46 00 48 00 00 00 00 00 46 46 00 00 00 00 48 00 00 48 00 00 00 00 00 00 46 00 46 48 48 00 00 00 00 00 48 00 48 00 00 00 00 00
*/
