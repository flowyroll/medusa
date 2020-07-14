.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1aab8, %r15
nop
nop
nop
nop
nop
sub %rax, %rax
mov (%r15), %rcx
nop
nop
dec %r14
lea addresses_WC_ht+0x16208, %r14
nop
nop
nop
xor %rbx, %rbx
movb (%r14), %r10b
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x8c68, %rax
nop
nop
nop
nop
nop
sub $36763, %r8
movb (%rax), %r15b
nop
and $61398, %rax
lea addresses_D_ht+0x1428e, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor $40369, %r14
movl $0x61626364, (%rbx)
add $58691, %r14
lea addresses_A_ht+0x8868, %r8
nop
nop
nop
dec %rbx
movb (%r8), %r14b
nop
nop
nop
xor $50262, %rbx
lea addresses_UC_ht+0x19a08, %r10
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%r10), %rcx
inc %r10
lea addresses_D_ht+0x13d74, %rbx
nop
nop
nop
nop
nop
dec %r14
mov (%rbx), %r8w
nop
sub %r10, %r10
lea addresses_UC_ht+0x1d1e8, %r10
nop
cmp $61095, %r15
mov $0x6162636465666768, %r14
movq %r14, %xmm2
and $0xffffffffffffffc0, %r10
vmovaps %ymm2, (%r10)
nop
nop
and $45627, %rax
lea addresses_WC_ht+0x140a8, %rsi
lea addresses_normal_ht+0xea6a, %rdi
clflush (%rsi)
nop
nop
nop
and %r8, %r8
mov $117, %rcx
rep movsb
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x791a, %rsi
lea addresses_A_ht+0xb368, %rdi
nop
nop
nop
nop
add %rax, %rax
mov $77, %rcx
rep movsb
xor $21528, %rbx
lea addresses_D_ht+0x13868, %rsi
lea addresses_normal_ht+0x19e68, %rdi
nop
nop
nop
and $13986, %rax
mov $35, %rcx
rep movsb
nop
nop
nop
nop
dec %r10
lea addresses_WC_ht+0x1a468, %rax
nop
and %r8, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rax)
nop
nop
nop
nop
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rbp
push %rdi
push %rdx
push %rsi

// Faulty Load
mov $0x68, %r10
nop
nop
cmp %r15, %r15
movb (%r10), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'00': 70}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
