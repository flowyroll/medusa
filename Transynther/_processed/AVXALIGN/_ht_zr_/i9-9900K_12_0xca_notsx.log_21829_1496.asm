.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x9c19, %r10
nop
nop
nop
add $5560, %r15
mov (%r10), %esi
nop
nop
nop
nop
nop
add $25768, %rax
lea addresses_UC_ht+0xaed9, %r14
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%r14)
nop
nop
nop
nop
nop
cmp $33931, %rdx
lea addresses_WT_ht+0x18659, %rsi
lea addresses_WC_ht+0x1e2d9, %rdi
clflush (%rdi)
nop
nop
xor %rdx, %rdx
mov $27, %rcx
rep movsq
add %rcx, %rcx
lea addresses_WC_ht+0xac21, %r14
nop
nop
nop
add %rsi, %rsi
movb (%r14), %dl
cmp %rax, %rax
lea addresses_A_ht+0x2dd9, %rsi
lea addresses_normal_ht+0x177ad, %rdi
nop
nop
inc %r15
mov $98, %rcx
rep movsq
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_WT_ht+0x182d9, %rsi
lea addresses_UC_ht+0x62d9, %rdi
nop
nop
nop
and $231, %rdx
mov $117, %rcx
rep movsq
and %rcx, %rcx
lea addresses_WT_ht+0x135ba, %rdx
nop
add %r15, %r15
movb $0x61, (%rdx)
nop
nop
nop
cmp %r10, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1c6d9, %rcx
nop
nop
nop
nop
nop
xor %r8, %r8
movl $0x51525354, (%rcx)
nop
nop
nop
xor $10554, %rdx

// Faulty Load
lea addresses_WT+0x6d9, %rdi
nop
nop
nop
nop
nop
xor %rsi, %rsi
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %rax
lea oracles, %r8
and $0xff, %rax
shlq $12, %rax
mov (%r8,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'49': 3846, '00': 5267, '45': 12716}
00 00 45 45 45 45 00 45 45 45 45 00 49 45 49 45 45 45 45 45 45 00 45 45 45 49 45 45 45 49 45 45 45 49 00 49 00 45 00 49 49 49 45 00 45 45 45 45 45 45 45 45 49 49 00 45 45 45 00 00 45 45 45 45 45 49 49 45 45 45 45 45 45 45 45 49 00 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 49 45 45 49 45 00 00 49 45 45 49 00 49 45 00 49 49 00 00 45 45 45 45 45 45 45 49 00 45 45 00 49 00 49 49 45 49 45 45 45 45 45 00 45 00 45 45 45 49 49 45 45 49 45 45 45 45 45 49 45 45 45 45 00 49 49 45 00 45 00 45 45 45 00 45 45 49 00 00 00 49 49 00 45 45 45 45 49 00 45 45 45 49 00 00 00 00 45 45 00 45 00 45 45 45 45 45 00 45 49 00 45 45 45 45 45 45 49 49 45 00 49 45 45 45 45 45 45 45 45 45 49 00 00 45 45 49 49 45 00 00 49 45 45 45 49 45 00 49 45 45 00 45 45 00 45 00 45 49 45 45 00 45 45 49 00 45 00 45 45 45 00 45 00 49 45 45 49 45 45 45 45 45 45 00 49 45 45 45 49 45 49 00 45 45 49 45 45 45 00 45 45 45 45 00 45 49 45 45 49 45 49 45 45 45 00 45 00 45 49 00 45 45 00 45 45 00 45 45 45 45 49 00 45 45 00 45 45 49 45 49 00 45 45 00 00 49 45 00 45 45 45 45 45 45 49 45 00 45 45 45 00 45 45 00 00 49 49 49 45 00 45 00 45 45 00 45 49 00 45 00 00 45 00 45 00 45 00 45 45 49 45 00 45 00 00 00 45 45 45 00 45 45 45 00 45 49 45 45 45 00 45 00 45 49 45 49 45 45 00 45 49 00 45 00 45 49 00 00 45 45 00 49 00 49 45 49 00 45 49 45 45 45 45 49 00 45 49 45 45 49 45 00 00 45 45 00 00 45 45 45 45 45 45 45 45 00 49 45 49 00 45 45 45 49 49 45 45 45 45 49 45 00 00 45 45 45 45 49 45 45 45 49 00 45 45 45 45 45 45 49 00 45 00 45 45 00 45 00 49 00 45 00 49 45 45 45 49 49 49 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 49 00 45 45 45 49 45 00 45 45 45 49 45 00 45 45 45 00 00 45 00 45 00 45 45 45 49 45 45 45 45 45 00 45 45 45 00 00 45 45 49 45 00 45 45 45 49 45 45 45 45 45 45 45 45 45 49 45 45 45 45 00 00 00 45 45 45 49 45 45 45 49 00 45 45 45 49 45 00 45 45 45 49 45 45 45 45 00 49 45 45 00 45 45 45 45 00 49 00 45 00 45 00 45 45 49 00 49 49 45 49 45 00 45 45 00 45 49 00 00 45 45 45 49 45 49 49 45 45 00 49 49 45 45 49 45 45 00 45 45 00 45 00 49 49 45 45 49 00 45 45 45 00 45 49 45 45 00 45 49 45 45 00 49 00 45 49 00 49 49 00 45 45 45 45 00 45 45 45 49 45 49 49 49 45 45 45 45 45 45 49 45 49 00 49 00 45 49 45 45 45 45 45 00 49 45 45 49 45 49 49 45 00 49 00 45 45 00 00 45 45 00 49 45 00 45 45 45 49 45 00 45 00 45 45 00 49 45 45 45 45 45 45 49 45 45 45 49 45 00 00 00 45 00 00 49 45 45 45 45 45 00 45 49 49 49 00 45 45 45 49 49 45 49 00 45 45 49 45 45 45 00 45 45 49 45 00 45 45 45 00 45 45 00 45 45 45 45 00 00 00 45 00 45 45 49 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 00 45 45 45 00 00 49 00 45 45 00 45 45 45 45 49 45 45 45 49 45 00 00 45 45 45 49 49 45 49 45 45 49 45 45 49 45 00 45 00 00 45 45 49 00 45 00 00 45 45 00 45 00 49 45 45 45 45 45 49 45 45 45 00 49 45 45 49 00 45 00 49 49 00 45 45 45 45 00 45 49 00 49 45 45 45 45 45 49 45 45 45 45 45 49 49 45 45 45 45 45 00 45 00 45 00 45 00 45 00 45 45 45 49 45 49 49 45 45 49 45 49 45 49 00 00 00 45 45 49 45 45 45 45 49 45 45 45 00 45 45 49 45 00
*/
