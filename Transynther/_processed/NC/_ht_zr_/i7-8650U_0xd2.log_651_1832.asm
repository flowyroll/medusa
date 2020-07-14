.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x16a7d, %rsi
lea addresses_WC_ht+0xc64d, %rdi
nop
nop
and $46400, %rbp
mov $74, %rcx
rep movsw
nop
nop
nop
xor %r8, %r8
lea addresses_WT_ht+0x74a9, %rsi
lea addresses_UC_ht+0x16ced, %rdi
clflush (%rsi)
nop
nop
nop
sub $54311, %rax
mov $51, %rcx
rep movsw
nop
nop
nop
xor $51752, %rsi
lea addresses_WC_ht+0x13657, %rbp
nop
nop
nop
nop
add $48237, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rbp)
nop
and %rdi, %rdi
lea addresses_A_ht+0x16f4d, %rcx
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm6
and $0xffffffffffffffc0, %rcx
vmovntdq %ymm6, (%rcx)
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x660d, %rsi
lea addresses_WC_ht+0x19a4d, %rdi
nop
nop
nop
nop
cmp %rax, %rax
mov $26, %rcx
rep movsl
nop
nop
dec %rsi
lea addresses_D_ht+0xa56d, %rsi
nop
cmp %rbp, %rbp
mov (%rsi), %r9w
nop
nop
nop
nop
nop
add $32622, %rbp
lea addresses_D_ht+0x1c99d, %rdi
nop
nop
nop
nop
nop
sub $38150, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm7
and $0xffffffffffffffc0, %rdi
vmovaps %ymm7, (%rdi)
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_WC_ht+0x954d, %rcx
nop
inc %rax
mov (%rcx), %rsi
nop
nop
nop
cmp %r8, %r8
lea addresses_UC_ht+0xc24d, %r9
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rbp
movq %rbp, (%r9)
nop
nop
nop
nop
nop
add $29510, %r8
lea addresses_A_ht+0xc695, %r8
nop
nop
nop
nop
nop
cmp %r9, %r9
mov (%r8), %edi
nop
nop
nop
cmp %rdi, %rdi
lea addresses_D_ht+0xd92, %rax
nop
nop
nop
nop
nop
inc %rcx
mov (%rax), %rsi
and %rax, %rax
lea addresses_WC_ht+0xba4d, %rcx
nop
nop
nop
xor %r9, %r9
movb $0x61, (%rcx)
and %rbp, %rbp
lea addresses_A_ht+0x5fcd, %rsi
lea addresses_UC_ht+0x7b15, %rdi
nop
nop
xor $11661, %r8
mov $118, %rcx
rep movsl
nop
cmp $43054, %rdi
lea addresses_A_ht+0xc84d, %rsi
lea addresses_D_ht+0x840d, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r14, %r14
mov $31, %rcx
rep movsb
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbx
push %rdx
push %rsi

// Faulty Load
mov $0x64fbed000000024d, %rsi
nop
nop
nop
nop
inc %rdx
movups (%rsi), %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %rsi
and $0xff, %rax
shlq $12, %rax
mov (%rsi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}}
{'00': 568, '45': 77, '49': 6}
00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 49 45 00 00 45 45 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 49 00 00 45 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 45 45 45 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 45 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 00 00 45 00 00 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 45 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 49 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 45 45 00 00 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00
*/
